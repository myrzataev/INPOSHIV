import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_user_profile_textfield.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthorizationScreen extends StatefulWidget {
  final String phoneNumber;
  const AuthorizationScreen({super.key, required this.phoneNumber});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  final _formKey = GlobalKey<FormState>();
  final preferences = locator<SharedPreferences>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    emailController.text = widget.phoneNumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final int role = Provider.of<RoleProvider>(context, listen: true).role;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 200.h),
                  child: Text(
                    "Авторизация",
                    style: AppFonts.w700s36,
                  ),
                ),
                CustomProfileTextField(
                    validator: (value) {
                      (value) {
                        if (value == null || value.isEmpty) {
                          return "Это поле является обязательным";
                        }
                        return null;
                      };
                    },
                    textAlign: TextAlign.start,
                    controller: emailController,
                    labelText: "Номер телефона",
                    hasValidator: true,
                    hintText: "Номер телефона",
                    textInputType: TextInputType.phone,
                    obscureText: false,
                    suffixIcon: const SizedBox()),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: CustomProfileTextField(
                      validator: (value) {
                        (value) {
                          if (value == null || value.isEmpty) {
                            return "Это поле является обязательным";
                          }
                          return null;
                        };
                      },
                      textAlign: TextAlign.start,
                      controller: passwordController,
                      labelText: "Пароль",
                      hintText: "*******",
                      hasValidator: true,
                      textInputType: TextInputType.text,
                      obscureText: true,
                      suffixIcon: const Icon(Icons.visibility_outlined)),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: rememberMe,
                        activeColor: AppColors.buttonGreenColor,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value ?? false;
                          });
                        }),
                    Expanded(
                      child: Text(
                        "Запомнить меня",
                        style: AppFonts.w400s16
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                    )
                  ],
                ),
                BlocListener<LoginBloc, LoginState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        loading: () => const Dialog(
                              child: Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                            ),
                        loaded: (entity) {
                          preferences.setString(
                              "refreshToken", entity.refreshToken ?? "");
                          preferences.setString("token", entity.token ?? "");
                          preferences.setString(
                              "userId", entity.userUuid ?? "");
                          preferences.setString("customerId",
                              entity.customerOrManufacturerUuid ?? "");
                          GoRouter.of(context).pushNamed("surveyStartScreen");
                        },
                        orElse: () {
                          GoRouter.of(context).pushNamed("surveyStartScreen");
                        });
                  },
                  child: const SizedBox.shrink(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 180.h),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          GoRouter.of(context).goNamed("registration");
                        },
                        child: Text(
                          "Зарегистрироваться",
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                        )),
                  ),
                ),
                CustomButton(
                    text: "Войти",
                    onPressed: () {
                      BlocProvider.of<LoginBloc>(context).add(LoginEvent.login(
                          phoneNumber: emailController.text,
                          password: passwordController.text));
                    })
              ],
            ),
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/error/error_types.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/utils/logger.dart';
import 'package:inposhiv/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:inposhiv/features/auth/presentation/providers/user_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_user_profile_textfield.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:inposhiv/services/showdialog.dart';
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
  String? phoneError;
  String? passwordError;
  final ScrollController _scrollController = ScrollController();
  late bool userHasAccount;
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
    userHasAccount =
        Provider.of<UserProvider>(context, listen: false).userHasAccount;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        Provider.of<UserProvider>(context, listen: false)
            .updateUserProvider(userHasAccountNew: false);
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            controller: _scrollController,
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
                        if (value == null || value.isEmpty) {
                          return "Это поле является обязательным";
                        }
                        return phoneError;
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
                          if (value == null || value.isEmpty) {
                            return "Это поле является обязательным";
                          }
                          return passwordError;
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
                  BlocListener<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.maybeWhen(
                          loading: () => Showdialog.showLoaderDialog(context),
                          error: (error) {
                            Logger.debug(error.type.toString());
                            router.pop();

                            if (error.type == ErrorType.authorization) {
                              // setState(() {
                              // if (error.userMessage.contains("пароль")) {
                              //   passwordError = error.userMessage;
                              // } else if (error.userMessage
                              //     .contains("номер телефона")) {
                              //   phoneError = error.userMessage;
                              // } else {
                              Showdialog.showErrorDialog(
                                  context: context,
                                  title: "Ошибка авторизации",
                                  message: error.userMessage);

                              // });
                            } else if (error.type == ErrorType.validation) {
                              // setState(() {
                              // if (error.userMessage.contains("пароль")) {
                              //   passwordError = error.userMessage;
                              // } else if (error.userMessage
                              //     .contains("номер телефона")) {
                              //   phoneError = error.userMessage;
                              // } else {
                              Showdialog.showErrorDialog(
                                  context: context,
                                  title: "Ошибка валидации",
                                  message: error.userMessage);
                              // }
                              // });
                            } else {
                              Showdialog.showErrorDialog(
                                  context: context,
                                  title: "Ошибка",
                                  message: error.userMessage);
                            }
                          },
                          loaded: (entity) {
                            router.pop();
                            preferences.setString(
                                "refreshToken", entity.refreshToken ?? "");
                            preferences.setString("token", entity.token ?? "");
                            preferences.setString(
                                "userId", entity.userUuid ?? "");
                            preferences.setString("customerId",
                                entity.customerOrManufacturerUuid ?? "");
                            preferences.setBool(
                                "isCustomer", entity.role == "CUSTOMER");
                            preferences.setString(
                                "userName", entity.username ?? "");
                            router.pushNamed(
                                userHasAccount ? "main" : "surveyStartScreen");
                          },
                          orElse: () {
                            // router.pushNamed("surveyStartScreen");
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
                        setState(() {
                          phoneError = null;
                          passwordError = null;
                        });
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<LoginBloc>(context).add(
                              LoginEvent.login(
                                  phoneNumber:
                                      emailController.text.replaceAll(" ", ""),
                                  password: passwordController.text));
                        }
                      })
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}

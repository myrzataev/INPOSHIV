import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_user_profile_textfield.dart';
import 'package:provider/provider.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
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
                    textAlign: TextAlign.start,
                    controller: emailController,
                    labelText: "Почта",
                    hasValidator: true,
                    hintText: "example@gmail.com",
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: const SizedBox()),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: CustomProfileTextField(
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
                      GoRouter.of(context).pushNamed(
                          role == 0 ? "chooseImageSource" : "welcomScreen");
                    })
              ],
            ),
          ),
        ),
      )),
    );
  }
}

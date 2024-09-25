import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_user_profile_textfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController companiesNameController = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();
  final TextEditingController passwordVerificationController =
      TextEditingController();
  bool ischecked = false;
  bool isErrorVisible = false;
  PhoneCountryData? _initialCountryData;
  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    cityController.dispose();
    companiesNameController.dispose();
    passwordControler.dispose();
    passwordVerificationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _initialCountryData = PhoneCodes.getCountryDataByPhone("7");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Text(
                      "Регистрация",
                      style: AppFonts.w700s36,
                    ),
                  ),
                  CustomProfileTextField(
                      controller: nameController,
                      labelText: "ФИО",
                      hintText: "Эсенов Нурсултан",
                      textInputType: TextInputType.text,
                      obscureText: false,
                      textAlign: TextAlign.start,
                      hasValidator: true,
                      suffixIcon: const SizedBox()),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Номер телефона",
                          style: AppFonts.w400s16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 100.w,
                              child: CountryDropdown(
                                dropdownColor: Colors.white,
                                printCountryName: true,
                                focusColor: AppColors.borderColor,
                                
                                style: AppFonts.w400s16,
                                initialCountryData:
                                    _initialCountryData, // Russia by default
                                onCountrySelected: (PhoneCountryData value) {
                                  setState(() {
                                    _initialCountryData = value;
                                  });
                                },
                                filter:
                                    PhoneCodes.findCountryDatasByCountryCodes(
                                  countryIsoCodes: ['RU', 'KG'],
                                ),
                              ),
                            ),
                            SizedBox(
                                width: 10
                                    .w), // Optional padding to give some space
                            Expanded(
                              // flex: 4,
                              child: TextFormField(
                                  controller: phoneController,
                                  keyboardType: TextInputType.phone,
                                  textAlign: TextAlign.start,
                                  cursorColor: AppColors.borderColorGrey,
                                  obscureText: false,
                                  style: AppFonts.w700s20
                                      .copyWith(color: const Color(0xffA0A0A0)),
                                  inputFormatters: [
                                    PhoneInputFormatter(
                                      allowEndlessPhone: false,
                                      defaultCountryCode:
                                          _initialCountryData?.countryCode,
                                    )
                                  ],
                                  decoration: InputDecoration(
                                      suffixIconConstraints: BoxConstraints(
                                          maxHeight: 24.h, maxWidth: 24.w),
                                      focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xffA0A0A0))),
                                      hintText: _initialCountryData?.phoneMaskWithoutCountryCode,
                                      hintStyle: AppFonts.w700s20.copyWith(
                                          color: const Color(0xffA0A0A0)),
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1))),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Это поле является обязательным";
                                    }
                                    return null;
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: CustomProfileTextField(
                        controller: emailController,
                        labelText: "Почта",
                        hintText: "example@gmail.com",
                        textInputType: TextInputType.emailAddress,
                        obscureText: false,
                        hasValidator: true,
                        textAlign: TextAlign.start,
                        suffixIcon: const SizedBox()),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: CustomProfileTextField(
                        controller: cityController,
                        labelText: "Город",
                        hintText: "Бишкек",
                        hasValidator: true,
                        textInputType: TextInputType.text,
                        obscureText: false,
                        textAlign: TextAlign.start,
                        suffixIcon: const SizedBox()),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: CustomProfileTextField(
                        controller: companiesNameController,
                        labelText: "Название компании",
                        hintText: "example",
                        textInputType: TextInputType.text,
                        obscureText: false,
                        hasValidator: true,
                        textAlign: TextAlign.start,
                        suffixIcon: const SizedBox()),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: CustomProfileTextField(
                        controller: passwordControler,
                        labelText: "Пароль",
                        hintText: "*******",
                        textInputType: TextInputType.text,
                        obscureText: true,
                        hasValidator: true,
                        textAlign: TextAlign.start,
                        suffixIcon: const Icon(Icons.visibility_outlined)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                    child: CustomProfileTextField(
                        controller: passwordVerificationController,
                        labelText: "Повторите пароль",
                        hintText: "*******",
                        textInputType: TextInputType.text,
                        obscureText: true,
                        hasValidator: true,
                        textAlign: TextAlign.start,
                        suffixIcon: const Icon(Icons.visibility_outlined)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: ischecked,
                          isError: isErrorVisible,
                          activeColor: AppColors.buttonGreenColor,
                          onChanged: (value) {
                            setState(() {
                              ischecked = value ?? false;
                            });
                          }),
                      Expanded(
                        child: Text(
                          "Вы даете согласие на обработку персональных данных",
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                        ),
                      )
                    ],
                  ),
                  isErrorVisible
                      ? Text(
                          "Пожалуйста, подтвердите согласие",
                          style:
                              AppFonts.w400s16.copyWith(color: AppColors.red),
                        )
                      : const SizedBox(),
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: CustomButton(
                        text: "Зарегистрироваться", onPressed: _submitForm),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate() && ischecked) {
      setState(() {
        isErrorVisible = false;
        GoRouter.of(context).pushNamed("authorization");
      });
    } else {
      setState(() {
        isErrorVisible = !ischecked;
      });
    }
  }
}

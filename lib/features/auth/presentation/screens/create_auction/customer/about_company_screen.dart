import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';

class AboutCompanyScreen extends StatefulWidget {
  const AboutCompanyScreen({super.key});

  @override
  State<AboutCompanyScreen> createState() => _AboutCompanyScreenState();
}

class _AboutCompanyScreenState extends State<AboutCompanyScreen> {
  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r)),
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        child: SvgPicture.asset(
                          SvgImages.goback,
                          height: 40.h,
                          width: 40.w,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Row(
                        children: [
                          Text(
                            "Шаг 2 ",
                            style: AppFonts.w400s16.copyWith(
                                fontFamily: "SF Pro",
                                color: const Color(0xff324D19)),
                          ),
                          Text(
                            "из 5",
                            style:
                                AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Напишите небольшое описание компании",
                      style: AppFonts.w700s36
                          .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        "В описании должно быть не более 110 символов",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                          child: TextFormField(
                            controller: controller,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            style: AppFonts.w400s16,
                            decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.borderColor))),
                            validator: (value) {
                              if ((value?.length ?? 0) < 110) {
                                return "В описании должно быть не более 110 символов";
                              }
                              return null;
                            },
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: CustomButton(
                  text: "Дальше",
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                      GoRouter.of(context).pushNamed("profileReady", queryParameters: {"description": controller.text});
                    // }
                  }),
            )
          ],
        ),
      )),
    );
  }
}

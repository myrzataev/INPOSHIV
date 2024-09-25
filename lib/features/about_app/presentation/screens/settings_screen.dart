import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/about_app/presentation/widgets/change_theme.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String appTheme = "light";
  String appLanguage = "русский";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: SvgPicture.asset(SvgImages.goback)),
                CustomSearchWidget(
                    onTap: () {}, child: SvgPicture.asset(SvgImages.search))
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                "Настройки",
                style: AppFonts.w700s36,
              ),
            ),
            Text(
              "Язык",
              style: AppFonts.w400s16,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomChooseRoleWidget(
                      text: "Русский",
                      onTap: () {
                        setState(() {
                          appLanguage = "русский";
                        });
                      },
                      isChoosed: appLanguage == "русский",
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: CustomChooseRoleWidget(
                      text: "Английский",
                      onTap: () {
                        setState(() {
                          appLanguage = "английский";
                        });
                      },
                      isChoosed: appLanguage == "английский",
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Тема",
              style: AppFonts.w400s16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChangeThemeWidget(
                  text: "Light",
                  photo: SvgImages.light,
                  isChoosed: appTheme == "light",
                  onTap: () {
                    setState(() {
                      appTheme = "light";
                    });
                  },
                ),
                ChangeThemeWidget(
                  text: "Light",
                  photo: SvgImages.dark,
                  isChoosed: appTheme == "dark",
                  onTap: () {
                    setState(() {
                      appTheme = "dark";
                    });
                  },
                ),
                ChangeThemeWidget(
                  text: "Light",
                  photo: SvgImages.system,
                  isChoosed: appTheme == "system",
                  onTap: () {
                    setState(() {
                      appTheme = "system";
                    });
                  },
                ),
              ],
            )
            // Container(
            //   width: 76.w,
            //   decoration: BoxDecoration(color: AppColors.containersGrey, borderRadius: BorderRadius.circular(20.r)
            // ),
            //   child: Padding(
            //     padding:  EdgeInsets.only(top: 4.h, left: 4.w, right: 4.w),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           height: 10.h,
            //           width: 68.w,
            //           decoration: BoxDecoration(
            //               color: AppColors.grey,
            //               borderRadius: BorderRadius.all(Radius.circular(20.r))),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.symmetric(vertical: 10.h),
            //           child: SizedBox(
            //             height: 12.h,
            //             child: ListView.separated(
            //                 scrollDirection: Axis.horizontal,
            //                 physics: const NeverScrollableScrollPhysics(),
            //                 separatorBuilder: (context, index) {
            //                   return SizedBox(
            //                     width: 3.w,
            //                   );
            //                 },
            //                 itemCount: 5,
            //                 itemBuilder: (context, index) {
            //                   return CircleAvatar(
            //                     radius: 5.r,
            //                     backgroundColor: AppColors.grey,
            //                   );
            //                 }),
            //           ),
            //         ),
            //         Container(
            //           height: 35.h,
            //           width: 68.w,
            //           decoration: BoxDecoration(
            //               color: AppColors.grey,
            //               borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(10.r),
            //                   topRight: Radius.circular(10.r))),
            //         )
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      )),
    );
  }
}

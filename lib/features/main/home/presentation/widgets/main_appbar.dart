import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
  
        CustomSearchWidget(
            onTap: () {
              
              Scaffold.of(context).openDrawer();
            }, child: SvgPicture.asset(SVGImages.burgerMenu)),
        // CircleAvatar(
        //   radius: 22.h,
        //   backgroundColor: AppColors.circleAvatarsColor,
        //   child: Image.asset(Images.ava),
        // ),
        // Padding(
        //   padding: EdgeInsets.only(left: 6.w),
        //   child: const MoneyWidget(
        //     balance: 420000,
        //   ),
        // ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 6.w),
          child: CustomSearchWidget(
            onTap: () {
              GoRouter.of(context).pushNamed("searchScreen");
            },
            child: SvgPicture.asset(SVGImages.search),
          ),
        ),
        CustomSearchWidget(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => Dialog(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  SVGImages.info,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    GoRouter.of(context).pop();
                                  },
                                  child: SvgPicture.asset(
                                    SVGImages.close,
                                    height: 24.h,
                                    width: 24.w,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Text(
                                "Мы уведомим вас, когда появятся отклики от производителей",
                                style: AppFonts.w700s20
                                    .copyWith(color: AppColors.accentTextColor),
                              ),
                            ),
                            CustomButton(
                              text: "Понятно",
                              onPressed: () {
                                GoRouter.of(context).pop();
                              },
                              sizedTemporary: true,
                            )
                          ],
                        ),
                      ),
                    ));
          },
          child: const Icon(
            Icons.notifications_outlined,
            color: AppColors.accentTextColor,
          ),
        )
      ],
    );
  }
}

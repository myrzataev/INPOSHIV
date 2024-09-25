
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/colors_helper.dart';

class CustomOrderCard extends StatelessWidget {
  final String logo;
  final String location;
  final int trustRating;
  final double rating;
  final int quantityInApp;
  final double retailPrice;
  final double retailPriceInRuble;

  const CustomOrderCard({
    super.key,
    required this.logo,
    required this.location,
    required this.trustRating,
    required this.rating,
    required this.quantityInApp,
    required this.retailPrice,
    required this.retailPriceInRuble,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.cardsColor,
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(logo),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.r),
                        border: Border.all(
                            width: 1.w,
                            color: ColorsHelper.statusColor(status: 1))),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Text(
                        ColorsHelper.trustStatus(status: 1),
                        style: AppFonts.w400s16.copyWith(
                            color: ColorsHelper.statusColor(status: 1),
                            fontFamily: "SF Pro"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    location,
                    style: AppFonts.w700s20
                        .copyWith(color: AppColors.accentTextColor),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SvgPicture.asset(
                      SvgImages.star,
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                  Text(
                    "${4.96}",
                    style: AppFonts.w700s16,
                  )
                ],
              ),
            ),
            Text(
              "Выполнено в Inposhiv $quantityInApp заказов.",
              style:
                  AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${retailPrice}\$",
                      style: AppFonts.w700s18,
                    ),
                    Text(
                      "580 руб",
                      style: AppFonts.w400s16,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${3018}\$",
                        style: AppFonts.w700s18,
                      ),
                      Text(
                        "312 000 руб",
                        style: AppFonts.w400s16,
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10.h),
            //   child: SizedBox(
            //     height: 40.h,
            //     width: double.infinity,
            //     child: MaterialButton(
            //       onPressed: () {},
            //       color: AppColors.buttonGreenColor,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.r)),
            //       child: Text(
            //         "Связаться",
            //         style: AppFonts.w400s16
            //             .copyWith(color: AppColors.accentTextColor),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

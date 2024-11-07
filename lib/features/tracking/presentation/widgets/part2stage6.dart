
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';

class Part2Stage6 extends StatelessWidget {
  const Part2Stage6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.containersGrey,
          borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Этап 6",
              style: AppFonts.w400s16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: Text(
                "Отгружено",
                style: AppFonts.w700s18,
              ),
            ),
            Text(
              "Транспортная накладная",
              style: AppFonts.w400s16.copyWith(
                decoration: TextDecoration.underline,
                color: AppColors.accentTextColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                "Акт о выполненных работах",
                style: AppFonts.w400s14.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColors.accentTextColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                "Комментарии от производителя",
                style: AppFonts.w700s18,
              ),
            ),
            Text(
              "При отгрузке 10 ед. были испорчены, отгружено 500шт",
              style: AppFonts.w400s16,
            ),
            Text(
              "18.04.2024",
              style: AppFonts.w400s12,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    // showDialog(context: context, builder: (context)=> AlertDialog(
                    //   title: ,
                    // ));
                  },
                  child: Text(
                    "Задать вопросы",
                    style: AppFonts.w400s16.copyWith(
                      color: AppColors.accentTextColor,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: CustomButton(
                text: "Подтвердить",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             SeconPartTracking()));
                },
                sizedTemporary: true,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

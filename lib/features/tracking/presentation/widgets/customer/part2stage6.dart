
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';

class Part2Stage6 extends StatelessWidget {
  final Function onTap;
  final List<Map<String, String?>> allComments;
  const Part2Stage6({
    super.key, required this.onTap, required this.allComments,
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
              "Этап 8",
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
            SizedBox(
                  height: 200.h,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        final currentItem = allComments[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              currentItem["comment"] ?? "",
                              style: AppFonts.w400s16
                                  .copyWith(color: AppColors.accentTextColor),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.h),
                              child: Text(currentItem["date"] ?? "",
                                  style: AppFonts.w400s12),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 3.h,
                        );
                      },
                      itemCount: allComments.length)),
            Center(
              child: TextButton(
                  onPressed: () {
                    onTap();
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

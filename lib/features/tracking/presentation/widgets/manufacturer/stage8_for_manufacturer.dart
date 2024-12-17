import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';

import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';

class Stage8ForManufacturer extends StatelessWidget {
  final Function onTap;
  final Function onTapForAct;
  final List<Map<String, String?>> allComments;
  final List<String?>? allDocumentsOfStage;
  final PlatformFile? documents;
  final VoidCallback? onTapForCheck;
  const Stage8ForManufacturer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,
    required this.allComments,
    required this.onTapForAct,
    this.allDocumentsOfStage,
    this.documents,
    this.onTapForCheck,
  });

  final int currentIndexOfData;

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
                "Приемка заказа",
                style: AppFonts.w700s18,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r)),
                child: CustomProgressBar(
                  progress: currentIndexOfData,
                  text: "Заказ на месте",
                ),
              ),
            ),
            InkWell(
              onTap: () => onTapForAct(),
              child: Text(
                "Акт о выполненных работах",
                style: AppFonts.w400s14.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColors.accentTextColor),
              ),
            ),
            documents != null
                ? // Only show this when a file is selected
                SizedBox(
                    height: 40.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1, // Adjust as needed
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (documents != null) onTapForAct;
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.file_present,
                                  color: AppColors.accentTextColor),
                              SizedBox(width: 8.w),
                              Text(
                                documents!.name, // Display the file name
                                style: AppFonts.w400s16.copyWith(
                                  color: AppColors.accentTextColor,
                                  decoration: TextDecoration.underline,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : const SizedBox.shrink(),
            allDocumentsOfStage != null
                ? SizedBox(
                    height: 70.h,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final currentItem = allDocumentsOfStage?[index];
                          return InkWell(
                            onTap: () {
                              router.pushNamed("seeDoc",
                                  queryParameters: {"docUrl": currentItem},
                                  extra: true);
                            },
                            child: const Icon(Icons.file_present,
                                size: 60, color: AppColors.accentTextColor),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 5.w,
                          );
                        },
                        itemCount: allDocumentsOfStage?.length ?? 0),
                  )
                : const SizedBox.shrink(),
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
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: CustomButton(
                text: "Подтвердить",
                onPressed: () {
                  onTap();
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

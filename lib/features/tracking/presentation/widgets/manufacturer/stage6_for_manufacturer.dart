import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/custom_tracking_comment.dart';

class Stage6ForManufacturer extends StatelessWidget {
  final Function onTap;
  final TextEditingController controller;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  final List<String>? allFiles;
  final List<Map<String, String?>> allComments;
  final List<String?>? allDocumentsOfStage;

  const Stage6ForManufacturer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,
    required this.controller,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
    this.allFiles,
    required this.allComments,
    this.allDocumentsOfStage,
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
            Text(
              "Акт о выполненных работах",
              style: AppFonts.w400s14.copyWith(
                  decoration: TextDecoration.underline,
                  color: AppColors.accentTextColor),
            ),
            Text(
              "У вас 7 дней для оценки заказа",
              style: AppFonts.w700s18,
            ),
            Text(
              "Чтобы осмотреть его, оценить и написать в случае каких-то спорных моментов. ",
              style: AppFonts.w400s16,
            ),
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
            Expanded(
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
            CustomTrackingComment(
              controller: controller,
              onTap: onTap,
              onFilePicked: onFilePicked,
              onImagePickedFromCamera: onImagePickedFromCamera,
              onImagePickedFromGallery: onImagePickedFromGallery,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';

import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/custom_tracking_comment.dart';

class Stage1 extends StatelessWidget {
  final Function onTap;
  final Function onTapForCheck;
  final TextEditingController controller;
  final PlatformFile? check;
  final Function attachDocument;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  final List<Map<String, String?>> allComments;
  final List<String?>? allDocumentsOfStage;
  const Stage1({
    super.key,
    required this.onTap,
    required this.controller,
    required this.onTapForCheck,
    required this.check,
    required this.attachDocument,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
    required this.allComments,
    this.allDocumentsOfStage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containersGrey,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Этап 1", style: AppFonts.w400s16),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.h, top: 5.h),
                      child: Text(
                        "Оплата первой части заказа",
                        style: AppFonts.w700s18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        check != null ? onTapForCheck() : null;
                      },
                      child: Text(
                        "Чек об оплате",
                        style: AppFonts.w400s16.copyWith(
                          decoration: TextDecoration.underline,
                          color: AppColors.accentTextColor,
                        ),
                      ),
                    ),
                    check != null
                        ? // Only show this when a file is selected
                        SizedBox(
                            height: 40.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 1, // Adjust as needed
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    if (check != null) onTapForCheck();
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(Icons.file_present,
                                          color: AppColors.accentTextColor),
                                      SizedBox(width: 8.w),
                                      Text(
                                        check!.name, // Display the file name
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text("Комментарии от заказчика",
                          style: AppFonts.w400s14),
                    ),
                    allDocumentsOfStage != null
                        ? SizedBox(
                            height: 70.h,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final currentItem =
                                      allDocumentsOfStage?[index];
                                  return InkWell(
                                    onTap: () {
                                      router.pushNamed("seeDoc",
                                          queryParameters: {
                                            "docUrl": currentItem
                                          },
                                          extra: true);
                                    },
                                    child: const Icon(Icons.file_present,
                                    size: 60,
                                        color: AppColors.accentTextColor),
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
                                    style: AppFonts.w400s16.copyWith(
                                        color: AppColors.accentTextColor),
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text(
                        "Добавьте комментарии для производителя",
                        style: AppFonts.w400s14,
                      ),
                    ),

                    // Replace Spacer with a SizedBox
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: CustomTrackingComment(
                onTap: () {
                  onTap();
                },
                onFilePicked: (filePath, fileName) {
                  onFilePicked!(filePath, fileName);
                },
                onImagePickedFromGallery: (imagePath, fileName) {
                  onImagePickedFromGallery!(imagePath, fileName);
                },
                onImagePickedFromCamera: (imagePath, fileName) {
                  onImagePickedFromCamera!(imagePath, fileName);
                },
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

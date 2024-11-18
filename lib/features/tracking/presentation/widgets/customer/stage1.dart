// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/pick_file_service.dart';

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
                    Text("Комментарии от заказчика", style: AppFonts.w400s14),
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

class CustomTrackingComment extends StatelessWidget {
  final Function onTap;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  final TextEditingController controller;
  const CustomTrackingComment({
    super.key,
    required this.controller,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilePickerButton(
          onFilePicked: (filePath, name) {
            onFilePicked!(filePath, name);
          },
          onImagePickedFromGallery: (imagePath, name) {
            onImagePickedFromGallery!(imagePath, name);
          },
          onImagePickedFromCamera: (imagePath, name) {
            onImagePickedFromCamera!(imagePath, name);
          },
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Сообщение",
                hintStyle: AppFonts.w400s16,
                border: const OutlineInputBorder(),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            onTap();
          },
          child: Image.asset(
            Images.send,
            height: 40.h,
            width: 40.w,
          ),
        )
      ],
    );
  }
}
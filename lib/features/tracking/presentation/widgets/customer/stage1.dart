// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/pick_file_service.dart';

class Stage1 extends StatelessWidget {
  final Function onTap;
  final String comment;
  final Function onTapForCheck;
  final TextEditingController controller;
  final PlatformFile? check;
  final Function attachDocument;
  const Stage1({
    super.key,
    required this.onTap,
    required this.controller,
    required this.comment,
    required this.onTapForCheck,
    required this.check,
    required this.attachDocument,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.containersGrey,
            borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.all(10.h),
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
              Text(
                comment,
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  "Добавьте комментарии и фотографии для производителя",
                  style: AppFonts.w400s14,
                ),
              ),
              CustomTrackingComment(
                  onTap: () {},
                  onFilePicked: (filePath) {},
                  onImagePickedFromGallery: (imagePath) {},
                  onImagePickedFromCamera: (imagePath) {},
                  controller: controller),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: CustomButton(
                  text: "Оплатить",
                  onPressed: () {
                    onTap();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTrackingComment extends StatelessWidget {
  final Function onTap;
  final void Function(String filePath)? onFilePicked;
  final void Function(String imagePath)? onImagePickedFromGallery;
  final void Function(String imagePath)? onImagePickedFromCamera;
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
          onFilePicked: (filePath) {
            onFilePicked!(filePath);
          },
          onImagePickedFromGallery: (imagePath) {
            onImagePickedFromGallery!(imagePath);
          },
          onImagePickedFromCamera: (imagePath) {
            onImagePickedFromCamera!(imagePath);
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

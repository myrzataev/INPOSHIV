import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/pick_file_service.dart';

class CustomFeedbackDialog extends StatelessWidget {
  final String title;
  final Widget button;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  final TextEditingController controller;
  const CustomFeedbackDialog({
    super.key,
    required this.title,
    required this.button,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.cardsColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(SvgImages.info),
                  IconButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      icon: SvgPicture.asset(SvgImages.close))
                ],
              ),
              Text(
                title,
                style:
                    AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: TextFormField(
                        maxLines: 10,
                        controller: controller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Сообщение",
                          hintStyle: AppFonts.w400s16,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.h),
                child: button,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/pick_file_service.dart';

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
              maxLines: null,
              keyboardType: TextInputType.multiline,
              cursorColor: AppColors.borderColor,
              decoration: InputDecoration(
                  hintText: "Сообщение",
                  hintStyle: AppFonts.w400s16,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r))),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.borderColorGrey),
                      borderRadius: BorderRadius.all(Radius.circular(15.r)))),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            onTap();
          },
          child: SvgPicture.asset(
            SvgImages.sendmessage,
            height: 40.h,
            width: 40.w,
          ),
        )
      ],
    );
  }
}

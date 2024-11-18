import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage1.dart';

class Stage7ForCustomer extends StatelessWidget {
  final Function onTap;
  final TextEditingController controller;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  final List<Map<String, String?>> allComments;

  const Stage7ForCustomer({
    super.key,
    required this.onTap,
    required this.controller,
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
        padding: EdgeInsets.all(10.h),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 0,
                    maxHeight: MediaQuery.of(context).size.height *
                        0.8, // Relative height
                  ),
                  child: IntrinsicHeight(
                    // Makes the Column take the minimum height required to fit its children
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Этап 7",
                          style: AppFonts.w400s16,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.h, top: 5.h),
                          child: Text(
                            "Оплата второй части заказа",
                            style: AppFonts.w700s18,
                          ),
                        ),
                        Text(
                          "Чек об оплате",
                          style: AppFonts.w400s16.copyWith(
                            decoration: TextDecoration.underline,
                            color: AppColors.accentTextColor,
                          ),
                        ),
                        Text(
                          "Комментарии от заказчика",
                          style: AppFonts.w400s14,
                        ),
                        SizedBox(
                          height: 200.h, // Constrain ListView height
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final currentItem = allComments[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentItem["comment"] ?? "",
                                    style: AppFonts.w400s16.copyWith(
                                      color: AppColors.accentTextColor,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 20.h),
                                    child: Text(
                                      currentItem["date"] ?? "",
                                      style: AppFonts.w400s12,
                                    ),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 3.h),
                            itemCount: allComments.length,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                            "Добавьте комментарии и фотографии для производителя",
                            style: AppFonts.w400s14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            CustomTrackingComment(
              onTap: () => onTap(),
              onFilePicked: onFilePicked,
              onImagePickedFromGallery: onImagePickedFromGallery,
              onImagePickedFromCamera: onImagePickedFromCamera,
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}

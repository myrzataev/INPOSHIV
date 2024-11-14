import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/comment_column.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage1.dart';
import 'package:inposhiv/resources/resources.dart';

class Stage2ForManufacturer extends StatelessWidget {
  final Function onTap;
  final double currentIndexOfData;
  final TextEditingController controller;
  final Function attachDocument;
  const Stage2ForManufacturer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,
    required this.controller,
    required this.attachDocument,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h, width: 40.w, child: Image.asset(Images.tick)),
        Text(
          "Оплата прошла успешно!",
          style: AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
        ),
        Text(
          "Управляйте производством",
          style: AppFonts.w700s36,
          textScaler: const TextScaler.linear(0.75),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.containersGrey,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Этап 2", style: AppFonts.w400s16),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            child: Text("Закуп ткани и крой",
                                style: AppFonts.w700s18),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: CustomProgressBar(
                                progress: currentIndexOfData.toInt(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: SizedBox(
                              height: 65.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: Image.asset(Images.good1),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: 5.w),
                                itemCount: 3,
                              ),
                            ),
                          ),
                          Text("Комментарии от производителя",
                              style: AppFonts.w400s14),
                          const CommentColumn(
                            comment: "При раскройке получилось 520шт",
                            data: "18.04.2024",
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomTrackingComment(
                      onTap: () {
                        onTap();
                      },
                      onFilePicked: (filePath) {},
                      onImagePickedFromGallery: (imagePath) {},
                      onImagePickedFromCamera: (imagePath) {},
                      controller: controller),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: CustomButton(
                      text: "Подтвердить",
                      onPressed: () => onTap(),
                      sizedTemporary: true,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

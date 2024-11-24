import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/custom_tracking_comment.dart';

class Stage7ForManufacturer extends StatelessWidget {
  final Function onTap;
  final Function onTapForCheck;

  final List<Map<String, String?>> allComments;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  const Stage7ForManufacturer({
    super.key,
    required this.onTap,
    required this.allComments,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
    required this.onTapForCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.containersGrey,
          borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                    InkWell(
                      onTap: () => onTapForCheck(),
                      child: Text(
                        "Чек об оплате",
                        style: AppFonts.w400s16.copyWith(
                          decoration: TextDecoration.underline,
                          color: AppColors.accentTextColor,
                        ),
                      ),
                    ),
                    Text(
                      "Комментарии от заказчика",
                      style: AppFonts.w400s14,
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

                    // const Spacer(),
                  ],
                ),
              ),
            ),
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

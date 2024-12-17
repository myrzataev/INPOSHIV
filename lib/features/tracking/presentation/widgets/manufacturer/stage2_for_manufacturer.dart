import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/custom_tracking_comment.dart';
import 'package:inposhiv/resources/resources.dart';

class Stage2ForManufacturer extends StatelessWidget {
  final Function onTap;
  final double currentIndexOfData;
  final TextEditingController controller;
  final Function attachDocument;
  final List<Map<String, String?>> allComments;

  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  final List<String?>? allDocumentsOfStage;
  final PlatformFile? documents;
  final VoidCallback? onTapForCheck;
  const Stage2ForManufacturer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,
    required this.controller,
    this.allDocumentsOfStage,
    required this.attachDocument,
    required this.allComments,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
    this.documents,
    this.onTapForCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h, width: 40.w, child: Image.asset(Images.tick)),
        
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 5.h),
          child: Text(
            "Управляйте производством",
            style: AppFonts.w700s36,
            textScaler: const TextScaler.linear(0.65),
          ),
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
                                          if (documents != null) onTapForCheck;
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(Icons.file_present,
                                                color:
                                                    AppColors.accentTextColor),
                                            SizedBox(width: 8.w),
                                            Text(
                                              documents!
                                                  .name, // Display the file name
                                              style: AppFonts.w400s16.copyWith(
                                                color:
                                                    AppColors.accentTextColor,
                                                decoration:
                                                    TextDecoration.underline,
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
                                      itemCount:
                                          allDocumentsOfStage?.length ?? 0),
                                )
                              : const SizedBox.shrink(),
                          Text("Комментарии от производителя",
                              style: AppFonts.w400s14),
                          SizedBox(
                              height: 250.h,
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    final currentItem = allComments[index];
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          currentItem["comment"] ?? "",
                                          style: AppFonts.w400s16.copyWith(
                                              color: AppColors.accentTextColor),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 20.h),
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
                        ],
                      ),
                    ),
                  ),
                  CustomTrackingComment(
                      onTap: () {
                        onTap();
                      },
                      onFilePicked: onFilePicked,
                      onImagePickedFromGallery: onImagePickedFromGallery,
                      onImagePickedFromCamera: onImagePickedFromCamera,
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

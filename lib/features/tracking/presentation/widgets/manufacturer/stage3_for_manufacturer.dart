import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/custom_tracking_comment.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage1.dart';

class Stage3ForManufacturer extends StatelessWidget {
  final Function onTap;
  final List<Map<String, String?>> allComments;

  final TextEditingController controller;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  final List<String>? allFiles;
  const Stage3ForManufacturer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,
    required this.controller,
    required this.allComments,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
    required this.allFiles,
  });

  final double currentIndexOfData;

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
              "Этап 3",
              style: AppFonts.w400s16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: Text(
                "Пошив",
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
                  text: "Производство",
                  // Pass the progress value as a double between 0 and 1
                  progress: currentIndexOfData.toInt(),
                ),
              ),
            ),
            (allFiles != null && (allFiles?.isNotEmpty??true) )
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: SizedBox(
                      height: 65.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return IconButton(
                                onPressed: () {
                                  GoRouter.of(context).pushNamed("seeDoc",
                                      queryParameters: {
                                        "path": allComments[index],
                                      },
                                      extra: false);
                                },
                                icon: const Icon(Icons.file_present));
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 5.w,
                            );
                          },
                          itemCount: allFiles?.length ?? 0),
                    ),
                  )
                : const SizedBox.shrink(),
            Text(
              "Комментарии от производителя",
              style: AppFonts.w400s14.copyWith(),
            ),
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

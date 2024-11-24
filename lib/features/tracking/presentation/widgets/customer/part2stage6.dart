import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/custom_tracking_comment.dart';

class Stage8ForCustomer extends StatelessWidget {
  final Function onTap;
  final TextEditingController controller;
  final List<Map<String, String?>> allComments;
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)?
      onImagePickedFromCamera;
  const Stage8ForCustomer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,
    required this.controller,
    required this.allComments,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
  });

  final int currentIndexOfData;

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
              "Этап 8",
              style: AppFonts.w400s16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: Text(
                "Приемка заказа",
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
                  progress: currentIndexOfData,
                  text: "Заказ на месте",
                ),
              ),
            ),
            Text(
              "Акт о выполненных работах",
              style: AppFonts.w400s14.copyWith(
                  decoration: TextDecoration.underline,
                  color: AppColors.accentTextColor),
            ),
            Text(
              "У вас 7 дней для оценки заказа",
              style: AppFonts.w700s18,
            ),
            Text(
              "Чтобы осмотреть его, оценить и написать в случае каких-то спорных моментов. ",
              style: AppFonts.w400s16,
            ),
            // Row(
            //   children: [
            //     SvgPicture.asset(SvgImages.document),
            //     SizedBox(width: 10.w),
            //     Expanded(
            //       // Use Expanded to prevent overflow
            //       child: Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 5.w),
            //         child: TextField(
            //           decoration: InputDecoration(
            //             hintText: "Сообщение",
            //             hintStyle: AppFonts.w400s16,
            //             border: OutlineInputBorder(),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Image.asset(
            //       Images.send,
            //       height: 40.h,
            //       width: 40.w,
            //     )
            //   ],
            // ),
            const Spacer(),
            CustomTrackingComment(
              controller: controller,
              onTap: onTap,
              onFilePicked: onFilePicked,
              onImagePickedFromCamera: onImagePickedFromCamera,
              onImagePickedFromGallery: onImagePickedFromGallery,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    // showDialog(context: context, builder: (context)=> AlertDialog(
                    //   title: ,
                    // ));
                  },
                  child: Text(
                    "Подать апелляцию",
                    style: AppFonts.w400s16.copyWith(
                        color: AppColors.accentTextColor,
                        decoration: TextDecoration.underline),
                  )),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10.h),
            //   child: CustomButton(
            //     text: "Подтвердить",
            //     onPressed: () {
            //       onTap();
            //     },
            //     sizedTemporary: true,
            //     height: 50,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

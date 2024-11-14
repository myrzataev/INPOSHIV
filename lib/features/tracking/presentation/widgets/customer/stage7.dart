import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/payment_row.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage1.dart';
import 'package:inposhiv/resources/resources.dart';

class Stage7ForCustomer extends StatelessWidget {
  final Function onTap;
  final TextEditingController controller;
  const Stage7ForCustomer({
    super.key,
    required this.onTap,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.containersGrey,
          borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.all(10.h),
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
              Text(
                "Прикрепил чеки об оплате",
                style: AppFonts.w400s16.copyWith(
                  color: AppColors.accentTextColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Text(
                  "16.04.2024",
                  style: AppFonts.w400s12,
                ),
              ),
              // Add vertical padding to each section
              // PaymentRow(
              //     title: "30%", usdAmount: "905,4 \$", rubAmount: "82912,01 ₽"),
              // PaymentRow(
              //     title: "30%", usdAmount: "905,4 \$", rubAmount: "82912,01 ₽"),
              // PaymentRow(
              //     title: "30%", usdAmount: "905,4 \$", rubAmount: "82912,01 ₽"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  "Добавьте комментарии и фотографии для производителя",
                  style: AppFonts.w400s14,
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
              // const Spacer(),
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

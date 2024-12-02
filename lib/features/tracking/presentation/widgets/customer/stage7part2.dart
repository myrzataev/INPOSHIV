import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';

class Stage9Customer extends StatelessWidget {
  final Function onTap;
  final TextEditingController controller;
  final Function(double rating) onDeadlineRating;
  final Function(double rating) onQualityRating;
  final Function(double rating) onReliableRating;
  final Function onFeedBackButtonPressed;
  final List<String?>? allDocumentsOfStage;

  const Stage9Customer({
    super.key,
    required this.onTap,
    required this.controller,
    required this.onDeadlineRating,
    required this.onQualityRating,
    required this.onReliableRating,
    required this.onFeedBackButtonPressed,
    this.allDocumentsOfStage,
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
                "Этап 9",
                style: AppFonts.w400s16,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h, top: 5.h),
                child: Text(
                  "Оплата второй части заказа",
                  style: AppFonts.w700s18,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: const CustomProgressBar(
                    progress: 80,
                    text: "Заказ на месте",
                  ),
                ),
              ),
              Text(
                "Подтвердите и оцените качество заказа",
                style: AppFonts.w700s18,
              ),
              allDocumentsOfStage != null
                  ? SizedBox(
                      height: 70.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final currentItem = allDocumentsOfStage?[index];
                            return InkWell(
                              onTap: () {
                                router.pushNamed("seeDoc",
                                    queryParameters: {"docUrl": currentItem},
                                    extra: true);
                              },
                              child: const Icon(Icons.file_present,
                                  size: 60, color: AppColors.accentTextColor),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 5.w,
                            );
                          },
                          itemCount: allDocumentsOfStage?.length ?? 0),
                    )
                  : const SizedBox.shrink(),
              Text(
                "Насколько вы бы оценили сроки выполнения заказа?",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: onDeadlineRating,
              ),
              Text(
                "Выберите уровень качества товара",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
              RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  onRatingUpdate: onQualityRating),
              Text(
                "Насколько вы бы оценили сроки выполнения заказа?",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
              RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  onRatingUpdate: onReliableRating),
              // const Spacer(),
              Center(
                child: TextButton(
                    onPressed: () => onFeedBackButtonPressed(),
                    child: Text(
                      "Оставить отзыв",
                      style: AppFonts.w400s16
                          .copyWith(color: AppColors.accentTextColor),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: CustomButton(
                  text: "Подтвердить завершение",
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

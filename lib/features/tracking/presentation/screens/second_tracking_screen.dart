import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/comment_column.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/screens/invoice_screen.dart';
import 'package:inposhiv/features/tracking/presentation/screens/fourth_tracking_screen.dart';
import 'package:inposhiv/features/tracking/presentation/screens/third_tracking_screen.dart';
import 'package:inposhiv/resources/resources.dart';

class SecondTrackingScreen extends StatefulWidget {
  const SecondTrackingScreen({super.key});

  @override
  State<SecondTrackingScreen> createState() => _SecondTrackingScreen();
}

class _SecondTrackingScreen extends State<SecondTrackingScreen> {
  int currentIndex = 0;
  double progress = 0;
  final List<TrackingModel> data = TrackingModelData.data;
  double currentIndexOfData = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchWidget(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset(SvgImages.goback),
              ),
              Image.asset(
                Images.tick,
                height: 40.h,
                width: 40.w,
              ),
              Text(
                "Оплата прошла успешно! ",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
              Text(
                "Отслеживайте ваш заказ ",
                style: AppFonts.w700s36,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.containersGrey,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Этап 2",
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
                              progress: currentIndexOfData.toInt() ,
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
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 5.w,
                                  );
                                },
                                itemCount: 3),
                          ),
                        ),
                        Text(
                          "Комментарии от производителя",
                          style: AppFonts.w400s14.copyWith(),
                        ),
                        const CommentColumn(
                          comment: "При раскройке получилось 520шт",
                          data: "18.04.2024",
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: CustomButton(
                            text: "Подтвердить",
                            onPressed: () {
                              setState(() {
                                
                                progress = progress + 0.2;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ThirdTrackingScreen()));
                            },
                            sizedTemporary: true,
                            height: 50,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentRow(String title, String usdAmount, String rubAmount) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
              Text(
                usdAmount,
                style:
                    AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
              ),
            ],
          ),
          Text(
            rubAmount,
            style: AppFonts.w700s20,
          ),
        ],
      ),
    );
  }

  void updateTrackingModel(int step, String newComment) {
    setState(() {
      // Find the TrackingModel by step and update it
      int index = data.indexWhere((model) => model.step == step);
      if (index != -1) {
        data[index].comments.add(newComment);
      }
    });
  }
}

class TrackingModel {
  final int step;
  final String title;
  final String value;
  final List<String> comments;

  TrackingModel(
      {required this.step,
      required this.title,
      required this.value,
      required this.comments});
}

abstract class TrackingModelData {
  static List<TrackingModel> data = [
    TrackingModel(
        step: 2,
        title: "Закуп ткани и крой",
        value: "Закуп",
        comments: ["При раскройке получилось 520шт"]),
    TrackingModel(
        step: 3,
        title: "Пошив",
        value: "Производство",
        comments: ["При раскройке получилось 520шт", "Треть товара отшито"]),
    TrackingModel(
        step: 4,
        title: "Отдел контроля качества",
        value: "Проверка",
        comments: ["При раскройке получилось 520шт"]),
    TrackingModel(
        step: 5,
        title: "Готово к отгрузке",
        value: "Отгружается",
        comments: ["При раскройке получилось 520шт"]),
    TrackingModel(
        step: 6,
        title: "Отгружено",
        value: "Отгружено",
        comments: ["При раскройке получилось 520шт"])
  ];
}

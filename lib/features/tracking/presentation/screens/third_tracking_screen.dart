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
import 'package:inposhiv/resources/resources.dart';

class ThirdTrackingScreen extends StatefulWidget {
  const ThirdTrackingScreen({super.key});

  @override
  State<ThirdTrackingScreen> createState() => _ThirdTrackingScreen();
}

class _ThirdTrackingScreen extends State<ThirdTrackingScreen> {
  double currentIndexOfData = 40;
  final List<TrackingModel> data = TrackingModelData.data;

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
                              // Pass the progress value as a double between 0 and 1
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
                          comment: "Все готово к началу производства",
                          data: "18.04.2024",
                        ),
                        const CommentColumn(
                          comment: "Треть товара отшито",
                          data: "20.04.2024",
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: CustomButton(
                            text: "Подтвердить",
                            onPressed: () {
                              setState(() {
                                // Update the progress when the button is pressed
                                if (currentIndexOfData < 1.0) {
                                  currentIndexOfData += 0.2; // Increment progress
                                }
                              });

                              // Navigate to the next tracking screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const FourthTrackingScreen(),
                                ),
                              );
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

  void updateTrackingModel(int step, String newComment) {
    setState(() {
      int index = data.indexWhere((model) => model.step == step);
      if (index != -1) {
        data[index].comments.add(newComment);
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/end_of_tracking.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage1.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage2.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage3.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage4.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage5.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage6.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage7.dart';
import 'package:inposhiv/resources/resources.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _FirstTrackingScreen();
}

class _FirstTrackingScreen extends State<TrackingScreen> {
  int currentIndex = 0;

  final PageController _pageController = PageController();

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
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    children: [
                      Stage1(
                        onTap: () {
                          if (currentIndex < 1) {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                      ),
                      Stage2(
                        currentIndexOfData: 10,
                        onTap: () {
                          if (currentIndex < 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                      ),
                      Stage3(
                        currentIndexOfData: 20,
                        onTap: () {
                          if (currentIndex < 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                      ),
                      Stage4(
                        currentIndexOfData: 30,
                        onTap: () {
                          if (currentIndex < 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                      ),
                      Stage5(
                        currentIndexOfData: 40,
                        onTap: () {
                          if (currentIndex < 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                      ),
                      Stage6(
                        currentIndexOfData: 50,
                        onTap: () {
                          if (currentIndex < 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                      ),
                      Stage7(
                        onTap: () {
                          if (currentIndex < 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                      ),
                      const EndOfTracking()
                      // Добавьте другие этапы по мере необходимости
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:inposhiv/resources/resources.dart';

class TakeSurveysFormScreens extends StatefulWidget {
  const TakeSurveysFormScreens({super.key});

  @override
  State<TakeSurveysFormScreens> createState() => _TakeSurveysFormScreensState();
}

class _TakeSurveysFormScreensState extends State<TakeSurveysFormScreens> {
  late PageController _pageController;
  int currentPageIndex = 0;

  final List<Map<String, String>> onboardingSteps = [
    {
      "title": "Укажите количество сотрудников в компании",
      "hint": "18 человек"
    },
    {"title": "Сколько лет вы на рынке?", "hint": "12 лет"},
    {
      "title": "Укажите точку продаж",
      "hint": "Адрес магазина",
      "additionalHint": "https://www.zara.com/"
    },
  ];
  List<TextEditingController> controllers = [];
  List<TextEditingController> additionalControllers = [];
  @override
  void initState() {
    _pageController = PageController();

    for (int i = 0; i < onboardingSteps.length; i++) {
      controllers.add(TextEditingController());
      if (onboardingSteps[i].containsKey('additionalHint')) {
        additionalControllers.add(TextEditingController());
      } else {
        additionalControllers.add(
            TextEditingController()); // Adding empty controllers for non-additional fields
      }
    }
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var controller in additionalControllers) {
      controller.dispose();
    }
    super.dispose();
  }

 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: onboardingSteps.length,
            itemBuilder: (context, index) {
              final step = onboardingSteps[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
                      onTap: () {
                        _previousPage();
                      },
                      child: SvgPicture.asset(
                        SVGImages.goback,
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        "Шаг ${index + 1} из ${onboardingSteps.length}",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30.h),
                      child: Text(
                        step["title"] ?? "",
                        style: AppFonts.w700s36.copyWith(height: 0.8),
                      ),
                    ),
                    if (step.containsKey("additionalHint")) ...[
                      Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text(
                        "Если у вас онлайн магазин укажите ссылку на магазин ",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    ],
                    SizedBox(
                      height: 40.h,
                      child: CustomTextForm(
                        hintText: step["hint"] ?? "",
                        controller: controllers[index],
                      ),
                    ),
                    if (step.containsKey("additionalHint")) ...[
                      SizedBox(
                        height: 40.h,
                        child: CustomTextForm(
                          hintText: step["additionalHint"] ?? "",
                          controller: additionalControllers[index],
                        ),
                      ),
                    ],
                    const Spacer(),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: 20.h,
            left: 20.w,
            right: 20.w,
            child: CustomButton(
              text: (currentPageIndex == onboardingSteps.length - 1
                  ? "Завершить"
                  : "Дальше"),
              onPressed: _nextPage,
            ),
          ),
        ],
      ),
    ),
  );
}


  void _nextPage() {
    if (currentPageIndex < onboardingSteps.length - 1) {
      setState(() {
        currentPageIndex++;
      });
      _pageController.animateToPage(
        currentPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      GoRouter.of(context).pushNamed("startFirstDeal");
    }
  }

  void _previousPage() {
    if (currentPageIndex > 0) {
      setState(() {
        currentPageIndex--;
      });
      _pageController.animateToPage(currentPageIndex,
          duration: const Duration(microseconds: 300), curve: Curves.easeInOut);
    }else{
      GoRouter.of(context).pop();
    }
  }
}

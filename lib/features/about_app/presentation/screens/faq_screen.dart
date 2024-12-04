import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/about_app/presentation/widgets/custom_animated_container.dart';

import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  bool expanded = false;
  List<FAQModel> faqs = FAQData.faqs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: CustomSearchWidget(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset(SvgImages.goback)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              "FAQ",
              style:
                  AppFonts.w700s36.copyWith(color: AppColors.accentTextColor),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: faqs.length,
                itemBuilder: (context, index) {
                  final currentItem = faqs[index];
                  return CustomAnimatedContainer(
                    expanded: currentItem.isExpanded,
                    title: currentItem.title,
                    description: currentItem.description,
                    onTap: () {
                      setState(() {
                        currentItem.isExpanded = !currentItem.isExpanded;
                      });
                    },
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
            child: InkWell(
              borderRadius: BorderRadius.circular(10.r),
              onTap: () {},
              child: Ink(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.containersGrey,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Чат поддержки",
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: SvgPicture.asset(SvgImages.techsupport),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}

class FAQModel {
  final String title;
  final String description;
  bool isExpanded;

  FAQModel(
      {required this.title,
      required this.description,
      this.isExpanded = false});
}

abstract class FAQData {
  static List<FAQModel> faqs = [
    FAQModel(
        title: "Если товар приехал с браком",
        description:
            "Все финансовые операции в приложении InPoshiv защищены сервисом безопасной сделки. Ее цель  – обезопасить обе стороны сделки от мошенничества и помочь им прийти к справедливому решению при возникновении конфликта."),
    FAQModel(
        title: "Как осуществить возврат товара",
        description:
            "Все финансовые операции в приложении InPoshiv защищены сервисом безопасной сделки. Ее цель  – обезопасить обе стороны сделки от мошенничества и помочь им прийти к справедливому решению при возникновении конфликта."),
    FAQModel(
        title: "Как отказаться от товара",
        description:
            "Все финансовые операции в приложении InPoshiv защищены сервисом безопасной сделки. Ее цель  – обезопасить обе стороны сделки от мошенничества и помочь им прийти к справедливому решению при возникновении конфликта."),
    FAQModel(
        title: "Проблемы с кошельком",
        description:
            "Все финансовые операции в приложении InPoshiv защищены сервисом безопасной сделки. Ее цель  – обезопасить обе стороны сделки от мошенничества и помочь им прийти к справедливому решению при возникновении конфликта."),
    FAQModel(
        title: "Проблемы с оплатой",
        description:
            "Все финансовые операции в приложении InPoshiv защищены сервисом безопасной сделки. Ее цель  – обезопасить обе стороны сделки от мошенничества и помочь им прийти к справедливому решению при возникновении конфликта."),
    FAQModel(
        title: "Как узнать, где моя поставка сейчас находится",
        description:
            "Все финансовые операции в приложении InPoshiv защищены сервисом безопасной сделки. Ее цель  – обезопасить обе стороны сделки от мошенничества и помочь им прийти к справедливому решению при возникновении конфликта."),
  ];
}

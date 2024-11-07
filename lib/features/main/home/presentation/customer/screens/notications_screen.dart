import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/notification_card.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class NoticationsScreen extends StatefulWidget {
  const NoticationsScreen({super.key});

  @override
  State<NoticationsScreen> createState() => _NoticationsScreen();
}

class _NoticationsScreen extends State<NoticationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: SvgPicture.asset(SvgImages.goback)),
                CustomSearchWidget(
                    onTap: () {}, child: SvgPicture.asset(SvgImages.search))
              ],
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return NotificationCard(
                      title: "Счет на оплату",
                      onTap: () {
                        context.go("/orders/invoiceScreen");
                      },
                      description: "Подтвердите",
                    );
                  },
                  separatorBuilder: (index, context) {
                    return SizedBox(
                      height: 7.h,
                    );
                  },
                  itemCount: 5),
            ))
          ],
        ),
      )),
    );
  }
}

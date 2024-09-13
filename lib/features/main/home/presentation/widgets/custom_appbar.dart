
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/money_widget.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSearchWidget(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: SvgPicture.asset(SVGImages.goback)),
        const Spacer(),
        Padding(
            padding: EdgeInsets.only(left: 6.w),
            child: const MoneyWidget(balance: 420000)),
        Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: CustomSearchWidget(
            onTap: () {
              GoRouter.of(context).pushNamed("searchScreen");
            },
            child: SvgPicture.asset(SVGImages.search),
          ),
        ),
      ],
    );
  }
}

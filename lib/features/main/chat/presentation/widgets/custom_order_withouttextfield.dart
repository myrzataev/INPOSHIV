import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomOrderRowWithoutTextfield extends StatelessWidget {
  final String title;

  final String? value;
  final String? additionalValue;
  final bool? isClickable;
  final String? url;
  final bool? isFromBackend;
  const CustomOrderRowWithoutTextfield({
    super.key,
    required this.title,
    this.additionalValue,
    this.isClickable,
    this.url,
     this.value,
    this.isFromBackend,
  });

  @override
  Widget build(BuildContext context) {
    print("url is $url");
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppFonts.w400s16,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        (isClickable ?? false)
                            ? router.pushNamed("seeDoc",
                                extra: true,
                                queryParameters: {"path": url, "docUrl": url})
                            : null;
                      },
                      child: (value?.isNotEmpty?? false)
                          ? Text(
                              value!,
                              style: AppFonts.w400s16.copyWith(
                                  color: AppColors.accentTextColor,
                                  decoration: (isClickable ?? false)
                                      ? TextDecoration.underline
                                      : null),
                            )
                          : const SizedBox(),
                    ),
                    additionalValue != null
                        ? Text(
                            additionalValue ?? "",
                            style: AppFonts.w400s16,
                          )
                        : const SizedBox.shrink()
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColors.borderColorGrey,
          ),
        ],
      ),
    );
  }

  String truncateToLast20(String value) {
    // Check if the string is longer than 20 characters
    if (value.length > 20) {
      return value.substring(value.length - 20); // Get the last 20 characters
    }
    return value; // Return the original string if it's shorter than 20
  }
}

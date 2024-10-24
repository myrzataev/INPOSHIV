import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigateToTelegramScreen extends StatelessWidget {
  const NavigateToTelegramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int role = Provider.of<RoleProvider>(context, listen: true).role;
    bool isCustomer = role == 0;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            const Spacer(),
            Image.asset(
              Images.telegram,
              width: 195.w,
              height: 195.h,
              fit: BoxFit.cover,
            ),
            Text(
              isCustomer
                  ? "Для создания заказа пройдите быструю регистрацию через телеграмм"
                  : "Для создания профиля пройдите быструю регистрацию через телеграмм",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 20.h, top: 113.h),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20.r),
                  onTap: () {
                    // print("object");
                    // var url = Uri.parse("https://t.me/InposhivBot");
                    // launchUrl(url);
                    GoRouter.of(context).pushNamed("registration");
                    // GoRouter.of(context).pushNamed("chooseImageSource");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                      child: Text(
                        "Перейти в телеграм",
                        style: AppFonts.w400s16.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

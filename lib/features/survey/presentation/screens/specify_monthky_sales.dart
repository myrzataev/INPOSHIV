import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class SpecifyMonthlySalesScreen extends StatelessWidget {
  const SpecifyMonthlySalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final role = Provider.of<RoleProvider>(context).role;
    bool isCustomer = role == 1;
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
            Text(
              isCustomer
                  ? "Укажите примерный ежемесячный обьем продаж"
                  : "Укажите средний ежемесячный обьем продукции",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child:
                    CustomTextForm(hintText: isCustomer? "8200\$" : "1200 шт", controller: controller)),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, top: 113.h),
              child: CustomButton(
                text: "Дальше",
                onPressed: () {
                  GoRouter.of(context).pushNamed("importantThingsListScreen",
                      queryParameters: {
                        "monthSalesVolume": controller.text,

                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:inposhiv/resources/resources.dart';

class SetQuantityScreen extends StatefulWidget {
  const SetQuantityScreen({super.key});

  @override
  State<SetQuantityScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<SetQuantityScreen> {
  final TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r)),
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset(
                  SVGImages.goback,
                  height: 40.h,
                  width: 40.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Шаг 4 ",
                    style: AppFonts.w400s16.copyWith(
                        fontFamily: "SF Pro", color: const Color(0xff324D19)),
                  ),
                  Text(
                    "из 5",
                    style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                  ),
                ],
              ),
            ),
            Text(
              "Укажите количество товара",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                "Минимальное количество товара равно 49 ед",
                style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
              ),
            ),
            CustomTextForm(
              hintText: "580",
              controller: controller,
              keyboardType: TextInputType.number,
            ),
            const Spacer(),
           
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: CustomButton(
                  text: "Дальше",
                  onPressed: () {
                    print(controller.text);
                    GoRouter.of(context).pushNamed("setPriceScreen",
                        queryParameters: {"quantity": controller.text});
                  }),
            )
          ],
        ),
      )),
    );
  }
}

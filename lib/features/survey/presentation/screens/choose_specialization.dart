import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class ChooseSpecializationScreen extends StatefulWidget {
  const ChooseSpecializationScreen({super.key});

  @override
  State<ChooseSpecializationScreen> createState() =>
      _ChooseSpecializationScreenState();
}

class _ChooseSpecializationScreenState
    extends State<ChooseSpecializationScreen> {
  Set<int> choosedCategories = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchWidget(
                  onTap: () {
                    GoRouter.of(context).pop();
                  }, child: SvgPicture.asset(SvgImages.goback)),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Text(
                  "Ваша специализация в одежде",
                  style: AppFonts.w700s36
                      .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Можно выбрать несколько вариантов",
                style: AppFonts.w400s16,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: CustomChooseRoleWidget(
                      text: "Мужская",
                      onTap: () {
                        setState(() {
                          if (choosedCategories.contains(0)) {
                            choosedCategories.remove(0);
                          } else {
                            choosedCategories.add(0);
                          }
                        });
                      },
                      isChoosed: choosedCategories.contains(0),
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                        child: CustomChooseRoleWidget(
                      text: "Женская",
                      onTap: () {
                        setState(() {
                          if (choosedCategories.contains(1)) {
                            choosedCategories.remove(1);
                          } else {
                            choosedCategories.add(1);
                          }
                        });
                      },
                      isChoosed: choosedCategories.contains(1),
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                        child: CustomChooseRoleWidget(
                      text: "Детская",
                      onTap: () {
                        setState(() {
                          if (choosedCategories.contains(2)) {
                            choosedCategories.remove(2);
                          } else {
                            choosedCategories.add(2);
                          }
                        });
                      },
                      isChoosed: choosedCategories.contains(2),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h, top: 113.h),
                child: CustomButton(
                  text: "Дальше",
                  onPressed: () {
                    GoRouter.of(context).pushNamed("chooseClothCategoryScreen");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

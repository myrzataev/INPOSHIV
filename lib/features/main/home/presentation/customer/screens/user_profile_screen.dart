import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/customer/blocs/user_bloc/user_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_choise_widget.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_profile_info_row.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_user_profile_textfield.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/colors_helper.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  late PageController pageController;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final preferences = locator<SharedPreferences>();

  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: currentIndex,
      keepPage: true,
    );
    super.initState();
  }

  void callBloc() {
    BlocProvider.of<UserBloc>(context).add(
        UserEvent.getUserInfo(userId: preferences.getString("userId") ?? ""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              // Navigation Row
              Row(
                children: [
                  CustomSearchWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: SvgPicture.asset(SvgImages.goback),
                  ),
                  const Spacer(),
                  CustomChoiceWidget(
                    isSelelected: currentIndex == 0,
                    text: "Контакты",
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                      pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomChoiceWidget(
                      isSelelected: currentIndex == 1,
                      text: "Отзывы",
                      onTap: () {
                        setState(() {
                          currentIndex = 1;
                        });
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      },
                    ),
                  ),
                ],
              ),
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                      userInfoLoaded: (model) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 22.r,
                                backgroundImage:
                                    const AssetImage(Images.seller),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      model.username ?? "",
                                      style: AppFonts.w700s20.copyWith(
                                          color: AppColors.accentTextColor),
                                    ),
                                    Text(
                                      model.role ?? "",
                                      style: AppFonts.w400s16.copyWith(),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.r),
                                    border: Border.all(
                                        width: 1.w,
                                        color: ColorsHelper.statusColor(
                                            status: 1))),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.w),
                                  child: Text(
                                    ColorsHelper.trustStatus(status: 1),
                                    style: AppFonts.w400s16.copyWith(
                                        color:
                                            ColorsHelper.statusColor(status: 1),
                                        fontFamily: "SF Pro"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      orElse: () {
                        return const SizedBox.shrink();
                      });
                },
              ),
              // PageView for Profile Sections
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // User Contact Fields
                          CustomProfileTextField(
                            controller: emailController,
                            textAlign: TextAlign.start,
                            labelText: "E-mail",
                            hintText: "example@gmail.com",
                            textInputType: TextInputType.emailAddress,
                            obscureText: false,
                            suffixIcon: SvgPicture.asset(
                              SvgImages.pen,
                              height: 20.h,
                              width: 20.w,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: CustomProfileTextField(
                              textAlign: TextAlign.start,
                              controller: phoneNumberController,
                              labelText: "Номер телефона",
                              hintText: "+996 (777)–777–777",
                              textInputType: TextInputType.phone,
                              obscureText: false,
                              suffixIcon: SvgPicture.asset(
                                SvgImages.pen,
                                height: 20.h,
                                width: 20.w,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 30.h),
                            child: CustomProfileTextField(
                              controller: passwordController,
                              labelText: "Пароль",
                              hintText: "Пароль",
                              textAlign: TextAlign.start,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              suffixIcon: const Icon(Icons.visibility_outlined),
                            ),
                          ),

                          Text(
                            "Данные пользователя",
                            style: AppFonts.w700s20
                                .copyWith(color: AppColors.accentTextColor),
                          ),
                          const CustomProfileInfoRow(
                            name: "Название компании",
                            value: "TM Limited",
                          ),
                          const CustomProfileInfoRow(
                            name: "Город",
                            value: "Бишкек",
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 100.h),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Выйти",
                                        style: AppFonts.w400s16
                                            .copyWith(color: Colors.black),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: SvgPicture.asset(SvgImages.quit),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => CustomDialog(
                                      button: InkWell(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        onTap: () {
                                          GoRouter.of(context).pop();
                                          showDialog(
                                              context: context,
                                              builder: (context) => CustomDialog(
                                                  title:
                                                      "Ваш аккаунт успешно удален",
                                                  description:
                                                      "Будем рады видеть вас снова!",
                                                  button: CustomButton(
                                                      text: "Закрыть",
                                                      height: 20,
                                                      onPressed: () {})));
                                        },
                                        child: Ink(
                                          height: 40.h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              border: Border.all(
                                                  color: AppColors.red)),
                                          child: Center(
                                            child: Text(
                                              "Удалить",
                                              style: AppFonts.w400s16.copyWith(
                                                  color: AppColors.red),
                                            ),
                                          ),
                                        ),
                                      ),
                                      title:
                                          "Вы уверены, что хотите удалить аккаунт?",
                                      description:
                                          "Все ваши данные будут удалены с приложения",
                                    ),
                                  );
                                },
                                child: Text(
                                  "Удалить аккаунт",
                                  style: AppFonts.w400s16
                                      .copyWith(color: AppColors.red),
                                )),
                          ),
                        ],
                      ),
                    ),

                    // Second page: Reviews Section
                    ListView.separated(
                        itemCount: 10,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 5.h,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: AppColors.cardsColor,
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 16.w),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20.r,
                                        backgroundImage:
                                            const AssetImage(Images.ava),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          "Цех 52",
                                          style: AppFonts.w700s18,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    child: SizedBox(
                                        height: 60.h,
                                        child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                width: 5.w,
                                              );
                                            },
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                onTap: () =>
                                                    GoRouter.of(context)
                                                        .pushNamed("seeImage",
                                                            extra: [
                                                      Images.good1,
                                                      Images.good2,
                                                      Images.good1,
                                                    ],
                                                            queryParameters: {
                                                      "index":
                                                          (index).toString()
                                                    }),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                    child: Image.asset(
                                                        Images.good1)),
                                              );
                                            })),
                                  ),
                                  Text(
                                    "Отличный заказчик: четкие требования, оперативная оплата и приятное сотрудничество. Будем рады продолжить работу вместе!",
                                    style: AppFonts.w400s16.copyWith(
                                        color: AppColors.accentTextColor),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),

              // Logout and Delete Account Section
            ],
          ),
        ),
      ),
    );
  }
}

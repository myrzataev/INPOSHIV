import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/customer/blocs/user_bloc/user_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/shared/blocs/change_password_bloc/change_password_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/shared/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/change_password_textfield.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_choise_widget.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_profile_info_row.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_user_profile_textfield.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/colors_helper.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:inposhiv/services/showdialog.dart';
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
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? companyName;
  String? city;
  final preferences = locator<SharedPreferences>();

  int currentIndex = 0;
  @override
  void dispose() {
    emailController.dispose();
    pageController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callBloc();
    });
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
                child: BlocListener<DeleteAccountBloc, DeleteAccountState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        loaded: (message) {
                          preferences.clear();
                          router.goNamed("onBoarding");
                          showDialog(
                              context: context,
                              builder: (context) => CustomDialog(
                                  title: "Ваш аккаунт успешно удален",
                                  description: "Будем рады видеть вас снова!",
                                  button: CustomButton(
                                      text: "Закрыть",
                                      height: 20,
                                      onPressed: () {
                                        router.pop();
                                      })));
                        },
                        error: () => showDialog(
                            context: context,
                            builder: (context) => CustomDialog(
                                title: "Не успешно",
                                description: "Не удалось удалить аккаунт",
                                button: CustomButton(
                                    text: "Закрыть",
                                    height: 20,
                                    onPressed: () {
                                      router.pop();
                                    }))),
                        orElse: () {});
                  },
                  child: BlocConsumer<UserBloc, UserState>(
                      listener: (context, state) {
                    state.maybeWhen(
                        userInfoLoaded: (model) {
                          setState(() {
                            emailController.text = model.email ?? "";
                            phoneNumberController.text =
                                model.phoneNumber ?? "";
                            companyName = model.companyName;
                            city = model.city;
                          });
                        },
                        userInfoError: (errorText) {},
                        orElse: () {});
                  }, builder: (context, state) {
                    return state.maybeWhen(
                        loading: () => const Center(
                              child: CircularProgressIndicator.adaptive(),
                            ),
                        userInfoError: (error) {
                          return Expanded(
                            child: CustomErrorWidget(
                                description: error.userMessage,
                                onRefresh: () {
                                  callBloc();
                                }),
                          );
                        },
                        userInfoLoaded: (model) {
                          return Column(
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
                                          duration:
                                              const Duration(milliseconds: 200),
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
                                            duration: const Duration(
                                                milliseconds: 200),
                                            curve: Curves.easeInOut);
                                      },
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            model.username ?? "",
                                            style: AppFonts.w700s20.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
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
                                          borderRadius:
                                              BorderRadius.circular(60.r),
                                          border: Border.all(
                                              width: 1.w,
                                              color: ColorsHelper.statusColor(
                                                  status: 1))),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0.w),
                                        child: Text(
                                          ColorsHelper.trustStatus(status: 1),
                                          style: AppFonts.w400s16.copyWith(
                                              color: ColorsHelper.statusColor(
                                                  status: 1),
                                              fontFamily: "SF Pro"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // User Contact Fields
                                          CustomProfileTextField(
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "Это поле является обязательным";
                                              }
                                              return null;
                                            },
                                            controller: emailController,
                                            textAlign: TextAlign.start,
                                            labelText: "E-mail",
                                            hintText: "example@gmail.com",
                                            textInputType:
                                                TextInputType.emailAddress,
                                            obscureText: false,
                                            onlyRead: true,
                                            suffixIcon: const SizedBox.shrink(),
                                            //  SvgPicture.asset(
                                            //   SvgImages.pen,
                                            //   height: 20.h,
                                            //   width: 20.w,
                                            // ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.h),
                                            child: CustomProfileTextField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Это поле является обязательным";
                                                }
                                                return null;
                                              },
                                              textAlign: TextAlign.start,
                                              controller: phoneNumberController,
                                              labelText: "Номер телефона",
                                              hintText: "+996 (777)–777–777",
                                              onlyRead: true,
                                              textInputType:
                                                  TextInputType.phone,
                                              obscureText: false,
                                              suffixIcon:
                                                  const SizedBox.shrink(),
                                              // SvgPicture.asset(
                                              //   SvgImages.pen,
                                              //   height: 20.h,
                                              //   width: 20.w,
                                              // ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 30.h),
                                            child: CustomProfileTextField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Это поле является обязательным";
                                                }
                                                return null;
                                              },
                                              controller: passwordController,
                                              labelText: "Пароль",
                                              hintText: "***********",
                                              textAlign: TextAlign.start,
                                              onlyRead: true,
                                              textInputType:
                                                  TextInputType.visiblePassword,
                                              obscureText: true,
                                              suffixIcon: InkWell(
                                                onTap: () => showDialog(
                                                  context: context,
                                                  builder: (context) => Dialog(
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20.w,
                                                              vertical: 10.h),
                                                      child: Form(
                                                        key: _formKey,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                const SizedBox
                                                                    .shrink(),
                                                                IconButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    icon: SvgPicture.asset(
                                                                        SvgImages
                                                                            .close))
                                                              ],
                                                            ),
                                                            ChangePasswordTextField(
                                                              labelText:
                                                                  "Старый пароль",
                                                              controller:
                                                                  oldPasswordController,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Не может быть пустым";
                                                                }
                                                                return null;
                                                              },
                                                            ),
                                                            ChangePasswordTextField(
                                                              labelText:
                                                                  "Новый пароль",
                                                              controller:
                                                                  newPasswordController,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Не может быть пустым";
                                                                }
                                                                return null;
                                                              },
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          20.h),
                                                              child:
                                                                  CustomButton(
                                                                      sizedTemporary:
                                                                          true,
                                                                      height:
                                                                          40,
                                                                      text:
                                                                          "Сохранить",
                                                                      onPressed:
                                                                          () {
                                                                        if (_formKey
                                                                            .currentState!
                                                                            .validate()) {
                                                                          context
                                                                              .read<ChangePasswordBloc>()
                                                                              .add(ChangePasswordEvent.started(body: {
                                                                                "oldPassword": oldPasswordController.text,
                                                                                "newPassword": newPasswordController.text,
                                                                                "phoneNumber": phoneNumberController.text
                                                                              }));
                                                                          Navigator.pop(
                                                                              context);
                                                                        } else {}
                                                                      }),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                child: SvgPicture.asset(
                                                  SvgImages.pen,
                                                  height: 40.h,
                                                  width: 40.w,
                                                ),
                                              ),

                                              // suffixIcon: const Icon(
                                              //     Icons.visibility_outlined),
                                            ),
                                          ),
                                          BlocListener<ChangePasswordBloc,
                                              ChangePasswordState>(
                                            listener: (context, state) {
                                              state.maybeWhen(
                                                  loading: () => Showdialog
                                                      .showLoaderDialog(
                                                          context),
                                                  error: (error) {
                                                    Navigator.pop(context);
                                                    oldPasswordController
                                                        .clear();
                                                    newPasswordController
                                                        .clear();
                                                    Showdialog.showErrorDialog(
                                                        context: context,
                                                        title: "Ошибка",
                                                        message:
                                                            error.substring(7,
                                                                error.length));
                                                  },
                                                  loaded: (message) {
                                                    Navigator.pop(context);
                                                    AlertDialog.adaptive(
                                                      title: Text(
                                                        "Успех",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18.sp,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      content: Text(
                                                        "Успешно изменен",
                                                        style: TextStyle(
                                                          fontSize: 16.sp,
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child:
                                                              const Text("ОК"),
                                                        ),
                                                      ],
                                                    );
                                                    oldPasswordController
                                                        .clear();
                                                    newPasswordController
                                                        .clear();
                                                  },
                                                  orElse: () {});
                                            },
                                            child: const SizedBox.shrink(),
                                          ),
                                          Text(
                                            "Данные пользователя",
                                            style: AppFonts.w700s20.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                          CustomProfileInfoRow(
                                            name: "Название компании",
                                            value: companyName ?? "",
                                          ),
                                          CustomProfileInfoRow(
                                            name: "Город",
                                            value: city ?? "",
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 100.h),
                                            child: InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      CustomAlertDialog(
                                                    phoneNumberController:
                                                        phoneNumberController,
                                                    text:
                                                        "Все ваши данные будут удалены с приложения",
                                                    title:
                                                        "Вы уверены, что хотите выйти?",
                                                    buttonText: "Выйти",
                                                    onTap: () {
                                                      preferences.clear();
                                                      router.goNamed(
                                                          "onBoarding");
                                                    },
                                                  ),
                                                );
                                              },
                                              child: Ink(
                                                height: 50.h,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: AppColors
                                                        .containersGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r)),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Выйти",
                                                        style: AppFonts.w400s16
                                                            .copyWith(
                                                                color: Colors
                                                                    .black),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5.w),
                                                        child: SvgPicture.asset(
                                                            SvgImages.quit),
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
                                                    builder: (context) =>
                                                        CustomAlertDialog(
                                                      phoneNumberController:
                                                          phoneNumberController,
                                                      text:
                                                          "Все ваши данные будут удалены с приложения",
                                                      title:
                                                          "Вы уверены, что хотите удалить аккаунт?",
                                                      buttonText: "Удалить",
                                                      onTap: () {
                                                        BlocProvider.of<
                                                                    DeleteAccountBloc>(
                                                                context)
                                                            .add(DeleteAccountEvent
                                                                .delete(
                                                                    phoneNumber:
                                                                        phoneNumberController
                                                                            .text));
                                                      },
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  "Удалить аккаунт",
                                                  style: AppFonts.w400s16
                                                      .copyWith(
                                                          color: AppColors.red),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Second page: Reviews Section
                                    ListView.separated(
                                        itemCount: model.reviews?.length ?? 0,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            height: 5.h,
                                          );
                                        },
                                        itemBuilder: (context, index) {
                                          final currentItem =
                                              model.reviews?[index];
                                          return Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.cardsColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.h,
                                                  horizontal: 16.w),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      // CircleAvatar(
                                                      //   radius: 20.r,
                                                      //   backgroundImage:
                                                      //       const AssetImage(
                                                      //           Images.ava),
                                                      // ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5.w),
                                                        child: Text(
                                                          currentItem
                                                                  ?.customerName ??
                                                              "",
                                                          style:
                                                              AppFonts.w700s18,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10.h),
                                                    child: SizedBox(
                                                        height: 60.h,
                                                        child:
                                                            ListView.separated(
                                                                scrollDirection:
                                                                    Axis
                                                                        .horizontal,
                                                                separatorBuilder:
                                                                    (context,
                                                                        index) {
                                                                  return SizedBox(
                                                                    width: 5.w,
                                                                  );
                                                                },
                                                                itemCount: 3,
                                                                itemBuilder:
                                                                    (context,
                                                                        index) {
                                                                  return InkWell(
                                                                    onTap: () => GoRouter.of(context).pushNamed(
                                                                        "seeImage",
                                                                        extra: [
                                                                          Images
                                                                              .good1,
                                                                          Images
                                                                              .good2,
                                                                          Images
                                                                              .good1,
                                                                        ],
                                                                        queryParameters: {
                                                                          "index":
                                                                              (index).toString()
                                                                        }),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10
                                                                                .r),
                                                                        child: Image.asset(
                                                                            Images.good1)),
                                                                  );
                                                                })),
                                                  ),
                                                  Text(
                                                    "Отличный заказчик: четкие требования, оперативная оплата и приятное сотрудничество. Будем рады продолжить работу вместе!",
                                                    style: AppFonts.w400s16
                                                        .copyWith(
                                                            color: AppColors
                                                                .accentTextColor),
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
                          );
                        },
                        orElse: () {
                          return const SizedBox.shrink();
                        });
                  }),
                ))));
  }
}

class CustomAlertDialog extends StatelessWidget {
  final String buttonText;
  final String title;
  final String text;
  final VoidCallback onTap;
  const CustomAlertDialog({
    super.key,
    required this.phoneNumberController,
    required this.buttonText,
    required this.title,
    required this.text,
    required this.onTap,
  });

  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      button: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        onTap: onTap,
        child: Ink(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColors.red)),
          child: Center(
            child: Text(
              buttonText,
              style: AppFonts.w400s16.copyWith(color: AppColors.red),
            ),
          ),
        ),
      ),
      title: title,
      //  "Вы уверены, что хотите удалить аккаунт?",
      description: text,
      //  "Все ваши данные будут удалены с приложения",
    );
  }
}

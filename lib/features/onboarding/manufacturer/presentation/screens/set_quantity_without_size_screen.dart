import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class SetQuantityWithoutSizeScreen extends StatefulWidget {
  const SetQuantityWithoutSizeScreen({super.key});

  @override
  State<SetQuantityWithoutSizeScreen> createState() =>
      _SetQuantityWithoutSizeScreenState();
}

class _SetQuantityWithoutSizeScreenState
    extends State<SetQuantityWithoutSizeScreen> {
  List<PlatformFile>? filesForTech;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TextEditingController quantityController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                          SvgImages.goback,
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
                                fontFamily: "SF Pro",
                                color: const Color(0xff324D19)),
                          ),
                          Text(
                            "из 5",
                            style:
                                AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Укажите общее количество товара",
                      style: AppFonts.w700s36
                          .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        "Минимальное количество товара равно 100 ед",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    CustomTextForm(
                      hintText: "100",
                      controller: quantityController,
                      keyboardType: TextInputType.number,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: Text(
                        "Опишите ваш заказ",
                        style: AppFonts.w700s20
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                        child: TextFormField(
                          controller: controller,
                          maxLines: 8,
                          keyboardType: TextInputType.multiline,
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                          decoration: InputDecoration(
                              hintText: "Добавьте комментарии к заказу",
                              hintStyle: AppFonts.w400s16,
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.borderColor)),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.borderColor)),
                              border: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.borderColor)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.borderColor))),
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return "В описании должно быть не более";
                          //   }
                          //   return null;
                          // },
                        )),
                    InkWell(
                      onTap: _pickFiles,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.cardsColor,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 241.w,
                                  child: Text(
                                    "Добавьте техзадание/лекала(если есть)",
                                    style: AppFonts.w400s16.copyWith(
                                        color: AppColors.accentTextColor),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                                IconButton(
                                    onPressed: _pickFiles,
                                    icon: SvgPicture.asset(SvgImages.document))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    filesForTech != null
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.h, left: 10.w),
                            child: SizedBox(
                                height: 60.h,
                                child: ListView.separated(
                                    itemCount: filesForTech?.length ?? 0,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          GoRouter.of(context).pushNamed(
                                              "seeDoc",
                                              queryParameters: {
                                                "path":
                                                    filesForTech?[index].path
                                              });
                                        },
                                        child: Column(
                                          children: [
                                            const Icon(
                                              Icons.edit_document,
                                              color: AppColors.accentTextColor,
                                            ),
                                            Text(
                                              filesForTech?[index].name ?? "",
                                              style: AppFonts.w400s16.copyWith(
                                                  color: AppColors
                                                      .accentTextColor),
                                            )
                                          ],
                                        ),
                                      );
                                    })),
                          )
                        : const SizedBox.shrink()
                  ],
                ),
              ),
            ),
            // const Spacer(),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).pushNamed("setQuantityScreen");
                    },
                    child: Text(
                      "Указать размеры одежды",
                      style: AppFonts.w400s16
                          .copyWith(color: AppColors.accentTextColor),
                    )),
                CustomButton(
                    text: "Дальше",
                    onPressed: () {
                      if ((int.tryParse(quantityController.text) ?? 0) < 49) {
                        showDialog(
                            context: context,
                            builder: (context) => Dialog(
                                  backgroundColor: AppColors.cardsColor,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.w, vertical: 20.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SvgPicture.asset(SvgImages.info),
                                            IconButton(
                                                onPressed: () {
                                                  GoRouter.of(context).pop();
                                                },
                                                icon: SvgPicture.asset(
                                                    SvgImages.close))
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h),
                                          child: Text(
                                            "Минимальное количество товара равно 49 ед",
                                            style: AppFonts.w700s20.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                        ),
                                        InkWell(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          onTap: () {
                                            GoRouter.of(context).pop();
                                          },
                                          child: Ink(
                                            height: 40.h,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                                border: Border.all(
                                                    color: Colors.green)),
                                            child: Center(
                                              child: Text(
                                                "Понятно",
                                                style: AppFonts.w400s16
                                                    .copyWith(
                                                        color: AppColors
                                                            .accentTextColor),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ));
                      } else {
                        Provider.of<SizeProvider>(context, listen: false)
                            .setTotalQuantity(
                          total: (int.tryParse(quantityController.text) ?? 0),
                        );
                        Provider.of<PhotoProvider>(context, listen: false)
                            .addToFiles(files: filesForTech);
                        Provider.of<OrderProvider>(context, listen: false)
                            .updateDescription(newDescription: controller.text);
                        GoRouter.of(context).pushNamed("setPriceScreen",
                            queryParameters: {
                              "quantity": quantityController.text
                            });
                      }
                    }),
              ],
            )
          ],
        ),
      )),
    );
  }

  Future<void> _pickFiles() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result == null) {
    } else {
      setState(() {
        filesForTech = result.files;
      });
    }
  }
}

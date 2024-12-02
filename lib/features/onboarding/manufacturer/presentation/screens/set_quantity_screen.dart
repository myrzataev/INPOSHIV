import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/size_model.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class SetQuantityScreen extends StatefulWidget {
  const SetQuantityScreen({super.key});

  @override
  State<SetQuantityScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<SetQuantityScreen> {
  final TextEditingController controller = TextEditingController();
  int totalQuantity = 0;
  List<SizeModelWithController> sizes = [
    // SizeModelWithController(
    //   usSize: "XS",
    //   ruSize: 42,
    //   quantity: 0,
    // ),
    // SizeModelWithController(usSize: "S", ruSize: 44, quantity: 0),
    // SizeModelWithController(usSize: "M", ruSize: 46, quantity: 0),
    // SizeModelWithController(usSize: "L", ruSize: 48, quantity: 0),
    // SizeModelWithController(usSize: "XL", ruSize: 50, quantity: 0),
    // SizeModelWithController(usSize: "XXL", ruSize: 52, quantity: 0),
  ];
  @override
  void initState() {
    callBloc();
    for (var size in sizes) {
      size.controller.addListener(_calculateTotalQuantity);
    }
    super.initState();
  }

  @override
  void dispose() {
    for (var size in sizes) {
      size.controller.dispose();
    }
    super.dispose();
  }

  void _calculateTotalQuantity() {
    int newTotal = 0;
    for (var size in sizes) {
      // Try to parse the input from the controller; if empty or invalid, treat it as 0
      final quantity = int.tryParse(size.controller.text) ?? 0;
      newTotal += quantity;
    }
    setState(() {
      totalQuantity = newTotal;
    });
  }

  void callBloc() {
    BlocProvider.of<CreateOrderBloc>(context)
        .add(const CreateOrderEvent.getSizesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocListener<CreateOrderBloc, CreateOrderState>(
        listener: (context, state) {
          state.maybeWhen(
              sizesLoaded: (model) {
                setState(() {
                  List<SizeModelWithController> list = model
                      .map((element) => SizeModelWithController(
                          usSize: element.sizeNameUs ?? "",
                          ruSize: int.tryParse(element.sizeNameRus ?? "0") ?? 0,
                          quantity: 0,
                          id: element.id))
                      .toList();
                  sizes = list;
                });
              },
              orElse: () {});
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Укажите размерный ряд и количество товара",
                  style: AppFonts.w700s36
                      .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    "Минимальное количество товара 100 ед",
                    style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                  ),
                  // child: RichText(
                  //     text: TextSpan(
                  //         text: "Средняя цена на блузки от ",
                  //         style: AppFonts.w400s16,
                  //         children: [
                  //       TextSpan(
                  //           text: "7\$ до 10\$ ",
                  //           style: AppFonts.w400s16
                  //               .copyWith(color: AppColors.accentTextColor)),
                  //       TextSpan(text: "7\$ до 10\$ ", style: AppFonts.w400s16),
                  //     ]))
                ),
                DataTable(
                    columnSpacing: 100.w,
                    dividerThickness: 0,
                    columns: [
                      DataColumn(
                        label: Text(
                          "US",
                          style: AppFonts.w400s16,
                        ),
                      ),
                      DataColumn(
                          label: Text(
                        "RUS",
                        style: AppFonts.w400s16,
                      )),
                      DataColumn(
                          label: Text(
                        "Кол-во",
                        style: AppFonts.w400s16,
                      ))
                    ],
                    rows: sizes
                        .map((size) => DataRow(cells: [
                              DataCell(Text(
                                size.usSize,
                                style: AppFonts.w400s16
                                    .copyWith(color: Colors.black),
                              )),
                              DataCell(
                                Text(
                                  // "89",
                                  size.ruSize.toString(),
                                  style: AppFonts.w400s16
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                              DataCell(TextField(
                                controller: size.controller,
                                onChanged: (value) {
                                  size.quantity = int.tryParse(value) ?? 0;
                                  _calculateTotalQuantity();
                                  // print(value);
                                  // setState(() {
                                  //   size.quantity = int.tryParse(value) ?? 0;
                                  // });
                                },
                                style: AppFonts.w700s18.copyWith(
                                    color: AppColors.regularGreyColor),
                                keyboardType:
                                    const TextInputType.numberWithOptions(),
                                decoration: InputDecoration(
                                    hintText: "0",
                                    hintStyle: AppFonts.w400s16.copyWith(
                                        color: AppColors.regularGreyColor),
                                    isDense: true,
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.accentTextColor)),
                                    border: const UnderlineInputBorder()),
                              ))
                            ]))
                        .toList()),
                // ElevatedButton(
                //     onPressed: () {
                //       print(sizes[1].quantity);
                //     },
                //     child: Text("data")),
                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Итого",
                        style: AppFonts.w400s16.copyWith(color: Colors.black),
                      ),
                      Text(
                        "$totalQuantity",
                        style: AppFonts.w700s18
                            .copyWith(color: AppColors.regularGreyColor),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          GoRouter.of(context)
                              .pushNamed("setQuantityWithoutSizeScreen");
                        },
                        child: Text(
                          "Пропустить",
                          style: AppFonts.w400s16,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: CustomButton(
                      text: "Дальше",
                      onPressed: () {
                        if (totalQuantity < 100) {
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
                                              "Минимальное количество товара 100 ед",
                                              style: AppFonts.w700s20.copyWith(
                                                  color: AppColors
                                                      .accentTextColor),
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
                                                      BorderRadius.circular(
                                                          10.r),
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
                              .setSizes(
                            sizeList: sizes,
                          );
                          Provider.of<SizeProvider>(context, listen: false)
                              .setTotalQuantity(
                            total: totalQuantity,
                          );
                          GoRouter.of(context).pushNamed("setPriceScreen",
                              queryParameters: {
                                "quantity": totalQuantity.toString()
                              });
                        }
                      }),
                )
                // const Spacer(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class SizeModelWithController {
  final String usSize;
  final int ruSize;
  final TextEditingController controller;
  int? quantity;
  int? id;

  SizeModelWithController(
      {required this.usSize,
      required this.ruSize,
      required this.quantity,
      this.id})
      : controller = TextEditingController();
}

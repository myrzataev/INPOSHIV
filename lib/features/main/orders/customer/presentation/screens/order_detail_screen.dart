import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_order_detail_row.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/date_picker.dart';
import 'package:inposhiv/resources/resources.dart';

class OrderDetailScreen extends StatefulWidget {
  final String orderId;
  const OrderDetailScreen({super.key, required this.orderId});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  List<PlatformFile>? filesForTech;
  List<PlatformFile>? filesForLecala;
  List<PlatformFile>? filesForDoc;
  TextEditingController fabricTypeController = TextEditingController();
  TextEditingController orderNameController = TextEditingController();

  TextEditingController colorController = TextEditingController();
  TextEditingController expirationController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool isShown = false;
  @override
  void dispose() {
    fabricTypeController.dispose();
    colorController.dispose();
    expirationController.dispose();
    discountController.dispose();
    addressController.dispose();
    orderNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    CustomSearchWidget(
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        child: SvgPicture.asset(SvgImages.goback)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        "Данные заказа",
                        style: AppFonts.w700s20
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                    ),
                    CustomOrderDetailRow(
                      controller: orderNameController,
                      title: "Наименование товара",
                      value: "Женское платье",
                    ),
                    CustomOrderDetailRow(
                      controller: fabricTypeController,
                      title: "Материал",
                      value: "Хлопок",
                    ),
                    CustomOrderDetailRow(
                      controller: colorController,
                      title: "Цвет ткани",
                      value: "Черный",
                    ),
                    // CustomOrderDetailRow(
                    //   controller: expirationController,
                    //   title: "Сроки",
                    //   value: "16.04.2024 – 20.05.2024",
                    // ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Сроки",
                                style: AppFonts.w400s16,
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              DateRangePickerExample(
                                controller: expirationController,
                              )
                              // Expanded(
                              //   child: TextField(
                              //     readOnly: true,
                              //     onTap: () {
                              //       pickDate();
                              //     },
                              //     controller: expirationController,
                              //     // value,

                              //   ),
                              // )
                            ],
                          ),
                          const Divider(
                            color: AppColors.borderColorGrey,
                          ),
                        ],
                      ),
                    ),
                  
                    CustomOrderDetailRow(
                      title: "Пункт доставки",
                      controller: addressController,
                      value: "Манаса 119",
                    ),
                    CustomAttachDocument(
                      isShown: isShown,
                      files: filesForTech,
                      text: "Тех. задание",
                      onTap: () {
                        _pickFiles(0);
                      },
                      fileName: "file.pdf",
                    ),
                    CustomAttachDocument(
                      text: "Лекала",
                      files: filesForLecala,
                      onTap: () {
                        _pickFiles(1);
                      },
                    ),
                    CustomAttachDocument(
                      text: "Договор",
                      files: filesForDoc,
                      onTap: () {
                        _pickFiles(2);
                      },
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed("invoiceScreen",
                      queryParameters: {"orderId": "1"});
                },
                child: const Text("data")),
            CustomButton(
                text: "Подтвердите правильность данных",
                onPressed: () {
                  // context.goNamed("auction");
                  // Future.delayed(const Duration(milliseconds: 200), () {
                  //   showDialog(
                  //     // ignore: use_build_context_synchronously
                  //     context: context,
                  //     builder: (context) => CustomDialog(
                  //       title:
                  //           "Мы отправили эти данные производителю для подтверждения",
                  //       description: "Мы уведомим вас, когда он это сделает",
                  //       button: CustomButton(
                  //         text: "Понятно",
                  //         onPressed: () {
                  //         GoRouter.of(context).pushNamed("invoiceScreen");
                  //          // Close the dialog
                  //         },
                  //       ),
                  //     ),
                  //   );
                  // });
                  BlocProvider.of<OrdersBloc>(context)
                      .add(OrdersEvent.sendOrderDetails(
                          orderDetails: OrderDetailsModel(
                            orderId: int.tryParse(widget.orderId),
                            productName: orderNameController.text,
                            material: 0,
                            color: colorController.text,
                            quantity: 100,
                            deliveryPoint: addressController.text,
                            discount: int.tryParse(discountController.text),
                            deadline:
                                DateTime.tryParse(expirationController.text),
                            technicalDocumentUrls: filesForDoc
                                ?.map((element) => element.path ?? "")
                                .toList(),
                            technicalDocuments: filesForDoc
                                ?.map((element) => element.path ?? "")
                                .toList(),
                            lekalaDocumentUrls: filesForLecala
                                ?.map((element) => element.path ?? "")
                                .toList(),
                          ).toJson(),
                          orderId: widget.orderId));
                })
          ],
        ),
      )),
    );
  }

  Future<void> _pickFiles(int id) async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result == null) {
      print("not selected");
    } else {
      setState(() {
        if (id == 0) {
          filesForTech = result.files;
        } else if (id == 1) {
          filesForLecala = result.files;
        } else {
          filesForDoc = result.files;
        }
      });
      // for (var element in result.files) {
      //   print(element.name);
      // }
    }
  }

  Future<void> pickDate() async {
    final result = await showDatePicker(
        locale: Locale("ru", "RU"),
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (result != null) {
      setState(() {
        expirationController.text = result.toString().split(" ")[0];
      });
    }
  }
}

class CustomAttachDocument extends StatelessWidget {
  final String text;
  final List<PlatformFile>? files;
  final Function onTap;
  final String? fileName;
  final bool? isShown;
  const CustomAttachDocument({
    super.key,
    required this.text,
    required this.onTap,
    this.files,
    this.fileName,
    this.isShown = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppFonts.w400s16,
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      onTap();
                    },
                    icon: SvgPicture.asset(SvgImages.document)),
                // AnimatedSwitcher(
                //   duration: const Duration(milliseconds: 300),
                //   switchInCurve: Curves.easeIn,
                //   switchOutCurve: Curves.easeOut,
                //   child: (isShown ?? false)
                //       ? Column(
                //           key: ValueKey<int>(1), // Key for switching animation
                //           children: [
                //             TextButton(
                //               onPressed: () {},
                //               child: Text("data"),
                //             ),
                //             TextButton(
                //               onPressed: () {},
                //               child: Text("data"),
                //             ),
                //           ],
                //         )
                //       : SizedBox.shrink(key: ValueKey<int>(2)),
                // )
              ],
            )
          ],
        ),
        files != null
            ? SizedBox(
                height: 60.h,
                child: ListView.separated(
                    itemCount: files?.length ?? 0,
                    separatorBuilder: (context, index) => SizedBox(
                          width: 20.w,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          GoRouter.of(context).pushNamed("seeDoc",
                              queryParameters: {"path": files?[index].path});
                        },
                        child: Column(
                          children: [
                            const Icon(
                              Icons.edit_document,
                              color: AppColors.accentTextColor,
                            ),
                            Text(
                              files?[index].name ?? "",
                              style: AppFonts.w400s16
                                  .copyWith(color: AppColors.accentTextColor),
                            )
                          ],
                        ),
                      );
                    }))
            : const SizedBox.shrink()
      ],
    );
  }
}

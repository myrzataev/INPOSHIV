import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/notification_card.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/blocs/get_manufacturer_invoices_bloc/get_manufacturer_invoices_bloc.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/blocs/get_order_details_bloc/get_order_details_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NoticationsScreen extends StatefulWidget {
  const NoticationsScreen({super.key});

  @override
  State<NoticationsScreen> createState() => _NoticationsScreen();
}

class _NoticationsScreen extends State<NoticationsScreen> {
  final preferences = locator<SharedPreferences>();
  bool? isCustomer;
  getCustomerInvoices() {
    BlocProvider.of<GetManufacturerInvoicesBloc>(context).add(
        GetManufacturerInvoicesEvent.getManufacturerInvoices(
            manufactureId: preferences.getString("customerId") ?? ""));
  }

  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer");

    getCustomerInvoices();
    super.initState();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: SvgPicture.asset(SvgImages.goback)),
                CustomSearchWidget(
                    onTap: () {}, child: SvgPicture.asset(SvgImages.search))
              ],
            ),
            (isCustomer ?? true)
                ? BlocBuilder<GetManufacturerInvoicesBloc,
                    GetManufacturerInvoicesState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          loading: () => const Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                          error: (errorText) => Center(
                                child: Text(errorText),
                              ),
                          loaded: (model) {
                            if (model.isNotEmpty) {
                              return Expanded(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 30.h),
                                child: RefreshIndicator.adaptive(
                                  onRefresh: () => getCustomerInvoices(),
                                  child: ListView.separated(
                                      itemBuilder: (context, index) {
                                        return NotificationCard(
                                          title: "Счет на оплату",
                                          onTap: () {
                                            context.go(
                                                "/orders/invoiceScreenForCustomer",
                                                extra: model[index]);
                                          },
                                          description: "Подтвердите",
                                        );
                                      },
                                      separatorBuilder: (index, context) {
                                        return SizedBox(
                                          height: 7.h,
                                        );
                                      },
                                      itemCount: model.length),
                                ),
                              ));
                            } else {
                              return Expanded(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 30.h),
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return NotificationCard(
                                        title: "Счет на оплату",
                                        onTap: () {
                                          print(preferences.getString("userId"));
                                          // context.go(
                                          //     "/orders/invoiceScreenForCustomer",
                                          //     extra: model[index]);
                                        },
                                        description: "Подтвердите",
                                      );
                                    },
                                    separatorBuilder: (index, context) {
                                      return SizedBox(
                                        height: 7.h,
                                      );
                                    },
                                    itemCount: 1),
                              ));
                            }
                          },
                          orElse: () {
                            return Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return NotificationCard(
                                      title: "Счет на оплату",
                                      onTap: () {
                                        context.go(
                                          "/orders/invoiceScreenForCustomer",
                                          // extra: model[index]
                                        );
                                      },
                                      description: "Подтвердите",
                                    );
                                  },
                                  separatorBuilder: (index, context) {
                                    return SizedBox(
                                      height: 7.h,
                                    );
                                  },
                                  itemCount: 1),
                            ));
                          });
                    },
                  )
                : BlocBuilder<GetOrderDetailsBloc, GetOrderDetailsState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          loading: () => const Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                          error: (errorText) => Center(
                                child: Text(errorText),
                              ),
                          loaded: (model) {
                            return Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return NotificationCard(
                                      title: "Счет на оплату",
                                      onTap: () {
                                        print("object");
                                        context.go(
                                            "/orders/orderDetailsForManufacturer",
                                            extra: model);
                                      },
                                      description: "Подтвердите",
                                    );
                                  },
                                  separatorBuilder: (index, context) {
                                    return SizedBox(
                                      height: 7.h,
                                    );
                                  },
                                  itemCount: 1),
                            ));
                          },
                          orElse: () {
                            return Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return NotificationCard(
                                      title: "Счет на оплату",
                                      onTap: () {
                                        context.go(
                                          "/orders/orderDetailsForManufacturer",
                                          // extra: model
                                        );
                                      },
                                      description: "Подтвердите",
                                    );
                                  },
                                  separatorBuilder: (index, context) {
                                    return SizedBox(
                                      height: 7.h,
                                    );
                                  },
                                  itemCount: 1),
                            ));
                          });
                    },
                  )
          ],
        ),
      )),
    );
  }
}

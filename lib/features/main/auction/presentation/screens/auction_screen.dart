import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/auction/data/mocked_aution_data.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/main_appbar.dart';
import 'package:inposhiv/resources/resources.dart';

class AuctionScreen extends StatelessWidget {
  const AuctionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MockedAuctionModel> data = MockedAutionData.data;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: const MainAppBar(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.cardsColor,
                    borderRadius: BorderRadiusDirectional.circular(10.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: SizedBox(
                          height: 60.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 10.w,
                                );
                              },
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    GoRouter.of(context).pushNamed("seeImage",
                                        extra: [
                                          Images.good1,
                                          Images.girl,
                                          Images.good2
                                        ]);
                                  },
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6.r),
                                      child: Image.asset(Images.good1)),
                                );
                              }),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Хлопковая блузка",
                            style: AppFonts.w700s16,
                          ),
                          Text(
                            "580 штук",
                            style: AppFonts.w400s16
                                .copyWith(color: AppColors.accentTextColor),
                          )
                        ],
                      ),
                      Text(
                        "600 руб за единицу, итого 348 000 руб",
                        style: AppFonts.w400s16,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return Container(
                      decoration: BoxDecoration(
                          color: AppColors.cardsColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(item.logo),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(60.r),
                                        border: Border.all(
                                            width: 1.w,
                                            color: statusColor(
                                                status: item.trustStatuses))),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0.w),
                                      child: Text(
                                        trustStatus(status: item.trustStatuses),
                                        style: AppFonts.w400s16.copyWith(
                                            color: statusColor(
                                                status: item.trustStatuses),
                                            fontFamily: "SF Pro"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    item.location,
                                    style: AppFonts.w700s20.copyWith(
                                        color: AppColors.accentTextColor),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: SvgPicture.asset(
                                      SVGImages.star,
                                      height: 16.h,
                                      width: 16.w,
                                    ),
                                  ),
                                  Text(
                                    "${4.96}",
                                    style: AppFonts.w700s16,
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Выполнено в Inposhiv ${item.quantityOfOrders} заказов.",
                              style: AppFonts.w400s16
                                  .copyWith(color: AppColors.accentTextColor),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${item.retailPrice}\$",
                                      style: AppFonts.w700s18,
                                    ),
                                    Text(
                                      "580 руб",
                                      style: AppFonts.w400s16,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${3018}\$",
                                        style: AppFonts.w700s18,
                                      ),
                                      Text(
                                        "312 000 руб",
                                        style: AppFonts.w400s16,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: CustomButton(
                                text: "Связаться",
                                onPressed: () {},
                                sizedTemporary: true,
                                height: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                  itemCount: data.length),
            ))
          ],
        ),
      )),
    );
  }

  Color statusColor({required int status}) {
    switch (status) {
      case 2:
        return AppColors.accentTextColor;
      case 1:
        return AppColors.orange;
      case 0:
        return AppColors.red;
      default:
        return AppColors.accentTextColor;
    }
  }

  String trustStatus({required int status}) {
    switch (status) {
      case 2:
        return "Очень надежный";
      case 1:
        return "Надежный";
      case 0:
        return "Ненадежный";
      default:
        return "Надежный";
    }
  }
}

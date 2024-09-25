import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class BanksListScreen extends StatelessWidget {
  const BanksListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BanksListModel> data = BanksListModelData.data;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchWidget(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: SvgPicture.asset(SvgImages.goback)),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: ListView.separated(
                      itemCount: data.length,
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: const Divider(),
                        );
                      },
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return InkWell(
                          onTap: () {
                            GoRouter.of(context)
                                .pushNamed("topUpBalanceScreen");
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.containersGrey,
                                radius: 20.r,
                                backgroundImage: AssetImage(item.icon),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  item.name,
                                  style: AppFonts.w500s18,
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BanksListModel {
  final String name;
  final String icon;

  BanksListModel({required this.name, required this.icon});
}

abstract class BanksListModelData {
  static List<BanksListModel> data = [
    BanksListModel(name: "MBANK", icon: Images.mbank),
    BanksListModel(name: "Т БАНК", icon: Images.tbank),
    BanksListModel(name: "Оптима Банк", icon: Images.optima),
    BanksListModel(name: "Демир Банк", icon: Images.demir),
    BanksListModel(name: "Сбер", icon: Images.sber),
    BanksListModel(name: "ДосКредоБанк", icon: Images.dos)
  ];
}

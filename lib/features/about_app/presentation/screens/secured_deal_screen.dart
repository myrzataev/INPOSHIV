import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class SecuredDealScreen extends StatelessWidget {
  const SecuredDealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: CustomSearchWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    }, child: SvgPicture.asset(SvgImages.goback)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  "Безопасная сделка в InPoshiv",
                  style:
                      AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
                ),
              ),
              Text(
                  "Все финансовые операции в приложении InPoshiv защищены сервисом безопасной сделки. Ее цель  – обезопасить обе стороны сделки от мошенничества и помочь им прийти к справедливому решению при возникновении конфликта. Как это работает? После заключения сделки заказчик оплачивает 100% от суммы заказа, которые распределяются следующим образом: 30% от суммы заказа поступают сразу на счет производителя в качестве аванса 70%* замораживаются на его счету или находятся непосредственно на эскроу-счете (специальный счет для безопасного проведения расчетов между покупателем и продавцом) до тех пор, пока не будет установлено удовлетворительное состояние доставленного товара  *соотношение может быть изменено согласно договоренности сторон Деньги можно будет вывести только после того, как заказчик сообщит, что товар соответствующего качества. У заказчика есть три дня после поставки товара, чтобы подтвердить, что все хорошо. Если никаких жалоб не поступает, то сумма автоматически переводится на счет производителя. До этого момента средства не может вывести ни одна из сторон. Надлежащее качество должен подтвердить клиент в пункте выдачи или же сообщить сотруднику, если что-то не так. Комиссия за услуги безопасной сделки составляет …%. Ее платит либо одна из сторон, либо по договоренности 50/50 обе стороны. ")
            ],
          ),
        ),
      )),
    );
  }
}

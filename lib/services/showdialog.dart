import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Showdialog {
  static showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog.adaptive(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator.adaptive(),
          Container(
              margin: EdgeInsets.only(left: 7.w),
              child: const Text("Загрузка")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

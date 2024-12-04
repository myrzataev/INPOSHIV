import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Showdialog {
  static showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog.adaptive(
      backgroundColor: Colors.white,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator.adaptive(),
          Container(
            margin: EdgeInsets.only(left: 15.w),
            child: const Text("Загрузка"),
          ),
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

  static showErrorDialog({
    required BuildContext context,
    required String title,
    required String message,
    VoidCallback? onClose,
  }) {
    AlertDialog alert = AlertDialog.adaptive(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
          color: Colors.red,
        ),
      ),
      content: Text(
        message,
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.black87,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (onClose != null) {
              onClose();
            }
            Navigator.of(context).pop();
          },
          child: const Text("ОК"),
        ),
      ],
    );

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

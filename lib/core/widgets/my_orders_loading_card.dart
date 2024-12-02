import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class MyOrdersLoadingCard extends StatelessWidget {
  const MyOrdersLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(255, 213, 211, 211),
      highlightColor: const Color.fromARGB(255, 168, 165, 165),
      child: Column(
        children: [
          Container(
            height: 300.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r), // Static radius
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Container(
              height:15.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r), // Static radius
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r), // Static radius
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Container(
              height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r), // Static radius
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

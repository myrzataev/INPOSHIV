import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomMainLoadingListview extends StatelessWidget {
  const CustomMainLoadingListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Shimmer.fromColors(
              baseColor: const Color.fromARGB(255, 213, 211, 211),
              highlightColor: const Color.fromARGB(255, 168, 165, 165),
              child: Column(
                children: [
                  Container(
                    height: 300.h,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(15.r), // Static radius
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Container(
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(15.r), // Static radius
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(15.r), // Static radius
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Container(
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(15.r), // Static radius
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10.0);
          },
        ),
      ),
    );
  }
}

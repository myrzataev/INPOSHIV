import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCard extends StatelessWidget {
  final double height;
  final double radius;
  const LoadingCard({super.key, required this.height, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(255, 213, 211, 211),
      highlightColor: const Color.fromARGB(255, 168, 165, 165),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), // Static radius
          color: Colors.white,
        ),
      ),
    );
  }
}
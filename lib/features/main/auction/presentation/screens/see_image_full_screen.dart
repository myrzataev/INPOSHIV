import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class SeeImageFullScreen extends StatefulWidget {
  final List<String> imagesList;
  final int index;
  const SeeImageFullScreen(
      {super.key, required this.imagesList, required this.index});

  @override
  State<SeeImageFullScreen> createState() => _SeeImageFullScreenState();
}

class _SeeImageFullScreenState extends State<SeeImageFullScreen> {
  late PageController _pageController;

  int? currentIndex;
  @override
  void initState() {
    currentIndex = widget.index;
    _pageController = PageController(
      initialPage: currentIndex ?? 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(alignment: Alignment.center, children: [
          Positioned.fill(
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.imagesList.length,
              itemBuilder: (context, index) {
                return CachedNetworkImage(
                    placeholder: (context, url) => const CircularProgressIndicator.adaptive(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    imageUrl: widget.imagesList[index]);
              },
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
            ),
          ),
          Positioned(
            top: 0.h,
            left: 20.w,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              color: Colors.white,
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
          Positioned(
              bottom: 20.h,
              child: Text(
                "${currentIndex! + 1}-${widget.imagesList.length}",
                style: AppFonts.w700s18.copyWith(color: Colors.white),
              ))
        ]),
      ),
    );
  }
}

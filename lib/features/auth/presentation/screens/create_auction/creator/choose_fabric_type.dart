import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';

class ChooseFabricTypeScreen extends StatefulWidget {
  const ChooseFabricTypeScreen({super.key});

  @override
  State<ChooseFabricTypeScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseFabricTypeScreen> {
  final List<String> _items = [
    'Хлопок',
    'Шерсть',
    'Лен',
    'шелк'
  ]; // List of dropdown items
  String? _selectedValue; // Selected dropdown value
  GlobalKey _buttonKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isDropdownOpen = false;
  String? category;

  @override
  void dispose() {
    if (_isDropdownOpen) {
      _closeDropdown();
    }
    super.dispose();
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
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r)),
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset(
                  SvgImages.goback,
                  height: 40.h,
                  width: 40.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Шаг 3 ",
                    style: AppFonts.w400s16.copyWith(
                        fontFamily: "SF Pro", color: const Color(0xff324D19)),
                  ),
                  Text(
                    "из 5",
                    style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                  ),
                ],
              ),
            ),
            Text(
              "Выберите вид ткани",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                "Это необязательное действие",
                style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
              ),
            ),
            GestureDetector(
              key: _buttonKey,
              onTap: _toggleDropdown, // Toggle the dropdown menu
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: const Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedValue ?? "Выберите ткань",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    _isDropdownOpen
                        ? RotatedBox(
                            quarterTurns: 90,
                            child: SvgPicture.asset(SvgImages.bottom))
                        : SvgPicture.asset(SvgImages.bottom)
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding:  EdgeInsets.only(bottom: 10.h),
              child: CustomButton(
                  text: "Дальше",
                  onPressed: () {
                    if (_isDropdownOpen) {
                      _closeDropdown();
                    }
                                        GoRouter.of(context).pushNamed("setQuantityScreen");
              
                  }),
            )
          ],
        ),
      )),
    );
  }

  void _toggleDropdown() {
    if (_isDropdownOpen) {
      _closeDropdown();
    } else {
      _openDropdown();
    }
  }

  void _openDropdown() {
    final RenderBox renderBox =
        _buttonKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    _overlayEntry = _createDropdownOverlay(position, size);
    Overlay.of(context).insert(_overlayEntry!);
    setState(() {
      _isDropdownOpen = true;
    });
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    setState(() {
      _isDropdownOpen = false;
    });
  }

  OverlayEntry _createDropdownOverlay(Offset position, Size size) {
    return OverlayEntry(
      builder: (context) {
        return Positioned(
          left: position.dx,
          top: position.dy + size.height,
          width: size.width,
          child: Material(
            color: Colors.transparent,
            // elevation: 4.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: _items.map((item) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedValue = item;
                          _closeDropdown();
                        });
                      },
                      child: Container(
                        height: 50.h,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: AppColors.borderColorGrey),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 16.sp),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}

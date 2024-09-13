import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/resources/resources.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({super.key});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  final List<String> _items = [
    'Блузки',
    'Кофты',
    'Худи',
    'Свитшоты'
  ]; // List of dropdown items
  String? _selectedValue; // Selected dropdown value
  GlobalKey _buttonKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isDropdownOpen = false;
  String? category;
  // @override
  // void didChangeDependencies() {
  //   // ignore: deprecated_member_use
  //   ModalRoute.of(context)?.addScopedWillPopCallback(() async {
  //     if (_isDropdownOpen) {
  //       _closeDropdown();
  //       return false; // Don't pop the route, close the dropdown first
  //     }
  //     return true; // Allow the pop to happen
  //   });
  //   super.didChangeDependencies();
  // }

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
                  SVGImages.goback,
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
                    "Шаг 2 ",
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
              "Выберите  категорию товара",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                "К какой категории одежды подходит ваш товар",
                style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
              child: Text(
                "Тип одежды",
                style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomChooseRoleWidget(
                    isChoosed: category == "Мужская",
                    onTap: () {
                      setState(() {
                        category = "Мужская";
                      });
                    },
                    text: "Мужская",
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: CustomChooseRoleWidget(
                    isChoosed: category == "Женская",
                    onTap: () {
                      setState(() {
                        category = "Женская";
                      });
                    },
                    text: "Женская",
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: CustomChooseRoleWidget(
                    isChoosed: category == "Детская",
                    onTap: () {
                      setState(() {
                        category = "Детская";
                      });
                    },
                    text: "Детская",
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
              child: Text(
                "Категория",
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
                      _selectedValue ?? "Выберите категорию",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    _isDropdownOpen
                        ? RotatedBox(
                            quarterTurns: 90,
                            child: SvgPicture.asset(SVGImages.bottom))
                        : SvgPicture.asset(SVGImages.bottom)
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
                    if(_isDropdownOpen){
                      _closeDropdown();
                    }
                    GoRouter.of(context).pushNamed("chooseFabricType");
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
    Overlay.of(context)?.insert(_overlayEntry!);
    setState(() {
      _isDropdownOpen = true;
    });
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null; // Clear the overlay entry reference
    if (mounted) {
      setState(() {
        _isDropdownOpen = false;
      });
    }
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

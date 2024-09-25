import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choose_image_button.dart';
import 'package:inposhiv/resources/resources.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<SearchScreen> {
  final List<String> _items = [
    'Блузки',
    'Кофты',
    'Худи',
    'Свитшоты'
  ]; // List of dropdown items
  final List<String> _materials = ['Хлопок', 'Шерсть', 'Лен', 'шелк'];
  String? _selectedValue; // Selected dropdown value

  // bool _isDropdownOpen = false;
  String? category;
  String? _selectedValueForSecond; // Selected dropdown value

  final List<XFile>? _selectedImages = [];
  final int _maxImages = 3;
  final ImagePicker _picker = ImagePicker();
  @override
  void initState() {
    _selectedValue = _items.first;
    _selectedValueForSecond = _materials.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Platform.isAndroid;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Stack(children: [
          ListView(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: isAndroid ? 5.h : 0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: AppColors.borderColor,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Поиск по названию товара",
                        hintStyle: AppFonts.w400s16,
                        fillColor: AppColors.containersGrey,
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: 24.h, maxWidth: 54.w),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: SvgPicture.asset(
                            SvgImages.search,
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50.r))),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                  child: CustomChooseImageButton(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    text: "Добавить фото",
                    icon: Icons.add,
                  )),
              CustomChooseImageButton(
                onTap: () {
                  _pickImageFromCamera();
                },
                text: "Сделать новое фото",
                icon: Icons.camera_alt_outlined,
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
              DropdownButtonFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.containersGrey,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r))),
                  value: _selectedValue,
                  dropdownColor: Colors.white,
                  items: _items
                      .map((toElement) => DropdownMenuItem(
                          value: toElement, child: Text(toElement)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  }),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                child: Text(
                  "Материал",
                  style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                ),
              ),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.containersGrey,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r))),
                  value: _selectedValueForSecond,
                  dropdownColor: Colors.white,
                  items: _materials
                      .map((toElement) => DropdownMenuItem(
                          value: toElement, child: Text(toElement)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedValueForSecond = value;
                    });
                  }),
            ],
          ),
          Positioned(
            bottom: 10.h,
            left: 0.w,
            right: 0.w,
            child: CustomButton(
                text: "Поиск",
                onPressed: () {
                  GoRouter.of(context).pushReplacementNamed("main",
                      queryParameters: {"isFromSearch": "true"});
                }),
          )
        ]),
      )),
    );
  }

  Future<void> _pickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        if (_selectedImages!.length >= _maxImages) {
          _selectedImages.removeLast(); // Remove the last image
        }
        _selectedImages.add(image); // Add the new image
      });
    }
  }

  Future<void> _pickImageFromGallery() async {
    final List<XFile>? images = await _picker.pickMultiImage();
    if (images != null) {
      setState(() {
        if (_selectedImages!.length + images.length > _maxImages) {
          // If the selected images exceed the max, remove the last few images
          int overflowCount =
              (_selectedImages.length + images.length) - _maxImages;
          _selectedImages.removeRange(
              _selectedImages.length - overflowCount, _selectedImages.length);
        }
        _selectedImages.addAll(images
            .take(_maxImages - _selectedImages.length)); // Add new images
      });
    }
  }

  void _replaceLastImages(List<XFile> newImages) {
    setState(() {
      int removeCount = newImages.length; // How many images to remove
      if (_selectedImages!.length >= removeCount) {
        // Remove the last few images
        _selectedImages.removeRange(
            _selectedImages.length - removeCount, _selectedImages.length);
      }
      // Add new images
      _selectedImages.addAll(newImages);
    });
  }
}

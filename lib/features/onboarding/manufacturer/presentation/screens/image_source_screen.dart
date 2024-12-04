import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choose_image_button.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseImageSourceScreen extends StatefulWidget {
  const ChooseImageSourceScreen({super.key});

  @override
  State<ChooseImageSourceScreen> createState() =>
      _ChooseImageSourceScreenState();
}

class _ChooseImageSourceScreenState extends State<ChooseImageSourceScreen> {
  List<XFile>? _selectedImages = [];
  final int _maxImages = 5;
  final ImagePicker _picker = ImagePicker();
  late bool? isCustomer;
  Future<void> _pickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        if (_selectedImages!.length >= _maxImages) {
          _selectedImages!.removeLast(); // Remove the last image
        }
        _selectedImages!.add(image); // Add the new image
      });
    }
  }

  final preferences = locator<SharedPreferences>();

  Future<void> _pickImageFromGallery() async {
    final List<XFile>? images = await _picker.pickMultiImage();
    if (images != null) {
      setState(() {
        if (_selectedImages!.length + images.length > _maxImages) {
          // If the selected images exceed the max, remove the last few images
          int overflowCount =
              (_selectedImages!.length + images.length) - _maxImages;
          _selectedImages!.removeRange(
              _selectedImages!.length - overflowCount, _selectedImages!.length);
        }
        _selectedImages!.addAll(images
            .take(_maxImages - _selectedImages!.length)); // Add new images
      });
    }
  }

  void _replaceLastImages(List<XFile> newImages) {
    setState(() {
      int removeCount = newImages.length; // How many images to remove
      if (_selectedImages!.length >= removeCount) {
        // Remove the last few images
        _selectedImages!.removeRange(
            _selectedImages!.length - removeCount, _selectedImages!.length);
      }
      // Add new images
      _selectedImages!.addAll(newImages);
    });
  }

  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer") ?? true;
    super.initState();
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
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  children: [
                    Text(
                      "Шаг 1 ",
                      style: AppFonts.w400s16.copyWith(
                          fontFamily: "SF Pro", color: const Color(0xff324D19)),
                    ),
                    Text(
                      "из ${(isCustomer ?? true) ? 5 : 2} ",
                      style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                    ),
                  ],
                ),
              ),
              Text(
                (isCustomer ?? true)
                    ? "Для аукциона загрузите фото товара"
                    : "Загрузите фото своих работ",
                style: AppFonts.w700s36
                    .copyWith(height: 1, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  (isCustomer ?? true)
                      ? "Загрузите фотографии ваших работ\nВы можете загрузить не более 3 фотографий"
                      : "Вы можете загрузить не более 3 фотографий",
                  style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                ),
              ),
              ((_selectedImages == null || _selectedImages!.isEmpty))
                  ? const Center()
                  : Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: SizedBox(
                        height: 150.h,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10.w,
                            mainAxisSpacing: 10.h,
                          ),
                          itemCount: _selectedImages!.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                // Display the image
                                Image.file(
                                  File(_selectedImages![index].path),
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                                // Add a selection overlay with a checkbox
                                Positioned(
                                  top: 5.h,
                                  right: 5.w,
                                  child: GestureDetector(
                                    onTap: () => _toggleSelection(index),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white.withOpacity(0.6),
                                      ),
                                      child: Icon(
                                        _selectedImages!.contains(
                                                _selectedImages![index])
                                            ? Icons.check_circle
                                            : Icons.radio_button_unchecked,
                                        color: Colors.green,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
              CustomChooseImageButton(
                text: "Добавить фото",
                onTap: () {
                  _pickImageFromGallery();
                },
                icon: Icons.add,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: CustomChooseImageButton(
                  icon: Icons.camera_alt,
                  text: "Сделать новое фото",
                  onTap: () {
                    _pickImageFromCamera();
                  },
                ),
              ),
              const Spacer(),
              ((_selectedImages?.isEmpty) ?? true)
                  ? const Center()
                  : Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: CustomButton(
                          text: "Загрузить фотографию",
                          onPressed: () {
                            // role == 1
                            //     ?
                            GoRouter.of(context).pushNamed((isCustomer ?? true)
                                ? "chooseCategory"
                                : "aboutCompany");
                            // : GoRouter.of(context)
                            //     .pushNamed("aboutCompany");

                            Provider.of<PhotoProvider>(context, listen: false)
                                .addToList(photos: _selectedImages);
                          }),
                    )
            ],
          ),
        ),
      ),
    );
  }

  void _toggleSelection(int index) {
    setState(() {
      // Logic for toggling selection or implementing other behaviors
      if (_selectedImages!.contains(_selectedImages![index])) {
        _selectedImages!.removeAt(index);
      } else {
        _selectedImages!.add(_selectedImages![index]);
      }
    });
  }
}

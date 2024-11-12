import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/search_order_bloc/search_order_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/fabric_type_model.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/get_fabric_types_bloc/get_fabric_types_bloc.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_categories_bloc/get_categories_bloc.dart';
import 'package:inposhiv/resources/resources.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<SearchScreen> {
  List<Subcategory>? _subcategories; // List of dropdown items
  List<FabricTypeModel>? _fabricTypes;
  Subcategory? _selectedSubCategory; // Selected dropdown value
  List<CategoriesEntity>? categories;
  CategoriesEntity? category;
  FabricTypeModel? _selectedFabricType;
  final TextEditingController _searchText = TextEditingController();

  @override
  void initState() {
    // _selectedValue = _items.first;
    callBlocEvent();
    getFabrics();
    super.initState();
  }

  void callBlocEvent() {
    BlocProvider.of<GetCategoriesBloc>(context)
        .add(const GetCategoriesEvent.getAllCategories());
  }

  void getFabrics() {
    BlocProvider.of<GetFabricTypesBloc>(context)
        .add(const GetFabricTypesEvent.getFabricTypes());
  }

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Platform.isAndroid;
    return Scaffold(
      body: BlocListener<SearchOrderBloc, SearchOrderState>(
        listener: (context, state) {
          state.maybeWhen(
              loading: () {
                EasyLoading.show(
                  indicator: const CircularProgressIndicator.adaptive(),
                  status: "loading",
                  maskType: EasyLoadingMaskType.black,
                );
              },
              loaded: (modelList) {
                EasyLoading.dismiss();

                GoRouter.of(context).pushReplacementNamed("main",
                    queryParameters: {"isFromSearch": "true"},
                    extra: modelList);
              },
              error: (errorText) {
                EasyLoading.dismiss();
              },
              orElse: () {});
        },
        child: BlocListener<GetCategoriesBloc, GetCategoriesState>(
          listener: (context, state) {
            state.maybeWhen(
                loaded: (entity) {
                  setState(() {
                    categories = entity;
                  });
                },
                orElse: () {});
          },
          child: BlocListener<GetFabricTypesBloc, GetFabricTypesState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loaded: (model) {
                  setState(() {
                    _fabricTypes = model;
                  });
                },
              );
            },
            child: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Stack(children: [
                ListView(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: isAndroid ? 5.h : 0),
                        child: TextField(
                          controller: _searchText,
                          textAlign: TextAlign.center,
                          cursorColor: AppColors.borderColor,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: "Поиск по названию товара",
                              hintStyle: AppFonts.w400s16,
                              fillColor: AppColors.containersGrey,
                              prefixIconConstraints: BoxConstraints(
                                  maxHeight: 24.h, maxWidth: 54.w),
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
                      child: Text(
                        "Тип одежды",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    SizedBox(
                        height: 50.h,
                        child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 7.w,
                                ),
                            scrollDirection: Axis.horizontal,
                            itemCount: categories?.length ?? 0,
                            itemBuilder: (context, index) {
                              return CustomChooseRoleWidget(
                                  text: categories?[index].name ?? "",
                                  isChoosed: categories?[index] == category,
                                  onTap: () {
                                    setState(() {
                                      category = categories?[index];
                                      _subcategories =
                                          category?.subcategories ?? [];
                                      _selectedSubCategory = null;
                                    });
                                  });
                            })),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: Text(
                        "Категория",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    DropdownButtonFormField(
                        decoration: InputDecoration(
                            hintText: "Выберите тип одежды",
                            filled: true,
                            fillColor: AppColors.containersGrey,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.r))),
                        value: _selectedSubCategory,
                        dropdownColor: Colors.white,
                        items: (_subcategories ?? [])
                            .map((toElement) => DropdownMenuItem(
                                value: toElement,
                                child: Text(toElement.name ?? "")))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedSubCategory = value;
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
                            hintText: "Выберите материал",
                            fillColor: AppColors.containersGrey,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.r))),
                        value: _selectedFabricType,
                        dropdownColor: Colors.white,
                        items: (_fabricTypes ?? [])
                            .map((toElement) => DropdownMenuItem(
                                value: toElement,
                                child: Text(toElement.name ?? "")))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedFabricType = value;
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
                        BlocProvider.of<SearchOrderBloc>(context).add(
                            SearchOrderEvent.search(
                                fabricType: _selectedFabricType?.name ?? "",
                                category: _selectedSubCategory?.name ?? "",
                                productName: _searchText.text));
                      }),
                )
              ]),
            )),
          ),
        ),
      ),
    );
  }
}

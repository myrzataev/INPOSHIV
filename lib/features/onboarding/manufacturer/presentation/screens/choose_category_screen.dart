import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_categories_bloc/get_categories_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_sub_categories_bloc/get_sub_categories_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({super.key});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  List<CategoriesEntity> _gender = [];
  List<Subcategory?> _category = [];
  Subcategory? selectedSubCategory;

  String? _selectedGenderSlug;
  int? _categoryId;
  bool errorVisible = false;
  // Selected dropdown value
  @override
  void initState() {
    callBlocEvent();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void callBlocEvent() {
    BlocProvider.of<GetCategoriesBloc>(context)
        .add(const GetCategoriesEvent.getAllCategories());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(
                  builder: (context) => CustomSearchWidget(
                      onTap: () {
                        Scaffold.of(context).closeDrawer();
                      },
                      child: SvgPicture.asset(SvgImages.close)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.h),
                  child: DropdownButtonFormField(
                      isExpanded: true,
                      hint: const Text("Выберите категорию"),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.borderColorGrey),
                              borderRadius: BorderRadius.circular(10.r)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.borderColorGrey),
                              borderRadius: BorderRadius.circular(10.r))),
                      value: _selectedGenderSlug,
                      dropdownColor: Colors.white,
                      items: _gender.map((toElement) {
                        return DropdownMenuItem(
                            value: toElement.slug,
                            child: Text(
                              toElement.name ?? "",
                              style: AppFonts.w400s16
                                  .copyWith(color: AppColors.accentTextColor),
                            ));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedGenderSlug = value;

                          final selectedGender = _gender.firstWhere(
                            (element) => element.slug == value,
                          );

                          // Update _selectedGenderName
                          if (selectedGender != null) {
                            _categoryId = selectedGender.id ?? 0;
                            Provider.of<OrderProvider>(context, listen: false)
                                .updateCategoryId(id: _categoryId);
                          }
                        });
                        BlocProvider.of<GetSubCategoriesBloc>(context).add(
                            GetSubCategoriesEvent.started(slug: value ?? ""));
                      }),
                ),
                Expanded(
                    child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              height: 5.h,
                            ),
                        itemCount: _category.length,
                        itemBuilder: (context, index) {
                          final currentItem = _category[index];
                          // bool isCurrentItemInSelectedCategories =
                          //     selectedCategories.contains(currentItem);
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedSubCategory = currentItem;

                                errorVisible = false;
                                // if (selectedCategories.contains(currentItem)) {
                                //   selectedCategories.remove(currentItem);
                                // }
                                // else {
                                // selectedCategories.add(currentItem);
                                // }
                              });
                            },
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Container(
                              height: 40.h,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: selectedSubCategory == currentItem
                                      ? AppColors.cardsColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 10.w, right: 10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        _category[index]?.name ?? "",
                                        maxLines: 1,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppFonts.w400s16.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                    ),
                                    selectedSubCategory == currentItem
                                        ? SvgPicture.asset(SvgImages.tick)
                                        : const SizedBox()
                                  ],
                                ),
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ),
        ),
      ),
      body: BlocListener<GetSubCategoriesBloc, GetSubCategoriesState>(
        listener: (context, state) {
          state.maybeWhen(
              loaded: (model) {
                setState(() {
                  _category = model;
                });
              },
              orElse: () {});
        },
        child: SafeArea(
            child: BlocConsumer<GetCategoriesBloc, GetCategoriesState>(
          listener: (context, state) {
            state.maybeWhen(
                loaded: (entity) {
                  setState(() {
                    // _gender = entity.map((gender) => gender).toList();
                    _gender = entity;
                    // Automatically select the first category
                    if (_gender.isNotEmpty) {
                      _selectedGenderSlug = _gender.first.slug;
                      _categoryId = _gender.first.id ?? 0;

                      // Notify Provider
                      Provider.of<OrderProvider>(context, listen: false)
                          .updateCategoryId(id: _categoryId);

                      // Fetch subcategories for the first category
                      BlocProvider.of<GetSubCategoriesBloc>(context).add(
                          GetSubCategoriesEvent.started(
                              slug: entity.first.slug ?? ""));
                    }
                  });
                },
                orElse: () {});
          },
          builder: (context, state) {
            return state.maybeWhen(
                loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                error: (error) {
                  return Expanded(
                    child: CustomErrorWidget(
                        description: error.userMessage,
                        onRefresh: () {
                          callBlocEvent();
                        }),
                  );
                },
                loaded: (entity) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ElevatedButton(
                                //     onPressed: () {
                                //       print(_category);
                                //     },
                                //     child: Text("data")),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: InkWell(
                                    customBorder: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
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
                                        "Шаг 2 ",
                                        style: AppFonts.w400s16.copyWith(
                                            fontFamily: "SF Pro",
                                            color: const Color(0xff324D19)),
                                      ),
                                      Text(
                                        "из 5",
                                        style: AppFonts.w400s16
                                            .copyWith(fontFamily: "SF Pro"),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Выберите  категорию товара",
                                  style: AppFonts.w700s36.copyWith(
                                      height: 1, fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20.h),
                                  child: Text(
                                    "К какой категории одежды относится ваш товар",
                                    style: AppFonts.w400s16
                                        .copyWith(fontFamily: "SF Pro"),
                                  ),
                                ),
                                ((selectedSubCategory) != null)
                                    ? Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20.h),
                                        child: Chip(
                                          backgroundColor: Colors.white,
                                          label: Text(
                                            selectedSubCategory?.name ?? "",
                                            style: AppFonts.w400s16.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                          deleteIconColor:
                                              AppColors.accentTextColor,
                                          onDeleted: () {
                                            setState(() {
                                              selectedSubCategory == null;
                                            });
                                          },
                                          deleteIcon: Icon(
                                            Icons.close,
                                            size: 20.h,
                                            color: AppColors.accentTextColor,
                                          ),
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                                SizedBox(
                                  width: 177.w,
                                  child: CustomChooseRoleWidget(
                                    text: "Выбрать категории",
                                    onTap: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                    isChoosed: true,
                                  ),
                                ),
                                errorVisible
                                    ? Text(
                                        "Выберите категорию",
                                        style: AppFonts.w400s12
                                            .copyWith(color: Colors.red),
                                      )
                                    : const SizedBox.shrink()
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 30.h,
                          ),
                          child: CustomButton(
                              text: "Дальше",
                              onPressed: () {
                                if (selectedSubCategory == null) {
                                  setState(() {
                                    errorVisible = true;
                                  });
                                } else {
                                  Provider.of<OrderProvider>(context,
                                          listen: false)
                                      .updateProductName(
                                          name:
                                              selectedSubCategory?.name ?? "");

                                  GoRouter.of(context)
                                      .pushNamed("chooseFabricType");
                                }
                              }),
                        )
                      ],
                    ),
                  );
                },
                orElse: () {
                  return const SizedBox.shrink();
                });
          },
        )),
      ),
    );
  }
}

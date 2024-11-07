import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_categories_bloc/get_categories_bloc.dart';
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
  String? _selectedGenderName;
  int? _categoryId;
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
                          setState(() {
                            _selectedGenderSlug = value;
                            final selectedGender = _gender.firstWhere(
                              (element) => element.slug == value,
                            );

                            // Update _selectedGenderName
                            if (selectedGender != null) {
                              _selectedGenderName = selectedGender.name ?? "";
                              _categoryId = selectedGender.id ?? 0;
                              Provider.of<OrderProvider>(context, listen: false)
                                  .updateCategoryId(id: _categoryId);
                            }
                          });
                        });
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
      body: SafeArea(
          child: BlocConsumer<GetCategoriesBloc, GetCategoriesState>(
        listener: (context, state) {
          state.maybeWhen(
              loaded: (entity) {
                setState(() {
                  _gender = entity.map((gender) => gender).toList();

                  final result = entity
                      .map((element) =>
                          element.subcategories) // List<List<Subcategory>?>
                      .expand((subcategoryList) => (subcategoryList ?? []).cast<
                          Subcategory?>()) // Flattening to List<Subcategory>
                      .toList(); // Convert to List<Subcategory>

                  _category = result;
                });
              },
              orElse: () {});
        },
        builder: (context, state) {
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
                        //       print(Provider.of<OrderProvider>(context,
                        //               listen: false)
                        //           .categoryId);
                        //     },
                        //     child: Text("data")),
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
                              height: 0.8, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: Text(
                            "К какой категории одежды относится ваш товар",
                            style:
                                AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                          ),
                        ),
                        ((selectedSubCategory) != null)
                            ? Padding(
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: Chip(
                                  backgroundColor: Colors.white,
                                  label: Text(
                                    selectedSubCategory?.name ?? "",
                                    style: AppFonts.w400s16.copyWith(
                                        color: AppColors.accentTextColor),
                                  ),
                                  deleteIconColor: AppColors.accentTextColor,
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
                        // Padding(
                        //   padding: EdgeInsets.only(bottom: 10.h),
                        //   child: Wrap(
                        //     spacing: 5.w,
                        //     runSpacing: 5.h,
                        //     children: selectedCategories
                        //         .map((element) => Chip(
                        //               backgroundColor: Colors.white,
                        //               label: Text(
                        //                 element?.name ?? "",
                        //                 style: AppFonts.w400s16.copyWith(
                        //                     color: AppColors.accentTextColor),
                        //               ),
                        //               deleteIconColor:
                        //                   AppColors.accentTextColor,
                        //               onDeleted: () {
                        //                 setState(() {
                        //                   selectedCategories.remove(element);
                        //                 });
                        //               },
                        //               deleteIcon: Icon(
                        //                 Icons.close,
                        //                 size: 20.h,
                        //                 color: AppColors.accentTextColor,
                        //               ),
                        //             ))
                        //         .toList(),
                        //   ),
                        // ),
                        SizedBox(
                          width: 177.w,
                          child: CustomChooseRoleWidget(
                            text: "Выбрать категории",
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            isChoosed: true,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                  child: CustomButton(
                      text: "Дальше",
                      onPressed: () {
                        Provider.of<OrderProvider>(context, listen: false)
                            .updateProductName(
                                name: selectedSubCategory?.name ?? "");

                        GoRouter.of(context).pushNamed("chooseFabricType");
                      }),
                )
              ],
            ),
          );
        },
      )),
    );
  }
}

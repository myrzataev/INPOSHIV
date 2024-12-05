import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_categories_bloc/get_categories_bloc.dart';
import 'package:inposhiv/features/survey/presentation/providers/categories_provider.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class ChooseClothCategoryScreen extends StatefulWidget {
  const ChooseClothCategoryScreen({super.key});

  @override
  State<ChooseClothCategoryScreen> createState() =>
      _ChooseSpecializationScreenState();
}

class _ChooseSpecializationScreenState
    extends State<ChooseClothCategoryScreen> {
  List<CategoriesEntity> _gender = [];
  List<Subcategory?> _category = [];
  late ScrollController scrollController = ScrollController();
  Set<Subcategory?> selectedCategories = {};

  String? _selectedGenderSlug; // Selected dropdown value
  String? _selectedGenderName; // Selected dropdown value
  int? __selectedGenderId;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
    callBlocEvent();
    super.initState();
  }

  void callBlocEvent() {
    BlocProvider.of<GetCategoriesBloc>(context)
        .add(const GetCategoriesEvent.getAllCategories());
  }

  @override
  Widget build(BuildContext context) {
    final role = Provider.of<RoleProvider>(context).role;
    bool isCustomer = role == 1;
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
                      hint: const Text("Выберите пол"),
                      isExpanded: true,
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
                            _selectedGenderName = selectedGender.name ?? "";
                            __selectedGenderId = selectedGender.id;
                          }
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
                          bool isCurrentItemInSelectedCategories =
                              selectedCategories.contains(currentItem);
                          return InkWell(
                            onTap: () {
                              setState(() {
                                if (selectedCategories.contains(currentItem)) {
                                  selectedCategories.remove(currentItem);
                                } else {
                                  selectedCategories.add(currentItem);
                                }
                              });
                            },
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Container(
                              height: 40.h,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: isCurrentItemInSelectedCategories
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
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 1,
                                        style: AppFonts.w400s16.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                    ),
                                    isCurrentItemInSelectedCategories
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
                    // _selectedSlug = e
                    _gender = entity.map((gender) => gender).toList();
                    // Assuming `entity` is a List that contains objects with a subcategories property
                    final result = entity
                        .map((element) =>
                            element.subcategories) // List<List<Subcategory>?>
                        .expand((subcategoryList) => (subcategoryList ?? []).cast<
                            Subcategory?>()) // Flattening to List<Subcategory>
                        .toList(); // Convert to List<Subcategory>

                    _category =
                        result; // _gender is now of type List<Subcategory?>
                  });
                },
                orElse: () {});
          },
          builder: (context, state) {
            return state.maybeWhen(
                loaded: (entity) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minWidth: MediaQuery.of(context).size.width,
                          minHeight: MediaQuery.of(context).size.height),
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomSearchWidget(
                                onTap: () {
                                  GoRouter.of(context).pop();
                                },
                                child: SvgPicture.asset(SvgImages.goback)),
                            // const Spacer(),
                            SizedBox(height: 100.h,),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.h),
                              child: Text(
                                isCustomer
                                    ? "Выберите категорию"
                                    : "Какие модели вы шьете чаще всего?",
                                style: AppFonts.w700s36.copyWith(
                                    height: 1, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Wrap(
                                  spacing: 5.w,
                                  runSpacing: 5.h,
                                  children: selectedCategories
                                      .map((element) => Chip(
                                            backgroundColor: Colors.white,
                                            label: Text(
                                              element?.name ?? "",
                                              style: AppFonts.w400s16.copyWith(
                                                  color:
                                                      AppColors.accentTextColor),
                                            ),
                                            deleteIconColor:
                                                AppColors.accentTextColor,
                                            onDeleted: () {
                                              setState(() {
                                                selectedCategories
                                                    .remove(element);
                                              });
                                            },
                                            deleteIcon: Icon(
                                              Icons.close,
                                              size: 20.h,
                                              color: AppColors.accentTextColor,
                                            ),
                                          ))
                                      .toList(),
                                ),
                              ),
                            ),
                            // ElevatedButton(
                            //     onPressed: () {
                            //       print(Provider.of<CategoriesProvider>(context,
                            //               listen: false)
                            //           .selectedCategoryId);
                            //     },
                            //     child: Text("data")),
                            Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: SizedBox(
                                  width: 177.w,
                                  child: Builder(
                                    builder: (context) =>
                                        CustomChooseRoleWidget(
                                      text: "Выбрать категории",
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      isChoosed: true,
                                    ),
                                  )),
                            ),
                            const Spacer(),
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 20.h, top: 20.h),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(20.r),
                                  onTap: (selectedCategories.isEmpty &&
                                          (_selectedGenderSlug?.isEmpty ??
                                              false))
                                      ? null
                                      : () {
                                          Provider.of<CategoriesProvider>(
                                                  context,
                                                  listen: false)
                                              .updateValues(
                                                  id: __selectedGenderId ?? 0,
                                                  valueForSlug:
                                                      _selectedGenderSlug ??
                                                          "",
                                                  valueForSubcategoriesList:
                                                      selectedCategories,
                                                  categoryName:
                                                      _selectedGenderName ??
                                                          "");
                                          router.pushNamed(
                                              "specifyMonthlySalesScreen");
                                        },
                                  child: Container(
                                    width: double.infinity,
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                        color: selectedCategories.isEmpty
                                            ? AppColors.containersGrey
                                            : AppColors.buttonGreenColor,
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                    child: Center(
                                      child: Text(
                                        "Дальше",
                                        style: AppFonts.w400s16.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                    ),
                                  ),
                                )),
                             
                          ],
                        ),
                      ),
                    ),
                  );
                },
                loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                error: (error) => Expanded(
                      child: CustomErrorWidget(
                          description: error.userMessage,
                          onRefresh: () {
                            callBlocEvent();
                          }),
                    ),
                orElse: () {
                  return const SizedBox.shrink();
                });
          },
        ),
      ),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/blocs/manufacturer_bloc/manufacturer_bloc.dart';
import 'package:inposhiv/features/survey/data/models/job_priorities_model.dart';
import 'package:inposhiv/features/survey/data/models/manufacturer_survey_model.dart';
import 'package:inposhiv/features/survey/domain/repositories/send_manufacturer_survery_repo.dart';
import 'package:inposhiv/features/survey/presentation/blocs/send_manufacturers_survey_bloc/send_manufacturers_survey_bloc.dart';
import 'package:inposhiv/features/survey/presentation/providers/categories_provider.dart';
import 'package:inposhiv/features/survey/presentation/providers/priorities_provider.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AboutCompanyScreen extends StatefulWidget {
  const AboutCompanyScreen({super.key});

  @override
  State<AboutCompanyScreen> createState() => _AboutCompanyScreenState();
}

class _AboutCompanyScreenState extends State<AboutCompanyScreen> {
  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final preferences = locator<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    List<XFile>? images =
        Provider.of<PhotoProvider>(context, listen: true).selectedPhotos;
    final manufacturersPriorities =
        Provider.of<PrioritiesProvider>(context, listen: true)
            .selectedManufacturerPriorities;
    final monthProductsVolume =
        Provider.of<PrioritiesProvider>(context, listen: true)
            .monthProductsVolume;
    final categories = Provider.of<CategoriesProvider>(context, listen: true)
        .subcategoriesList;
    // final vm = Provider.of<OrderProvider>(context, listen: true);
    final vm = Provider.of<CategoriesProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                            "Шаг 2 ",
                            style: AppFonts.w400s16.copyWith(
                                fontFamily: "SF Pro",
                                color: const Color(0xff324D19)),
                          ),
                          Text(
                            "из 2",
                            style:
                                AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Напишите небольшое описание компании",
                      style: AppFonts.w700s36
                          .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        "В описании должно быть не более 110 символов",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                          child: TextFormField(
                            controller: controller,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            style: AppFonts.w400s16,
                            decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.borderColor))),
                            validator: (value) {
                              if ((value?.length ?? 0) < 110) {
                                return "В описании должно быть не более 110 символов";
                              }
                              return null;
                            },
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: CustomButton(
                  text: "Дальше",
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    sendData(
                        manufacturersPriorities: manufacturersPriorities ?? {},
                        images: images,
                        monthProductsVolume: monthProductsVolume ?? "",
                        clothingCategories: categories!
                            .where((e) => e != null) // Filter out null values
                            .map((e) => e!) // Unwrap non-null values
                            .toList(),
                        vm: vm,
                        manufacturerPrioritiesList: manufacturersPriorities!
                            // ignore: unnecessary_null_comparison
                            .where((e) => e != null)
                            .map((e) => e)
                            .toList());
                    // GoRouter.of(context).pushNamed("profileReady",
                    //     queryParameters: {"description": controller.text});
                    // }
                  }),
            )
          ],
        ),
      )),
    );
  }

  void sendData(
      {required Set<JobPrioritiesModel> manufacturersPriorities,
      required List<XFile>? images,
      required String monthProductsVolume,
      required List clothingCategories,
      required List manufacturerPrioritiesList,
      required CategoriesProvider vm}) async {
    BlocProvider.of<SendManufacturersSurveyBloc>(context)
        .add(SendManufacturersSurveyEvent.sendData(data: {
      "clothingCategoriesList": {
        "name": vm.selectedCategoryName,
        "id": vm.selectedCategoryId,
        "slug" : vm.selectedSlug,
        "subcategories": clothingCategories.map((element) =>
        // print("runtime type is :${element.id.runtimeType}"))
            ClothingCategoriesList(
                    name: element.name, id: element.id, slug: element.slug)
                .toJson())
      },
      "manufacturerPrioritiesList":
          manufacturersPriorities.map((element) => ClothingCategoriesList(
                name: element.name,
                id: element.id,
                slug: element.slug,
              ).toJson()),
      "monthProductsVolume": int.tryParse(monthProductsVolume),
      // "photos": await Future.wait(images!.map((image) async {
      //   return await MultipartFile.fromFile(image.path, filename: image.name);
      // }).toList()),
    }, manufacturerId: preferences.getString("customerId") ?? ""));
  }
}

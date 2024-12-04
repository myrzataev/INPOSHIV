import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:inposhiv/features/survey/data/models/customer_survey_model.dart';
import 'package:inposhiv/features/survey/data/models/job_priorities_model.dart'
    as jobPrioritiesModel;
import 'package:inposhiv/features/survey/data/models/customer_survey_model.dart'
    as customer_survey_response_model;
import 'package:inposhiv/features/survey/presentation/blocs/get_job_priorities_bloc/get_job_priorities_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/send_customer_survey_data_bloc/send_customer_survey_data_bloc.dart';
import 'package:inposhiv/features/survey/presentation/providers/categories_provider.dart';
import 'package:inposhiv/features/survey/presentation/providers/priorities_provider.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:inposhiv/services/showdialog.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImportantThingsListScreen extends StatefulWidget {
  final String monthSalesVolume;
  const ImportantThingsListScreen({super.key, required this.monthSalesVolume});

  @override
  State<ImportantThingsListScreen> createState() =>
      _ImportantThingsListScreenState();
}

class _ImportantThingsListScreenState extends State<ImportantThingsListScreen> {
  List<jobPrioritiesModel.JobPrioritiesModel> listData = [];

  List<String> listDataForCreator = [
    "Надежность",
    "Положительные отзывы",
    "Высокий рейтинг",
    "Белая оплата (через р/с) + НДС",
    "Оплата в срок",
  ];

  final preferences = locator<SharedPreferences>();
  TextEditingController controller = TextEditingController();
  Set<jobPrioritiesModel.JobPrioritiesModel> selectedValues = {};
  bool? isCustomerForEvent;
  void callBlocEvent() {
    BlocProvider.of<GetJobPrioritiesBloc>(context).add(
        GetJobPrioritiesEvent.getJobPriorities(
            isCustomer: isCustomerForEvent ?? false));
  }

  @override
  void initState() {
    callBlocEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isCustomer = preferences.getBool("isCustomer") ?? true;

    setState(() {
      isCustomerForEvent = isCustomer;
    });
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            const Spacer(),
            Text(
              isCustomer
                  ? "Что для вас важно при работе с производителями"
                  : "Что для вас важно при работе с поставщиками",
              style: AppFonts.w700s36
                  .copyWith(height: 1, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 30.h),
              child: Text(
                "Можно выбрать несколько вариантов",
                style: AppFonts.w400s16,
              ),
            ),
            Expanded(
              child: BlocConsumer<GetJobPrioritiesBloc, GetJobPrioritiesState>(
                  listener: (context, state) {
                state.maybeWhen(
                    loaded: (model) {
                      setState(() {
                        listData = model;
                      });
                    },
                    orElse: () {});
              }, builder: (context, state) {
                return state.maybeWhen(
                    loading: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                    loaded: (model) {
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          final currentObject = listData[index];
                          return InkWell(
                            onTap: () {
                              setState(() {
                                if (selectedValues.contains(currentObject)) {
                                  selectedValues.remove(currentObject);
                                } else {
                                  selectedValues.add(currentObject);
                                }
                              });
                            },
                            child: ListTile(
                              leading: Transform.scale(
                                scale: 1.5, // Adjust the checkbox scale
                                child: Checkbox(
                                  activeColor: AppColors.buttonGreenColor,
                                  shape: const CircleBorder(
                                      side: BorderSide(
                                    color: AppColors.borderColor,
                                  )),
                                  value:
                                      selectedValues.contains(listData[index]),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      if (selectedValues
                                          .contains(currentObject)) {
                                        selectedValues.remove(currentObject);
                                      } else {
                                        selectedValues.add(currentObject);
                                      }
                                    });
                                  },
                                ),
                              ),
                              title: Text(
                                // (isCustomer ? listData : listDataForCreator)[index],
                                listData[index].name ?? "",

                                style: AppFonts.w400s16
                                    .copyWith(color: AppColors.accentTextColor),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 1.h,
                          ); // Empty space between list items
                        },
                        itemCount:
                            (isCustomer ? listDataForCreator : listData).length,
                      );
                    },
                    error: (error) => Expanded(
                        child: CustomErrorWidget(
                            description: error.userMessage,
                            onRefresh: () {
                              callBlocEvent();
                            })),
                    orElse: () {
                      return const Text("Unexpected Error");
                    });
              }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: CustomTextForm(
                hintText: isCustomer ? "Ваш вариант" : "Ваши комментарии",
                controller: controller,
                textAlign: TextAlign.start,
              ),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       print(Provider.of<PrioritiesProvider>(context, listen: false)
            //           .selectedManufacturerPriorities);
            //                 print(Provider.of<PrioritiesProvider>(context, listen: false)
            //           .monthProductsVolume);
            //     },
            //     child: Text("data")),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, top: 37.h),
              child: CustomButton(
                text: "Дальше",
                onPressed: selectedValues.isNotEmpty
                    ? () {
                        isCustomer
                            ? BlocProvider.of<SendCustomerSurveyDataBloc>(
                                    context)
                                .add(SendCustomerSurveyDataEvent.senData(
                                    userId:
                                        preferences.getString("customerId") ??
                                            "",
                                    customerSurveyData: CustomerSurveyModel(
                                            clothingCategoriesList: [
                                          ClothingCategoriesList(
                                              name: Provider.of<CategoriesProvider>(
                                                          context,
                                                          listen: false)
                                                      .selectedCategoryName ??
                                                  "",
                                              slug:
                                                  Provider.of<CategoriesProvider>(
                                                              context,
                                                              listen: false)
                                                          .selectedSlug ??
                                                      "",
                                              subcategories:
                                                  Provider.of<CategoriesProvider>(
                                                              context,
                                                              listen: false)
                                                          .subcategoriesList
                                                          ?.map(
                                                              (element) =>
                                                                  customer_survey_response_model
                                                                      .ClothingCategoriesList(
                                                                    name: Provider.of<CategoriesProvider>(context,
                                                                                listen: false)
                                                                            .selectedCategoryName ??
                                                                        "",
                                                                    slug: Provider.of<CategoriesProvider>(context,
                                                                                listen: false)
                                                                            .selectedSlug ??
                                                                        "",
                                                                  ))
                                                          .toList() ??
                                                      [])
                                        ],
                                            monthSalesVolume: int.tryParse(
                                                    widget.monthSalesVolume) ??
                                                0,
                                            customerPrioritiesList:
                                                selectedValues
                                                    .map((model) =>
                                                        ClothingCategoriesList(
                                                          id: model.id,
                                                          slug:
                                                              model.slug ?? "",
                                                          name:
                                                              model.name ?? "",
                                                        ))
                                                    .toList())
                                        .toJson()))
                            : Provider.of<PrioritiesProvider>(context,
                                    listen: false)
                                .updateManufacturerPriorities(
                                    newValue: selectedValues);
                        Provider.of<PrioritiesProvider>(context, listen: false)
                            .updateMonthProductsVolume(
                                newValue: widget.monthSalesVolume);
                        GoRouter.of(context).pushNamed("endOfSurveyScreen");
                        // GoRouter.of(context).pushNamed("endOfSurveyScreen");
                      }
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(seconds: 2),
                            backgroundColor: Colors.white,
                            content: Text(
                              "Выберите вариант",
                              style: AppFonts.w400s14
                                  .copyWith(color: Colors.red),
                            )));
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

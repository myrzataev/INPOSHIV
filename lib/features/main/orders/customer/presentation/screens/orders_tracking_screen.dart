import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/confirm_tracking_stage_bloc/confirm_tracking_stage_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/order_tracking_bloc/order_tracking_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/send_feed_back_bloc/send_feed_back_bloc_bloc.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/end_of_tracking.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/feedback_dialog.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/part2stage6.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage1.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage2.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage3.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage4.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage5.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage6.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage7.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage7part2.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/end_of_tracking_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage1_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage2_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage3_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage4_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage5_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage6_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage7_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage8_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage9_for_manufacturer.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/date_time_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:inposhiv/services/showdialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrdersTrackingScreen extends StatefulWidget {
  final TrackingModel? model;
  final String? activeStage;
  final String? invoiceUuid;
  const OrdersTrackingScreen(
      {super.key, required this.model, this.activeStage, this.invoiceUuid});

  @override
  State<OrdersTrackingScreen> createState() => _OrdersTrackingScreenState();
}

class _OrdersTrackingScreenState extends State<OrdersTrackingScreen> {
  PageController _pageController = PageController();
  List<TextEditingController> controllers = [];
  String? paymentCheck;
  String? paymentCheckFileName;
  final preferences = locator<SharedPreferences>();
  bool? isCustomer;
  int currentIndex = 0;
  // int activeStage = 0;
  DateTimeService dateTimeService = DateTimeService();
  TrackingModel? trackingModelLocal;
  double? deadlineRating;
  double? qualityRating;
  double? reliableRating;
  double? customerRating;
  TextEditingController commentController = TextEditingController();

  @override
  void initState() {
    print("invoice id from widget is ${widget.invoiceUuid}");
    isCustomer = preferences.getBool("isCustomer");
    // trackingModel = widget.model;
    // activeStage = widget.model.activeStageId ?? 0;
    _pageController = PageController(
        initialPage: int.tryParse(widget.activeStage ?? "0") ?? 0);
    final widgetCount = (isCustomer ?? true) ? 3 : 8;
    if (widget.model == null && widget.invoiceUuid != null) {
      print("this logic is working");
      geTrackingDetails();
    } else {
      trackingModelLocal = widget.model;
      print("this logic is not working");
    }
    controllers = List.generate(widgetCount, (_) => TextEditingController());
    super.initState();
  }

  geTrackingDetails() {
    print("invoice is is ${widget.invoiceUuid}");
    BlocProvider.of<OrderTrackingBloc>(context).add(
        OrderTrackingEvent.orderTracking(invoiceId: widget.invoiceUuid ?? ""));
  }

  @override
  void dispose() {
    _pageController.dispose();
    commentController.dispose();
    controllers.map((element) => element.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widgets =
        (isCustomer ?? true) ? customerWidgets() : manufacturerWidgets();

    return BlocListener<OrderTrackingBloc, OrderTrackingState>(
      listener: (context, state) {
        state.maybeWhen(
            loaded: (model) {
              setState(() {
                trackingModelLocal = widget.model ?? model;
                currentIndex = (trackingModelLocal?.activeStageId ?? 0) - 1;

                _pageController.jumpToPage(currentIndex);
              });
            },
            orElse: () {});
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ElevatedButton(onPressed: (){
              // print(reliableRating);
              // }, child: Text("data")),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: CustomSearchWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: SvgPicture.asset(SvgImages.goback)),
              ),
              BlocListener<SendFeedBackBlocBloc, SendFeedBackBlocState>(
                listener: (context, state) {
                  state.maybeWhen(
                      loading: () => Showdialog.showLoaderDialog(context),
                      loaded: () {
                        Navigator.pop(context);
                        Future.delayed(const Duration(milliseconds: 300), () {
                          showDialog(
                              // ignore: use_build_context_synchronously
                              context: context,
                              builder: (context) => CustomDialog(
                                  title: "Отчет отправлен",
                                  description:
                                      "Мы уведомим вас при его подтверждении",
                                  button: CustomButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      text: "Закрыть")));
                        });
                      },
                      error: () {
                        Navigator.pop(context);
                        Future.delayed(const Duration(milliseconds: 300), () {
                          Showdialog.showErrorDialog(
                              context: context,
                              title: "Ошибка",
                              message: "Не удалось отправить");
                        });
                      },
                      orElse: () {});
                },
                child: BlocListener<ConfirmTrackingStageBloc,
                    ConfirmTrackingStageState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        loading: () => Showdialog.showLoaderDialog(context),
                        loaded: (model) {
                          router.pop();

                          router.goNamed("detailedTrackingScreen",
                              queryParameters: {
                                "invoiceId": model.invoiceUuid
                              });
                          Future.delayed(const Duration(milliseconds: 300), () {
                            if (!mounted) return;
                            _showSuccessDialog();
                          });
                        },
                        error: (errorText) {
                          router.pop();
                          Showdialog.showErrorDialog(
                              context: context,
                              title: "Подтверждение отправлено",
                              message: "Вы уже подтвердили отчет");
                        },
                        orElse: () {});
                  },
                  child: Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      physics: currentIndex <=
                              (trackingModelLocal?.activeStageId ?? 0)
                          ? const ClampingScrollPhysics() // Disable scrolling after the active stage
                          : const NeverScrollableScrollPhysics(), // Allow scrolling before the active stage
                      itemCount: trackingModelLocal?.activeStageId ?? 0,
                      itemBuilder: (context, index) {
                        return widgets[index];
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => CustomDialog(
        title: "Отчет отправлен",
        description: "Мы уведомим вас, когда вторая сторона подтвердит его",
        button: CustomButton(
          onPressed: () {
            Navigator.pop(context);
          },
          text: "Закрыть",
        ),
      ),
    );
  }

  void confirmTrackingStage({
    required String invoiceUuid,
    required String orderId,
    required String activeStage,
    List<NamedFile>? allCheckFiles, // Nullable
    required bool stageAccepted,
    String? comment, // Nullable
  }) async {
    // Prepare FormData
    List<MultipartFile> allChecksMultipart = [];
    if (allCheckFiles != null) {
      for (var namedFile in allCheckFiles) {
        allChecksMultipart.add(
          await MultipartFile.fromFile(
            namedFile.file.path,
            filename: namedFile.name, // Use the custom file name
          ),
        );
      }
    }

    // Add files only if present
    FormData formData = FormData.fromMap({
      if (allChecksMultipart.isNotEmpty) "allChecks": allChecksMultipart,
    });

    // Prepare query parameters
    Map<String, dynamic> queryParameters = {
      "invoiceUuid": invoiceUuid,
      "orderId": orderId,
      "activeStage": activeStage,
      "stageAccepted": stageAccepted,
      if (comment != null)
        "comment": comment, // Will be null if comment is null
    };

    // Debugging
    for (var field in formData.fields) {
      print('Field: ${field.key} = ${field.value}');
    }

    for (var file in formData.files) {
      print('File: ${file.key} = ${file.value.filename}');
    }

    print('Query Parameters: $queryParameters');

    // API call using BlocProvider
    BlocProvider.of<ConfirmTrackingStageBloc>(context).add(
      ConfirmTrackingStageEvent.confirmStage(
        body: formData,
        queryParameters: queryParameters,
      ),
    );
  }

  List<Widget> customerWidgets() {
    return [
      Stage1(
          allComments: filterComments(
              allComents: trackingModelLocal?.allComments,
              stage: "PARTIAL_PAYMENT"),
          allDocumentsOfStage: filterFileUrls(
              allFiles: trackingModelLocal?.allChecks,
              stage: "PARTIAL_PAYMENT",
              trackingModelLocal: trackingModelLocal),
          onFilePicked: (filePath, fileName) {
            setState(() {
              paymentCheck = filePath;
              paymentCheckFileName = fileName;
            });
          },
          onImagePickedFromCamera: (imagePath, fileName) {
            setState(() {
              paymentCheck = imagePath;
              paymentCheckFileName = fileName;
            });
          },
          onImagePickedFromGallery: (imagePath, fileName) {
            setState(() {
              paymentCheck = imagePath;
              paymentCheckFileName = fileName;
            });
          },
          controller: controllers[0],
          onTap: () {
            if (paymentCheck != null) {
              confirmTrackingStage(
                invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
                orderId: trackingModelLocal?.orderId?.toString() ?? "",
                activeStage: "PARTIAL_PAYMENT",
                allCheckFiles: [
                  NamedFile(
                      file: File(paymentCheck ?? ""),
                      name: paymentCheckFileName ?? "")
                ],
                stageAccepted: false,
                comment: controllers[0].text,
              );
            } else {
              dialogShow();
            }
          },
          attachDocument: () async {},
          onTapForCheck: () {
            paymentCheck != null
                ? router.pushNamed("seeDoc",
                    queryParameters: {"path": paymentCheck}, extra: false)
                : null;
          },
          check: paymentCheck != null
              ? PlatformFile(
                  path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
              : null),
      Stage2ForCustomer(
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "FABRIC_PURCHASE_AND_CUTTING"),
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "FABRIC_PURCHASE_AND_CUTTING",
            trackingModelLocal: trackingModelLocal),
        currentIndexOfData: 10,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "FABRIC_PURCHASE_AND_CUTTING",
            stageAccepted: true,
          );
        },
      ),
      Stage3ForCustomer(
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments, stage: "SEWING"),
        currentIndexOfData: 20,
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "SEWING",
            trackingModelLocal: trackingModelLocal),
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "SEWING",
            stageAccepted: true,
            // comment: 'hellloooo',
          );
          // if (currentIndex < 1) {
          //   _pageController.nextPage(
          //     duration: const Duration(milliseconds: 300),
          //     curve: Curves.easeInOut,
          //   );
          // } else {}
        },
      ),
      Stage4ForCustomer(
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "QUALITY_CONTROL"),
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "QUALITY_CONTROL",
            trackingModelLocal: trackingModelLocal),
        currentIndexOfData: 30,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "QUALITY_CONTROL",
            stageAccepted: true,
          );
        },
      ),
      Stage5ForCustomer(
        currentIndexOfData: 40,
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "READY_FOR_SHIPMENT"),
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "READY_FOR_SHIPMENT",
            trackingModelLocal: trackingModelLocal),
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "READY_FOR_SHIPMENT",
            stageAccepted: true,
          );
        },
      ),
      Stage6ForCustomer(
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments, stage: "SHIPPED"),
        currentIndexOfData: 50,
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "SHIPPED",
            trackingModelLocal: trackingModelLocal),
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "SHIPPED",
            stageAccepted: true,
          );
        },
      ),
      Stage7ForCustomer(
          onFilePicked: (filePath, fileName) {
            setState(() {
              paymentCheck = filePath;
              paymentCheckFileName = fileName;
            });
          },
          onImagePickedFromCamera: (imagePath, fileName) {
            setState(() {
              paymentCheck = imagePath;
              paymentCheckFileName = fileName;
            });
          },
          onImagePickedFromGallery: (imagePath, fileName) {
            setState(() {
              paymentCheck = imagePath;
              paymentCheckFileName = fileName;
            });
          },
          controller: controllers[1],
          allComments: filterComments(
              allComents: trackingModelLocal?.allComments,
              stage: "FINAL_PAYMENT"),
          allDocumentsOfStage: filterFileUrls(
              allFiles: trackingModelLocal?.allChecks,
              stage: "FINAL_PAYMENT",
              trackingModelLocal: trackingModelLocal),
          onTap: () {
            if (paymentCheck != null) {
              confirmTrackingStage(
                invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
                orderId: trackingModelLocal?.orderId?.toString() ?? "",
                activeStage: "FINAL_PAYMENT",
                allCheckFiles: [
                  NamedFile(
                      file: File(paymentCheck ?? ""),
                      name: paymentCheckFileName ?? "")
                ],
                stageAccepted: false,
                comment: controllers[1].text,
              );
            } else {
              dialogShow();
            }
          },
          onTapForCheck: () {
            paymentCheck != null
                ? router.pushNamed("seeDoc",
                    queryParameters: {"path": paymentCheck}, extra: false)
                : null;
          },
          documents: paymentCheck != null
              ? PlatformFile(
                  path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
              : null),
      Stage8ForCustomer(
        onFilePicked: (filePath, fileName) {
          setState(() {
            paymentCheck = filePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromCamera: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromGallery: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        controller: controllers[2],
        currentIndexOfData: 55,
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "ORDER_RECEIVED",
            trackingModelLocal: trackingModelLocal),
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "ORDER_RECEIVED",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: true,
            comment: controllers[1].text,
          );
        },
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "ORDER_RECEIVED"),
      ),
      Stage9Customer(
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "ORDER_CLOSED",
            stageAccepted: false,
          );
        },
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "ORDER_CLOSED",
            trackingModelLocal: trackingModelLocal),
        controller: TextEditingController(),
        onDeadlineRating: (rating) => (setState(() {
          deadlineRating = rating;
        })),
        onQualityRating: (rating) => (setState(() {
          qualityRating = rating;
        })),
        onReliableRating: (rating) => (setState(() {
          reliableRating = rating;
        })),
        onFeedBackButtonPressed: () => (showDialog(
            context: context,
            builder: (context) => CustomFeedbackDialog(
                  button: CustomButton(
                    text: "Отправить",
                    onPressed: () {
                      BlocProvider.of<SendFeedBackBlocBloc>(context).add(
                          SendFeedBackBlocEvent.sendFeedBackToManufacturer(
                              manufacturerUuid:
                                  trackingModelLocal?.manufacturerUuid ?? "",
                              customerUuid:
                                  trackingModelLocal?.customerUuid ?? "",
                              body: {
                            "customerUuid": trackingModelLocal?.customerUuid,
                            "manufacturerUuid":
                                trackingModelLocal?.manufacturerUuid,
                            "reviewText": commentController.text,
                            "createdAt": DateTime.now().toString(),
                            "rating": reliableRating?.toInt(),
                            "customerName": preferences.getString("userName")
                          }));
                    },
                  ),
                  title: "Напишите ваш отзыв о заказе",
                  controller: commentController,
                ))),
      ),
      const EndOfTracking()
    ];
  }

  List<Widget> manufacturerWidgets() {
    return [
      Stage1ForManufacturer(
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "PARTIAL_PAYMENT",
            trackingModelLocal: trackingModelLocal),
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "PARTIAL_PAYMENT"),
        onTapForTextButton: () {},
        onTapForCheck: () {
          final List<String> fullDocUrls = trackingModelLocal?.allChecks
                  ?.map((url) => "${UrlRoutes.baseUrl}${url.fileUrl}")
                  .toList() ??
              [];
          final List<String> urls = filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "PARTIAL_PAYMENT",
            trackingModelLocal: trackingModelLocal,
          );

          router.pushNamed("seeDoc",
              extra: false, queryParameters: {"docUrl": urls});
        },
        controller: controllers[0],
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "PARTIAL_PAYMENT",
            allCheckFiles: null,
            stageAccepted: true,
          );
        },
      ),
      Stage2ForManufacturer(
        onFilePicked: (filePath, fileName) {
          setState(() {
            paymentCheck = filePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromCamera: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromGallery: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onTapForCheck: () {
          paymentCheck != null
              ? router.pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck}, extra: false)
              : null;
        },
        documents: paymentCheck != null
            ? PlatformFile(
                path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
            : null,
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "FABRIC_PURCHASE_AND_CUTTING",
            trackingModelLocal: trackingModelLocal),
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "FABRIC_PURCHASE_AND_CUTTING"),
        currentIndexOfData: 10,
        controller: controllers[1],
        attachDocument: () async {
          setState(() {
            // paymentCheck = result;
          });
        },
        onTap: () {
          if (paymentCheck != null) {
            confirmTrackingStage(
              invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
              orderId: trackingModelLocal?.orderId?.toString() ?? "",
              activeStage: "FABRIC_PURCHASE_AND_CUTTING",
              allCheckFiles: [
                NamedFile(
                    file: File(paymentCheck ?? ""),
                    name: paymentCheckFileName ?? "")
              ],
              stageAccepted: false,
              comment: controllers[1].text,
            );
          } else {
            dialogShow();
          }
        },
      ),
      Stage3ForManufacturer(
        allFiles: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "SEWING",
            trackingModelLocal: trackingModelLocal),
        onFilePicked: (filePath, fileName) {
          setState(() {
            paymentCheck = filePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromCamera: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromGallery: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments, stage: "SEWING"),
        controller: controllers[2],
        currentIndexOfData: 20,
        onTapForCheck: () {
          paymentCheck != null
              ? router.pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck}, extra: false)
              : null;
        },
        documents: paymentCheck != null
            ? PlatformFile(
                path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
            : null,
        onTap: () {
          if (paymentCheck != null) {
            confirmTrackingStage(
              invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
              orderId: trackingModelLocal?.orderId?.toString() ?? "",
              activeStage: "SEWING",
              allCheckFiles: [
                NamedFile(
                    file: File(paymentCheck ?? ""),
                    name: paymentCheckFileName ?? "")
              ],
              stageAccepted: false,
              comment: controllers[2].text,
            );
          } else {
            dialogShow();
          }
        },
      ),
      Stage4ForManufacturer(
        onFilePicked: (filePath, fileName) {
          setState(() {
            paymentCheck = filePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromCamera: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromGallery: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onTapForCheck: () {
          paymentCheck != null
              ? router.pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck}, extra: false)
              : null;
        },
        documents: paymentCheck != null
            ? PlatformFile(
                path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
            : null,
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "QUALITY_CONTROL",
            trackingModelLocal: trackingModelLocal),
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "QUALITY_CONTROL"),
        controller: controllers[3],
        currentIndexOfData: 30,
        onTap: () {
          if (paymentCheck != null) {
            confirmTrackingStage(
              invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
              orderId: trackingModelLocal?.orderId?.toString() ?? "",
              activeStage: "QUALITY_CONTROL",
              allCheckFiles: [
                NamedFile(
                    file: File(paymentCheck ?? ""),
                    name: paymentCheckFileName ?? "")
              ],
              stageAccepted: false,
              comment: controllers[3].text,
            );
          } else {
            dialogShow();
          }
        },
      ),
      Stage5ForManufacturer(
        onFilePicked: (filePath, fileName) {
          setState(() {
            paymentCheck = filePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromCamera: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromGallery: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "READY_FOR_SHIPMENT",
            trackingModelLocal: trackingModelLocal),
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "READY_FOR_SHIPMENT"),
        controller: controllers[4],
        currentIndexOfData: 40,
        onTapForCheck: () {
          paymentCheck != null
              ? router.pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck}, extra: false)
              : null;
        },
        documents: paymentCheck != null
            ? PlatformFile(
                path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
            : null,
        onTap: () async {
          if (paymentCheck != null) {
            confirmTrackingStage(
              invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
              orderId: trackingModelLocal?.orderId.toString() ?? "",
              activeStage: "READY_FOR_SHIPMENT",
              allCheckFiles: [
                NamedFile(
                    file: File(paymentCheck ?? ""),
                    name: paymentCheckFileName ?? "")
              ],
              stageAccepted: false,
              comment: controllers[4].text,
            );
          } else {
            dialogShow();
          }
        },
      ),
      Stage6ForManufacturer(
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments, stage: "SHIPPED"),
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "SHIPPED",
            trackingModelLocal: trackingModelLocal),
        onFilePicked: (filePath, fileName) {
          setState(() {
            paymentCheck = filePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromCamera: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        onImagePickedFromGallery: (imagePath, fileName) {
          setState(() {
            paymentCheck = imagePath;
            paymentCheckFileName = fileName;
          });
        },
        controller: controllers[5],
        currentIndexOfData: 50,
        onTapForCheck: () {
          paymentCheck != null
              ? router.pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck}, extra: false)
              : null;
        },
        documents: paymentCheck != null
            ? PlatformFile(
                path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
            : null,
        onTap: () {
          if (paymentCheck != null) {
            confirmTrackingStage(
              invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
              orderId: trackingModelLocal?.orderId.toString() ?? "",
              activeStage: "SHIPPED",
              allCheckFiles: [
                NamedFile(
                    file: File(paymentCheck ?? ""),
                    name: paymentCheckFileName ?? "")
              ],
              stageAccepted: false,
              comment: controllers[5].text,
            );
          } else {
            dialogShow();
          }

          // if (currentIndex < 1) {
          //   _pageController.nextPage(
          //     duration: const Duration(milliseconds: 300),
          //     curve: Curves.easeInOut,
          //   );
          // } else {}
        },
      ),
      Stage7ForManufacturer(
        onTapForCheck: () {
          final List<String> fullDocUrls = trackingModelLocal?.allChecks
                  ?.map((url) => "${UrlRoutes.baseUrl}${url.fileUrl}")
                  .toList() ??
              [];

          GoRouter.of(context).pushNamed("seeDoc",
              queryParameters: {
                "path": paymentCheck,
                "docUrl": fullDocUrls.first
              },
              extra: true);
        },
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "FINAL_PAYMENT",
            trackingModelLocal: trackingModelLocal),
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "FINAL_PAYMENT"),
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "FINAL_PAYMENT",
            stageAccepted: true,
          );
        },
      ),
      Stage8ForManufacturer(
        currentIndexOfData: 70,
        onTap: () {
          if (paymentCheck != null) {
            confirmTrackingStage(
              invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
              orderId: trackingModelLocal?.orderId?.toString() ?? "",
              activeStage: "ORDER_RECEIVED",
              stageAccepted: false,
            );
          } else {
            dialogShow();
          }
        },
        onTapForAct: () {
          paymentCheck != null
              ? router.pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck}, extra: false)
              : null;
        },
        documents: paymentCheck != null
            ? PlatformFile(
                path: paymentCheck, name: paymentCheckFileName ?? "", size: 0)
            : null,
        allComments: filterComments(
            allComents: trackingModelLocal?.allComments,
            stage: "ORDER_RECEIVED"),
        allDocumentsOfStage: filterFileUrls(
            allFiles: trackingModelLocal?.allChecks,
            stage: "ORDER_RECEIVED",
            trackingModelLocal: trackingModelLocal),
      ),
      Stage9ForManufacturer(
        currentIndexOfData: 70,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModelLocal?.invoiceUuid ?? "",
            orderId: trackingModelLocal?.orderId?.toString() ?? "",
            activeStage: "ORDER_CLOSED",
            stageAccepted: true,
          );
        },
        onFeedBackButtonPressed: () => (showDialog(
            context: context,
            builder: (context) => CustomFeedbackDialog(
                  button: CustomButton(
                    text: "Отправить",
                    onPressed: () {
                      BlocProvider.of<SendFeedBackBlocBloc>(context).add(
                          SendFeedBackBlocEvent.sendFeedBackToCustomer(
                              manufacturerUuid:
                                  trackingModelLocal?.manufacturerUuid ?? "",
                              customerUuid:
                                  trackingModelLocal?.customerUuid ?? "",
                              body: {
                            "customerUuid": trackingModelLocal?.customerUuid,
                            "manufacturerUuid":
                                trackingModelLocal?.manufacturerUuid,
                            "reviewText": commentController.text,
                            "createdAt": DateTime.now().toString(),
                            "rating": reliableRating?.toInt(),
                            "customerName": preferences.getString("userName")
                          }));
                    },
                  ),
                  title: "Оставьте отзыв о заказчике",
                  controller: commentController,
                ))),
        onQualityRating: (rating) => (setState(() {
          customerRating = rating;
        })),
      ),
      const EndOfTrackingForManufacturer()
    ];
  }

  List<Map<String, String?>> filterComments(
      {required List<AllC>? allComents, required String stage}) {
    // Return an empty list if allComents is null
    if (allComents == null) {
      return [];
    }

    List<Map<String, String?>> filteredList = allComents
        .where((comment) => comment.orderStage == stage)
        .map((element) => {
              "comment": element.content,
              "date": dateTimeService.formatDate(element.createdAt.toString()),
            })
        .toList();
    return filteredList;
  }

  List<String> filterFileUrls({
    required List<AllC>? allFiles,
    required String stage,
    required TrackingModel? trackingModelLocal,
  }) {
    // Filter and normalize file URLs from allFiles based on the stage
    List<String> filteredUrls = allFiles
            ?.where((comment) => comment.orderStage == stage) // Filter by stage
            .map((element) {
          final fileUrl = element.fileUrl ?? '';
          // Ensure the base URL is prefixed
          return fileUrl.startsWith("http")
              ? fileUrl
              : "${UrlRoutes.baseUrl}$fileUrl";
        }).toList() ??
        [];

    // Filter and normalize fullDocUrls from trackingModelLocal based on the stage
    final List<String> fullDocUrls = trackingModelLocal?.allChecks
            ?.where((check) => check.orderStage == stage) // Filter by stage
            .map((url) {
          final fileUrl = url.fileUrl ?? '';
          // Ensure the base URL is prefixed
          return fileUrl.startsWith("http")
              ? fileUrl
              : "${UrlRoutes.baseUrl}$fileUrl";
        }).toList() ??
        [];

    // Combine both lists and remove duplicates by converting to a Set
    Set<String> uniqueUrls = {...filteredUrls, ...fullDocUrls};

    // Return the unique URLs as a list
    return uniqueUrls.toList();
  }

  void dialogShow() {
    showDialog(
        context: context,
        builder: (context) => CustomDialog(
            title: "Внимание",
            description: "Прикрепите файлы",
            button: CustomButton(
                text: "Понятно",
                onPressed: () {
                  router.pop();
                })));
  }
}

class NamedFile {
  final File file;
  final String name;

  NamedFile({required this.file, required this.name});
}

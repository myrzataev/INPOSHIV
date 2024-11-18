import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/confirm_tracking_stage_bloc/confirm_tracking_stage_bloc.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/end_of_tracking.dart';
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
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/date_time_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:inposhiv/services/showdialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrdersTrackingScreen extends StatefulWidget {
  final TrackingModel model;
  const OrdersTrackingScreen({super.key, required this.model});

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
  int activeStage = 0;
  DateTimeService dateTimeService = DateTimeService();
  TrackingModel? trackingModel;
  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer");
    trackingModel = widget.model;
    activeStage = widget.model.activeStageId ?? 0;
    _pageController = PageController(initialPage: activeStage);
    final widgetCount = (isCustomer ?? true) ? 2 : 8;
    controllers = List.generate(widgetCount, (_) => TextEditingController());
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    controllers.map((element) => element.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widgets =
        (isCustomer ?? true) ? customerWidgets() : manufacturerWidgets();

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: CustomSearchWidget(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: SvgPicture.asset(SvgImages.goback)),
            ),
            Expanded(
              child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  children: widgets.sublist(0, activeStage)),
            ),
          ],
        ),
      )),
    );
  }
void confirmTrackingStage({
  required String invoiceUuid,
  required String orderId,
  required String activeStage,
  required List<NamedFile>? allCheckFiles, // Nullable
  required bool stageAccepted,
  required String? comment, // Nullable
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


  List<Widget> manufacturerWidgets() {
    return [
      Stage1ForManufacturer(
        allComments: filterComments(
            allComents: trackingModel?.allComments, stage: "PARTIAL_PAYMENT"),
        onTapForTextButton: () {},
        onTapForCheck: () {
          final List<String> fullDocUrls = trackingModel?.allChecks
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
        controller: controllers[0],
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: widget.model.orderId?.toString() ?? "",
            activeStage: "PARTIAL_PAYMENT",
            allCheckFiles: null,
            stageAccepted: true,
            comment: null,
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
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
        allComments: filterComments(
            allComents: trackingModel?.allComments, stage: "SEWING"),
        currentIndexOfData: 10,
        controller: controllers[1],
        attachDocument: () async {
          setState(() {
            // paymentCheck = result;
          });
        },
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: "FABRIC_PURCHASE_AND_CUTTING",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: controllers[1].text,
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage3ForManufacturer(
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
            allComents: trackingModel?.allComments, stage: "QUALITY_CONTROL"),
        controller: controllers[2],
        currentIndexOfData: 20,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: widget.model.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: "FABRIC_PURCHASE_AND_CUTTING",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: controllers[1].text,
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
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
        allComments: filterComments(
            allComents: trackingModel?.allComments,
            stage: "READY_FOR_SHIPMENT"),
        controller: controllers[3],
        currentIndexOfData: 30,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: "FABRIC_PURCHASE_AND_CUTTING",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: controllers[1].text,
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
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
        allComments: filterComments(
            allComents: trackingModel?.allComments, stage: "SHIPPED"),
        controller: controllers[5],
        currentIndexOfData: 40,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: widget.model.orderId?.toString() ?? "",
            activeStage: "FABRIC_PURCHASE_AND_CUTTING",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: controllers[1].text,
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage6ForManufacturer(
        controller: controllers[6],
        currentIndexOfData: 50,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage7ForManufacturer(
        onTapForCheck: () {
          final List<String> fullDocUrls = trackingModel?.allChecks
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
        allComments: filterComments(
            allComents: trackingModel?.allComments, stage: "FINAL_PAYMENT"),
        controller: controllers[7],
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: "FABRIC_PURCHASE_AND_CUTTING",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: controllers[1].text,
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage8ForManufacturer(currentIndexOfData: 70, onTap: () {}),
      const EndOfTrackingForManufacturer()
    ];
  }

  List<Widget> customerWidgets() {
    return [
      Stage1(
        allComments: filterComments(
            allComents: trackingModel?.allComments, stage: "PARTIAL_PAYMENT"),
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
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: widget.model.orderId?.toString() ?? "",
            activeStage: "PARTIAL_PAYMENT",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: controllers[0].text,
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
        attachDocument: () async {},
        onTapForCheck: () {
          paymentCheck != null
              ? GoRouter.of(context)
                  .pushNamed("seeDoc", queryParameters: {"path": paymentCheck})
              : null;
        },
        check: PlatformFile(name: "name", size: 340),
      ),
      Stage2ForCustomer(
        currentIndexOfData: 10,
        comment: "При раскройке получилось 520шт",
        date: "16.04.2024",
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage3ForCustomer(
        currentIndexOfData: 20,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage4ForCustomer(
        currentIndexOfData: 30,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage5ForCustomer(
        currentIndexOfData: 40,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage6ForCustomer(
        currentIndexOfData: 50,
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage7ForCustomer(
        controller: controllers[1],
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Part2Stage6(
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
        },
      ),
      Stage7part2(
        onTap: () {
          confirmTrackingStage(
            invoiceUuid: trackingModel?.invoiceUuid ?? "",
            orderId: trackingModel?.orderId?.toString() ?? "",
            activeStage: trackingModel?.activeStageId?.toString() ?? "",
            allCheckFiles: [
              NamedFile(
                  file: File(paymentCheck ?? ""),
                  name: paymentCheckFileName ?? "")
            ],
            stageAccepted: false,
            comment: 'hellloooo',
          );
        },
        controller: TextEditingController(),
      ),
      const EndOfTracking()
    ];
  }

  List<Map<String, String?>> filterComments(
      {required List<AllC>? allComents, required String stage}) {
    List<Map<String, String?>> filteredList = allComents!
        .where((comment) => comment.orderStage == stage)
        .map((element) => {
              "comment": element.content,
              "date": dateTimeService.formatDate(element.createdAt.toString()),
            })
        .toList();
    return filteredList;
  }
}

class NamedFile {
  final File file;
  final String name;

  NamedFile({required this.file, required this.name});
}

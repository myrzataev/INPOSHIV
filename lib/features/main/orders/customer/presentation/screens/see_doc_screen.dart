import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SeeDocScreen extends StatelessWidget {
  final String path;
  final bool? isFromBackend;
  final String? documentUrl;
  const SeeDocScreen(
      {super.key,
      required this.path,
      this.isFromBackend = false,
      this.documentUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: (isFromBackend ?? false)
              ? SfPdfViewer.network(documentUrl ?? "")
              : SfPdfViewer.file(File(path))),
    );
  }
}

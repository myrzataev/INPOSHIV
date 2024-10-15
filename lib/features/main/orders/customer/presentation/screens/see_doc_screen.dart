import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SeeDocScreen extends StatelessWidget {
  final String path;
  const SeeDocScreen({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SfPdfViewer.file(File(path))),
    );
  }
}

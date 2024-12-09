import 'dart:io';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:path/path.dart' as p;
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class SeeDocScreen extends StatefulWidget {
  final String path;
  final bool? isFromBackend;
  final String? documentUrl;

  const SeeDocScreen({
    super.key,
    required this.path,
    this.isFromBackend = false,
    this.documentUrl,
  });

  @override
  _SeeDocScreenState createState() => _SeeDocScreenState();
}

class _SeeDocScreenState extends State<SeeDocScreen> {
  late String fileExtension;

  @override
  void initState() {
    super.initState();

    // Determine the file extension based on whether it's from backend or local path
    String filePath = widget.isFromBackend ?? false ? widget.documentUrl ?? "" : widget.path;

    // Initialize fileExtension only once
    fileExtension = p.extension(filePath).toLowerCase();
    print('File extension: $fileExtension');
  }

  @override
  Widget build(BuildContext context) {
    print("file is ${widget.documentUrl}");

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(child: _buildContent()),
      ),
    );
  }

  Widget _buildContent() {
    if (widget.isFromBackend ?? false) {
      return _buildBackendContent();
    } else {
      return _buildLocalContent();
    }
  }

  Widget _buildBackendContent() {
    print('Backend file extension: $fileExtension');
    if (fileExtension == '.pdf') {
      return SfPdfViewer.network(widget.documentUrl ?? "");
    } else if (_isImageExtension(fileExtension)) {
      return Image.network(widget.documentUrl ?? "", fit: BoxFit.contain);
    } else if (fileExtension == '.txt') {
      return FutureBuilder<String>(
        future: _fetchTextFileFromUrl(widget.documentUrl ?? ""),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  snapshot.data ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          }
        },
      );
    } else {
      return _unsupportedFileWidget(fileExtension);
    }
  }

  Widget _buildLocalContent() {
    print('Local file extension: $fileExtension');
    if (fileExtension == '.pdf') {
      return SfPdfViewer.file(File(widget.path));
    } else if (_isImageExtension(fileExtension)) {
      return Image.file(File(widget.path), fit: BoxFit.contain);
    } else if (fileExtension == '.txt') {
      return _buildTextFile();
    } else if (fileExtension == '.xlsx' || fileExtension == '.xls') {
      return _buildExcelFile();
    } else if (fileExtension == '.docx') {
      return _buildDocxFile();
    } else {
      return _unsupportedFileWidget(fileExtension);
    }
  }

  Widget _unsupportedFileWidget(String fileType) {
    return Center(
      child: Text(
        'Unsupported file type: $fileType',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildTextFile() {
    return FutureBuilder<String>(
      future: File(widget.path).readAsString(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Text(snapshot.data ?? '',
                  style: const TextStyle(color: Colors.white)),
            ),
          );
        }
      },
    );
  }

  Widget _buildExcelFile() {
    return FutureBuilder<String>(
      future: _readExcelFile(widget.path),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Text(snapshot.data ?? '',
                  style: const TextStyle(color: Colors.white)),
            ),
          );
        }
      },
    );
  }

  Widget _buildDocxFile() {
    return FutureBuilder<String>(
      future: _readDocxFile(widget.path),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Html(
                data: snapshot.data,
              ),
            ),
          );
        }
      },
    );
  }

  bool _isImageExtension(String fileExtension) {
    return ['.jpg', '.jpeg', '.png', '.gif', '.bmp'].contains(fileExtension);
  }

  Future<String> _readExcelFile(String filePath) async {
    try {
      final bytes = File(filePath).readAsBytesSync();
      final excel = Excel.decodeBytes(bytes);

      StringBuffer buffer = StringBuffer();
      for (var table in excel.tables.keys) {
        buffer.writeln("Sheet: $table");
        for (var row in excel.tables[table]!.rows) {
          buffer.writeln(row.map((cell) => cell?.value ?? '').join(' | '));
        }
      }
      return buffer.toString();
    } catch (e) {
      throw Exception("Failed to read Excel file: $e");
    }
  }

  Future<String> _readDocxFile(String filePath) async {
    try {
      final bytes = File(filePath).readAsBytesSync();
      // Implement DOCX parsing logic
      return "Parsed DOCX content here"; // Placeholder
    } catch (e) {
      throw Exception("Failed to read DOCX file: $e");
    }
  }

  Future<String> _fetchTextFileFromUrl(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to fetch text file: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception("Error fetching text file: $e");
    }
  }
}

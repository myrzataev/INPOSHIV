import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImagePickerScreen extends StatefulWidget {
  const CustomImagePickerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomImagePickerScreenState createState() =>
      _CustomImagePickerScreenState();
}

class _CustomImagePickerScreenState extends State<CustomImagePickerScreen> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _selectedImages = [];

  Future<void> _pickImages() async {
    final List<XFile>? images = await _picker.pickMultiImage();
    if (images != null) {
      setState(() {
        _selectedImages = images;
      });
    }
  }

  void _toggleSelection(int index) {
    setState(() {
      // Logic for toggling selection or implementing other behaviors
      if (_selectedImages.contains(_selectedImages[index])) {
        _selectedImages.removeAt(index);
      } else {
        _selectedImages.add(_selectedImages[index]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Images from Gallery'),
      ),
      body: Column(
        children: [
          _selectedImages.isEmpty
              ? Center(child: Text('No images selected'))
              : Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: _selectedImages.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          // Display the image
                          Image.file(
                            File(_selectedImages[index].path),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          // Add a selection overlay with a checkbox
                          Positioned(
                            top: 5,
                            right: 5,
                            child: GestureDetector(
                              onTap: () => _toggleSelection(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                                child: Icon(
                                  _selectedImages.contains(_selectedImages[index])
                                      ? Icons.check_circle
                                      : Icons.radio_button_unchecked,
                                  color: Colors.green,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
          ElevatedButton(
            onPressed: _pickImages,
            child: Text('Pick Images from Gallery'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Logic to handle the selected images
              print('Images selected: ${_selectedImages.length}');
            },
            child: Text('Upload Selected Images'),
          ),
        ],
      ),
    );
  }
}

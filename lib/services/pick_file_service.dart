
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/resources/resources.dart';

abstract class PickFileService {
  static Future<PlatformFile?> pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    final pickedFile = result?.files.first;
    if (result == null) {
      return null;
    } else {
      return pickedFile;
    }
  }
}

class FilePickerButton extends StatelessWidget {
  final void Function(String filePath)? onFilePicked;
  final void Function(String imagePath)? onImagePickedFromGallery;
  final void Function(String imagePath)? onImagePickedFromCamera;

  FilePickerButton({
    super.key,
    this.onFilePicked,
    this.onImagePickedFromGallery,
    this.onImagePickedFromCamera,
  });

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null && onFilePicked != null) {
      onFilePicked!(result.files.single.path!);
    }
  }

  Future<void> _pickImageFromGallery(BuildContext context) async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null && onImagePickedFromGallery != null) {
      onImagePickedFromGallery!(image.path);
    }
  }

  Future<void> _pickImageFromCamera(BuildContext context) async {
    final XFile? photo =
        await _imagePicker.pickImage(source: ImageSource.camera);
    if (photo != null && onImagePickedFromCamera != null) {
      onImagePickedFromCamera!(photo.path);
    }
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Files from Memory'),
              onTap: () {
                Navigator.pop(context);
                _pickFile(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Photos from Gallery'),
              onTap: () {
                Navigator.pop(context);
                _pickImageFromGallery(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Take Photo with Camera'),
              onTap: () {
                Navigator.pop(context);
                _pickImageFromCamera(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(SvgImages.document),
      onPressed: () => _showOptions(context),
    );
  }
}

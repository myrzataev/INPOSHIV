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
  final void Function(String filePath, String fileName)? onFilePicked;
  final void Function(String imagePath, String fileName)? onImagePickedFromGallery;
  final void Function(String imagePath, String fileName)? onImagePickedFromCamera;

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
      final filePath = result.files.single.path!;
      final fileName = result.files.single.name; // Extract file name
      onFilePicked!(filePath, fileName);
    }
  }

  Future<void> _pickImageFromGallery(BuildContext context) async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null && onImagePickedFromGallery != null) {
      final fileName = image.name; // Extract file name from XFile
      onImagePickedFromGallery!(image.path, fileName);
    }
  }

  Future<void> _pickImageFromCamera(BuildContext context) async {
    final XFile? photo = await _imagePicker.pickImage(source: ImageSource.camera);
    if (photo != null && onImagePickedFromCamera != null) {
      final fileName = photo.name; // Extract file name from XFile
      onImagePickedFromCamera!(photo.path, fileName);
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
              leading: const Icon(Icons.insert_drive_file),
              title: const Text("Документ"),
              onTap: () {
                Navigator.pop(context);
                _pickFile(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text("Изображение"),
              onTap: () {
                Navigator.pop(context);
                _pickImageFromGallery(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Камера"),
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

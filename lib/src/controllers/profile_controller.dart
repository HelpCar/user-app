import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  Future<CroppedFile?> uploadImageFromGallery(Function callback) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: const Color.fromARGB(255, 25, 24, 24),
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
        ],
      );
      if (croppedFile != null) {
        callback(croppedFile);
      }
    }
    return null;
  }

  Future<CroppedFile?> uploadImageFromCamera(Function callback) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: const Color.fromARGB(255, 25, 24, 24),
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
        ],
      );
      if (croppedFile != null) {
        callback(croppedFile);
      }
    }
    return null;
  }

  Future<void> saveProfileImage(CroppedFile imageFile) async {
    final filename = path.basenameWithoutExtension(imageFile.path);
    final imagetype = path.extension(imageFile.path).replaceAll('.', '');

    print(filename);
    print(imagetype);

    // CustomerProfilService().saveImage(imageFile, filename, imagetype);
    // CustomerService()
    //     .saveProfileImage(imageFile, fileName: filename, imageType: imagetype);
  }
}

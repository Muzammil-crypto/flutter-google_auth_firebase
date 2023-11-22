import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHelper {
  ImagePickerHelper([@visibleForTesting ImagePicker? imagePicker])
      : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  Future<File?> getImageModelFromCamera() async {
    final XFile? imageFile = await _imagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 800,
      maxWidth: 800,
      imageQuality: 0,
    );

    if (imageFile != null) {
      return _xFileToFile(imageFile);
    }

    return null;
  }

  Future<File?> getImageModelFromGallery() async {
    final XFile? imageFile = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 800,
      maxWidth: 800,
      imageQuality: 0,
    );

    if (imageFile != null) {
      return _xFileToFile(imageFile);
    }

    return null;
  }

  Future<File> _xFileToFile(XFile xFile) async {
    return File(xFile.path);
  }
}

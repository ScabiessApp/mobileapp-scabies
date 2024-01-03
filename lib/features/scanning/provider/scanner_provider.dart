import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image/image.dart';
import 'package:path/path.dart' as path;

class ScannerProvider with ChangeNotifier {
  // Form Key
  final formKey = GlobalKey<FormState>();

  // Index untuk Halaman
  int currentIndex = 0;

  // Data Sementara
  bool isCropped = false;

  // Fungsi untuk resize gambar
  Future<File> resizeImage(File file) async {
    var image = decodeImage(file.readAsBytesSync());

    // Resize gambar ke 224x224
    var resizedImage = copyResize(image!, width: 224, height: 224);

    // Menyimpan gambar yang sudah diresize ke direktori yang sama
    File resizedFile = File(file.path)
      ..writeAsBytesSync(encodeJpg(resizedImage));

    return resizedFile;
  }

  // Set Status Crop Image done or not
  void cropImage() {
    isCropped = !isCropped;
    notifyListeners();
  }

// Compresser image
  Future<File> compressImage(File croppedFile) async {
    var fileFromImage = File(croppedFile.path);
    var basename = path.basenameWithoutExtension(fileFromImage.path);
    var pathString =
        fileFromImage.path.split(path.basename(fileFromImage.path))[0];

    var pathStringWithExtension = "$pathString${basename}_image.jpg";

    int maxFileSizeInBytes = 1000000; // 2 MB
    int currentFileSize = await croppedFile.length();
    int quality = 90;

    File compressedFiles;

    compressedFiles = croppedFile;

    while (currentFileSize > maxFileSizeInBytes) {
      final compressedFile = await FlutterImageCompress.compressAndGetFile(
        croppedFile.absolute.path,
        pathStringWithExtension,
        quality: quality,
      );

      currentFileSize = await compressedFile!.length();
      quality -= 10; // Decrease quality by 10 each iteration (adjust as needed)

      compressedFiles = File(compressedFile.path);
    }

    return compressedFiles;
  }
}

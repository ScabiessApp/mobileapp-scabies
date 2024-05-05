import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image/image.dart';
import 'package:mobileapp_scabies/features/history/models/model/history_model.dart';
import 'package:mobileapp_scabies/features/history/provider/history_provider.dart';
import 'package:mobileapp_scabies/features/scanning/models/model/scanning_response_model.dart';
import 'package:mobileapp_scabies/features/scanning/models/service/scanning_service.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';

class ScannerProvider with ChangeNotifier {
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

  List<String> listJenisKelamin = [
    'Laki-Laki',
    'Perempuan',
  ];
  String? jenisKelamin;

  final GlobalKey<FormState> dataDiriFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> sectionOneTestFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> sectionTwoTestFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> sectionThreeTestFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> sectionFourTestFormKey = GlobalKey<FormState>();

  final TextEditingController namaLengkapController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  final TextEditingController pertanyaanSatuController =
      TextEditingController();
  final TextEditingController pertanyaanDuaController = TextEditingController();
  final TextEditingController pertanyaanTigaController =
      TextEditingController();
  final TextEditingController pertanyaanEmpatController =
      TextEditingController();

  // Jawaban dari survey test section 1
  String sectionOneQuestionOne = '';
  String sectionOneQuestionTwo = '';
  String sectionOneQuestionThree = '';
  String sectionOneQuestionFour = '';
  String sectionOneQuestionFive = '';
  String sectionOneQuestionSix = '';
  String sectionOneQuestionSeven = '';

  // Jawaban dari survey test section 2
  String sectionTwoQuestionOne = '';
  String sectionTwoQuestionTwo = '';

  // Jawaban dari survey test section 3
  String sectionThreeQuestionOne = '';
  String sectionThreeQuestionTwo = '';
  String sectionThreeQuestionThree = '';

  // Jawaban dari survey test section 4
  List<String> sectionFourQuestionOne = [];
  List<String> sectionFourQuestionTwo = [];
  List<String> sectionFourQuestionThree = [];
  List<String> sectionFourQuestionFour = [];
  List<String> sectionFourQuestionFive = [];
  List<String> sectionFourQuestionSix = [];
  List<String> sectionFourQuestionSeven = [];
  List<String> sectionFourQuestionEight = [];
  List<String> sectionFourQuestionNine = [];
  List<String> sectionFourQuestionTen = [];
  List<String> sectionFourQuestionEleven = [];
  List<String> sectionFourQuestionTweleve = [];

  // Set Status Crop Image done or not
  void cropImage() {
    isCropped = !isCropped;
    notifyListeners();
  }

  // Service
  final scanningService = ScanningService();

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

  Future<void> addImage(
    BuildContext context,
    File fileUpload,
    String description,
  ) async {
    HistoryModel historyModel = HistoryModel(
      id: UniqueKey().toString(),
      imageFile: fileUpload,
      description: description,
      dateTime: DateTime.now(),
      nama: namaLengkapController.text,
      jenisKelamin: jenisKelamin ?? '-',
      alamat: alamatController.text,
      noHp: noHpController.text,
      sectionOneQuestionOne: sectionOneQuestionOne,
      sectionOneQuestionTwo: sectionOneQuestionTwo,
      sectionOneQuestionThree: sectionOneQuestionThree,
      sectionOneQuestionFour: sectionOneQuestionFour,
      sectionOneQuestionFive: sectionOneQuestionFive,
      sectionOneQuestionSix: sectionOneQuestionSix,
      sectionOneQuestionSeven: sectionOneQuestionSeven,
      sectionTwoQuestionOne: sectionTwoQuestionOne,
      sectionTwoQuestionTwo: sectionTwoQuestionTwo,
      sectionThreeQuestionOne: sectionThreeQuestionOne,
      sectionThreeQuestionTwo: sectionThreeQuestionTwo,
      sectionThreeQuestionThree: sectionThreeQuestionThree,
      sectionFourQuestionOne: sectionFourQuestionOne,
      sectionFourQuestionTwo: sectionFourQuestionTwo,
      sectionFourQuestionThree: sectionFourQuestionThree,
      sectionFourQuestionFour: sectionFourQuestionFour,
      sectionFourQuestionFive: sectionFourQuestionFive,
      sectionFourQuestionSix: sectionFourQuestionSix,
      sectionFourQuestionSeven: sectionFourQuestionSeven,
      sectionFourQuestionEight: sectionFourQuestionEight,
      sectionFourQuestionNine: sectionFourQuestionNine,
      sectionFourQuestionTen: sectionFourQuestionTen,
      sectionFourQuestionEleven: sectionFourQuestionEleven,
      sectionFourQuestionTweleve: sectionFourQuestionTweleve,
    );

    Provider.of<HistoryProvider>(context, listen: false)
        .historyList
        .add(historyModel);

    notifyListeners();
  }

  Future<String> checkScabies(
    BuildContext context,
    File fileUpload,
  ) async {
    try {
      // Compress
      final fileAfterCompress = await compressImage(fileUpload);

      ScanningResponseModel result =
          await scanningService.checkScabiesAI(fileAfterCompress.path);

      // ScanningResponseModel result =
      //     await scanningService.checkScabiesAI(fileUpload.path);

      return result.predictedLabel;
    } catch (e) {
      return e.toString();
    }
  }

  // Fungsi fungsi untuk validasi inputan
  String? validatePertanyaan(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return 'Field tidak boleh kosong.';
    }

    return null; // validasi berhasil
  }

  // Eksekusi fungsi clear Data Bimbingan
  void clearDataTesScabies() async {
    jenisKelamin = null;
    namaLengkapController.clear();
    alamatController.clear();
    noHpController.clear();
    sectionOneQuestionOne = '';
    sectionOneQuestionTwo = '';
    sectionOneQuestionThree = '';
    sectionOneQuestionFour = '';
    sectionOneQuestionFive = '';
    sectionOneQuestionSix = '';
    sectionOneQuestionSeven = '';
    sectionTwoQuestionOne = '';
    sectionTwoQuestionTwo = '';
    sectionThreeQuestionOne = '';
    sectionThreeQuestionTwo = '';
    sectionThreeQuestionThree = '';
  }

  void setAnswer(
    String section,
    String number,
    String answer,
  ) {
    section == 'Section One'
        ? number == 'One'
            ? sectionOneQuestionOne = answer
            : number == 'Two'
                ? sectionOneQuestionTwo = answer
                : number == 'Three'
                    ? sectionOneQuestionThree = answer
                    : number == 'Four'
                        ? sectionOneQuestionFour = answer
                        : number == 'Five'
                            ? sectionOneQuestionFive = answer
                            : number == 'Six'
                                ? sectionOneQuestionSix = answer
                                : sectionOneQuestionSeven = answer
        : section == 'Section Two'
            ? number == 'One'
                ? sectionTwoQuestionOne = answer
                : sectionTwoQuestionTwo = answer
            : section == 'Section Three'
                ? number == 'One'
                    ? sectionThreeQuestionOne = answer
                    : number == 'Two'
                        ? sectionThreeQuestionTwo = answer
                        : sectionThreeQuestionThree = answer
                : null;

    notifyListeners();
  }

  bool validateSectionOne(BuildContext context) {
    if (sectionOneQuestionOne != '' &&
        sectionOneQuestionTwo != '' &&
        sectionOneQuestionThree != '' &&
        sectionOneQuestionFour != '' &&
        sectionOneQuestionFive != '' &&
        sectionOneQuestionSix != '' &&
        sectionOneQuestionSeven != '') {
      return true;
    } else {
      return false;
    }
  }

  bool validateSectionTwo(BuildContext context) {
    if (sectionTwoQuestionOne != '' && sectionTwoQuestionTwo != '') {
      return true;
    } else {
      return false;
    }
  }

  bool validateSectionThree(BuildContext context) {
    if (sectionThreeQuestionOne != '' &&
        sectionThreeQuestionTwo != '' &&
        sectionThreeQuestionThree != '') {
      return true;
    } else {
      return false;
    }
  }

  void addCheckBoxItem(String value, String number) {
    number == 'One'
        ? sectionFourQuestionOne.contains(value)
            ? sectionFourQuestionOne.remove(value)
            : sectionFourQuestionOne.add(value)
        : number == 'Two'
            ? sectionFourQuestionTwo.contains(value)
                ? sectionFourQuestionTwo.remove(value)
                : sectionFourQuestionTwo.add(value)
            : number == 'Three'
                ? sectionFourQuestionThree.contains(value)
                    ? sectionFourQuestionThree.remove(value)
                    : sectionFourQuestionThree.add(value)
                : number == 'Four'
                    ? sectionFourQuestionFour.contains(value)
                        ? sectionFourQuestionFour.remove(value)
                        : sectionFourQuestionFour.add(value)
                    : number == 'Five'
                        ? sectionFourQuestionFive.contains(value)
                            ? sectionFourQuestionFive.remove(value)
                            : sectionFourQuestionFive.add(value)
                        : number == 'Six'
                            ? sectionFourQuestionSix.contains(value)
                                ? sectionFourQuestionSix.remove(value)
                                : sectionFourQuestionSix.add(value)
                            : number == 'Seven'
                                ? sectionFourQuestionSeven.contains(value)
                                    ? sectionFourQuestionSeven.remove(value)
                                    : sectionFourQuestionSeven.add(value)
                                : number == 'Eight'
                                    ? sectionFourQuestionEight.contains(value)
                                        ? sectionFourQuestionEight.remove(value)
                                        : sectionFourQuestionEight.add(value)
                                    : number == 'Nine'
                                        ? sectionFourQuestionNine
                                                .contains(value)
                                            ? sectionFourQuestionNine
                                                .remove(value)
                                            : sectionFourQuestionNine.add(value)
                                        : number == 'Ten'
                                            ? sectionFourQuestionTen
                                                    .contains(value)
                                                ? sectionFourQuestionTen
                                                    .remove(value)
                                                : sectionFourQuestionTen
                                                    .add(value)
                                            : number == 'Eleven'
                                                ? sectionFourQuestionEleven
                                                        .contains(value)
                                                    ? sectionFourQuestionEleven
                                                        .remove(value)
                                                    : sectionFourQuestionEleven
                                                        .add(value)
                                                : sectionFourQuestionTweleve
                                                        .contains(value)
                                                    ? sectionFourQuestionTweleve
                                                        .remove(value)
                                                    : sectionFourQuestionTweleve
                                                        .add(value);
    notifyListeners();
  }
}

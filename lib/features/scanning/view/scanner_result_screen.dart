import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/widgets/warning_widget.dart';
import 'package:mobileapp_scabies/features/history/widgets/item_widget/survey_item.dart';

class ScannerResultScreen extends StatelessWidget {
  final String scabiesResult;
  final File file;
  final String namaLengkap;
  final String jenisKelamin;
  final String noHp;
  final String alamat;

  // Section 1
  final String sectionOneQuestionOne;
  final String sectionOneQuestionTwo;
  final String sectionOneQuestionThree;
  final String sectionOneQuestionFour;
  final String sectionOneQuestionFive;
  final String sectionOneQuestionSix;
  final String sectionOneQuestionSeven;

  // Section 2
  final String sectionTwoQuestionOne;
  final String sectionTwoQuestionTwo;

  // Section 3
  final String sectionThreeQuestionOne;
  final String sectionThreeQuestionTwo;
  final String sectionThreeQuestionThree;

  // Section 4
  final List<String> sectionFourQuestionOne;
  final List<String> sectionFourQuestionTwo;
  final List<String> sectionFourQuestionThree;
  final List<String> sectionFourQuestionFour;
  final List<String> sectionFourQuestionFive;
  final List<String> sectionFourQuestionSix;
  final List<String> sectionFourQuestionSeven;
  final List<String> sectionFourQuestionEight;
  final List<String> sectionFourQuestionNine;
  final List<String> sectionFourQuestionTen;
  final List<String> sectionFourQuestionEleven;
  final List<String> sectionFourQuestionTweleve;

  const ScannerResultScreen({
    super.key,
    required this.scabiesResult,
    required this.file,
    required this.namaLengkap,
    required this.jenisKelamin,
    required this.noHp,
    required this.alamat,
    required this.sectionOneQuestionOne,
    required this.sectionOneQuestionTwo,
    required this.sectionOneQuestionThree,
    required this.sectionOneQuestionFour,
    required this.sectionOneQuestionFive,
    required this.sectionOneQuestionSix,
    required this.sectionOneQuestionSeven,
    required this.sectionTwoQuestionOne,
    required this.sectionTwoQuestionTwo,
    required this.sectionThreeQuestionOne,
    required this.sectionThreeQuestionTwo,
    required this.sectionThreeQuestionThree,
    required this.sectionFourQuestionOne,
    required this.sectionFourQuestionTwo,
    required this.sectionFourQuestionThree,
    required this.sectionFourQuestionFour,
    required this.sectionFourQuestionFive,
    required this.sectionFourQuestionSix,
    required this.sectionFourQuestionSeven,
    required this.sectionFourQuestionEight,
    required this.sectionFourQuestionNine,
    required this.sectionFourQuestionTen,
    required this.sectionFourQuestionEleven,
    required this.sectionFourQuestionTweleve,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 40,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.brandColor.withOpacity(0.5),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 40,
                  child: Container(
                    width: 40, // Sesuaikan dengan kebutuhan ukuran lingkaran
                    height: 40, // Sesuaikan dengan kebutuhan ukuran lingkaran
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.brandColor.withOpacity(0.5),
                    ),
                    child: IconButton(
                      onPressed: () {
                        _showFullScreenImage(context, file);
                      },
                      icon: const Icon(
                        Icons.zoom_in,
                        color: Colors
                            .white, // Ganti dengan warna ikon yang diinginkan
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0, // Adjust the value to control the overlap amount
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 125, // Adjust the height as needed
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: AppColors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          'The Results is :',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          scabiesResult == 'SCABIES'
                              ? 'Scabies'
                              : 'Bukan Scabies',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.brandColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    scabiesResult == 'SCABIES'
                        ? 'Scabies merupakan penyakit kulit menular yang disebabkan oleh masuknya tungau kecil ke dalam lapisan kulit luar. Scabies dapat menyebabkan gatal intens dan ruam. Scabies dapat menyebabkan luka pada kulit dan komplikasi serius seperti septisemia (infeksi aliran darah), penyakit jantung, dan masalah ginjal.'
                        : 'Hasil deteksi menyatakan bukanlah Scabies. Namun, jika Anda mengalami masalah pada kulit, kami menyarankan untuk segera mencari bantuan dari tenaga medis. Anda dapat menghubungi dokter menggunakan informasi yang disediakan di bawah ini:',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Data Diri Pasien :',
                          style: TextStyle(
                            fontSize: AppFontSize.bodySmall,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 40, // Adjust the size as needed
                              backgroundImage: AssetImage(
                                'assets/images/profile.jpg',
                              ), // Replace with the actual image asset path
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    namaLengkap,
                                    style: const TextStyle(
                                      fontSize: AppFontSize.bodySmall,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    jenisKelamin,
                                    style: const TextStyle(
                                      fontSize: AppFontSize.caption,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    noHp,
                                    style: const TextStyle(
                                      fontSize: AppFontSize.caption,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          alamat,
                          style: const TextStyle(
                            fontSize: AppFontSize.caption,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SurveyItem(
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
                      sectionFourQuestionTweleve: sectionFourQuestionTweleve),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.05), // warna bayangan
                              spreadRadius:
                                  0, // seberapa besar bayangan tersebar
                              blurRadius: 20, // tingkat kejelasan bayangan
                              offset:
                                  const Offset(4, 4), // posisi bayangan (x, y)
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 40, // Adjust the size as needed
                              backgroundImage: AssetImage(
                                  'assets/images/doctor_test.png'), // Replace with the actual image asset path
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Dokter 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Icon(IconlyLight.chat),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.05), // warna bayangan
                              spreadRadius:
                                  0, // seberapa besar bayangan tersebar
                              blurRadius: 20, // tingkat kejelasan bayangan
                              offset:
                                  const Offset(4, 4), // posisi bayangan (x, y)
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 40, // Adjust the size as needed
                              backgroundImage: AssetImage(
                                  'assets/images/doctor_test.png'), // Replace with the actual image asset path
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Dokter 2',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Icon(IconlyLight.chat),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  warningWidget(
                    'Anda dapat menghubungi dokter menggunakan informasi yang disediakan di atas.',
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _showFullScreenImage(BuildContext context, File image) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        content: SizedBox(
          width: 400,
          height: MediaQuery.of(context).size.width * 0.8,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.file(
                  image,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors
                          .black12, // Ganti dengan warna latar belakang yang diinginkan
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

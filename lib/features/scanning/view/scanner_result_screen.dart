import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';

class ScannerResultScreen extends StatelessWidget {
  final String scabiesResult;
  final File file;

  const ScannerResultScreen({
    super.key,
    required this.scabiesResult,
    required this.file,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.file(file),
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
                              : 'Not Scabies',
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
                        ? 'Scabies is a parasitic infestation caused by tiny mites that burrow into the skin and lay eggs, causing intense itching and a rash. Scabies can lead to skin sores and serious complications like septicaemia (a bloodstream infection), heart disease and kidney problems.'
                        : 'Your result is not scabies. However, if you are experiencing severe or challenging skin issues, it is recommended to seek immediate assistance from a medical professional. You can contact a doctor using the information provided below:',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
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

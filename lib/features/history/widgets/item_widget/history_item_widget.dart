import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/history/view/history_detail.dart';

class HistoryItemWidget extends StatelessWidget {
  final File file;
  final String id;
  final String scabiesResult;
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
  const HistoryItemWidget({
    super.key,
    required this.file,
    required this.id,
    required this.scabiesResult,
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
              builder: (context) => HistoryDetailScreen(
                  scabiesResult: scabiesResult,
                  file: file,
                  namaLengkap: namaLengkap,
                  jenisKelamin: jenisKelamin,
                  noHp: noHp,
                  alamat: alamat,
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
                  sectionFourQuestionTweleve: sectionFourQuestionTweleve)),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // warna bayangan
              spreadRadius: 0, // seberapa besar bayangan tersebar
              blurRadius: 20, // tingkat kejelasan bayangan
              offset: const Offset(4, 4), // posisi bayangan (x, y)
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  25), // Half of the width/height for a perfect circle
              child: Container(
                width: 50.0,
                height: 50.0,
                color: AppColors.primary100,
                child: Image.file(file),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    id,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    scabiesResult == 'SCABIES' ? 'Scabies' : 'Bukan Scabies',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.graySecondColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              IconlyLight.arrow_right_circle,
              color: AppColors.brandColor,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';

class SurveyItem extends StatefulWidget {
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
  const SurveyItem({
    super.key,
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
  State<SurveyItem> createState() => _SurveyItemState();
}

class _SurveyItemState extends State<SurveyItem> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Container(
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
        child: ExpansionTile(
          title: Text(
            'Survey Test Scabies Pasien',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.bodySmall,
              overflow: isOpen ? null : TextOverflow.ellipsis,
            ),
            maxLines: isOpen ? null : 1,
          ),
          onExpansionChanged: (value) {
            setState(() {
              isOpen = !isOpen;
            });
          },
          expandedAlignment: Alignment.topLeft,
          childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section 1
                const Text(
                  'Gatal Malam Hari',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodySmall,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Sela di jari tangan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionOneQuestionOne,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pergelangan tangan depan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionOneQuestionTwo,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Siku luar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionOneQuestionThree,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Lipat ketiak depan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionOneQuestionFour,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pusar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionOneQuestionFive,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Area Bokong',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionOneQuestionSix,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Area Puting',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionOneQuestionSeven,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral500,
                ),
                const SizedBox(
                  height: 8,
                ),

                // Section 2
                const Text(
                  'Keluhan Gatal Pada Orang Lain',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodySmall,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Sekamar / Serumah / Seasrama',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionTwoQuestionOne,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Kerabat dekat lain',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionTwoQuestionTwo,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral500,
                ),
                const SizedBox(
                  height: 8,
                ),

                // Section 3
                const Text(
                  'Riwayat penyakit serupa sebelumnya',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodySmall,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Keluhan gatal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionThreeQuestionOne,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Kelainan Kulit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionThreeQuestionTwo,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Riwayat pengobatan sebelumnya',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionThreeQuestionThree,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral500,
                ),
                const SizedBox(
                  height: 8,
                ),

                // Section 4
                const Text(
                  'Pemeriksaan Fisik',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodySmall,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Sela Jari',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionOne.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionOne.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Jenis Lesi/Kelainan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionTwo.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionTwo.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),

                const Text(
                  'Pergelangan tangan depan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionThree.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionThree.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Jenis Lesi/Kelainan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionFour.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionFour.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),

                const Text(
                  'Siku Luar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionFive.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionFive.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Jenis Lesi/Kelainan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionSix.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionSix.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),

                const Text(
                  'Lipat ketiak depan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionSeven.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionSeven.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Jenis Lesi/Kelainan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionEight.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionEight.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),

                const Text(
                  'Pusar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionNine.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionNine.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),

                const Text(
                  'Area Bokong',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionTen.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionTen.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),

                const Text(
                  'Area Puting',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionEleven.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionEleven.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Jenis Lesi/Kelainan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.sectionFourQuestionTweleve.isEmpty
                      ? '-'
                      : widget.sectionFourQuestionTweleve.join(', '),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

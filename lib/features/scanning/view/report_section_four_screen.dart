import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/widgets/warning_widget.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/scanning/widgets/camera_modal.dart';
import 'package:provider/provider.dart';

class ReportSectionFourScreen extends StatefulWidget {
  const ReportSectionFourScreen({super.key});

  @override
  State<ReportSectionFourScreen> createState() =>
      _ReportSectionFourScreenState();
}

class _ReportSectionFourScreenState extends State<ReportSectionFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Tes Scabies',
          style: TextStyle(
            color: AppColors.white,
            fontSize: AppFontSize.bodyLarge,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.white,
          ),
        ),
        actions: const [
          Text(
            '5/5',
            style: TextStyle(
              color: AppColors.white,
              fontSize: AppFontSize.bodyLarge,
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
        backgroundColor: AppColors.brandColor,
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: Consumer<ScannerProvider>(
        builder: (context, scannerProvider, _) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              warningWidget(
                  'Lengkapi data dibawah ini dengan data yang valid dan benar.'),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Pemeriksaan Fisik',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Jawab pertanyaan berikut sesuai dengan keterangan fisik yang anda miliki.',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.caption,
                  color: AppColors.neutral500,
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

              // Checkbox Question 1
              const Text(
                'Sela Jari',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: IntrinsicWidth(
                      child: CheckboxListTile(
                        title: const Text(
                          'Kiri',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: AppFontSize.bodySmall,
                            color: AppColors.black,
                          ),
                        ),
                        value: scannerProvider.sectionFourQuestionOne
                            .contains('Kiri'),
                        onChanged: (isChecked) {
                          scannerProvider.addCheckBoxItem('Kiri', 'One');
                        },
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: IntrinsicWidth(
                      child: CheckboxListTile(
                        title: const Text(
                          'Kanan',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: AppFontSize.bodySmall,
                            color: AppColors.black,
                          ),
                        ),
                        value: scannerProvider.sectionFourQuestionOne
                            .contains('Kanan'),
                        onChanged: (isChecked) {
                          scannerProvider.addCheckBoxItem('Kanan', 'One');
                        },
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionOne
                          .contains('Tidak Ada'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Tidak Ada', 'One');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Checkbox Question 2
              const Text(
                'Jenis Lesi / Kelainan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTwo
                          .contains('Bintil'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Bintil', 'Two');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil Bernanah',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTwo
                          .contains('Bintil Bernanah'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Bintil Bernanah', 'Two');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  IntrinsicWidth(
                    stepWidth: 80,
                    child: CheckboxListTile(
                      title: const Text(
                        'Lecet / Borok',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTwo
                          .contains('Lecet / Borok'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Lecet / Borok', 'Two');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
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

              // ---------------------------- ---------------------------- ----------------------------

              // Checkbox Question 3
              const Text(
                'Pergelangan tangan depan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kiri',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionThree
                          .contains('Kiri'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kiri', 'Three');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kanan',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionThree
                          .contains('Kanan'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kanan', 'Three');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionThree
                          .contains('Tidak Ada'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Tidak Ada', 'Three');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Checkbox Question 4
              const Text(
                'Jenis Lesi / Kelainan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionFour
                          .contains('Bintil'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Bintil', 'Four');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil Bernanah',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionFour
                          .contains('Bintil Bernanah'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Bintil Bernanah', 'Four');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  IntrinsicWidth(
                    stepWidth: 80,
                    child: CheckboxListTile(
                      title: const Text(
                        'Lecet / Borok',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionFour
                          .contains('Lecet / Borok'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Lecet / Borok', 'Four');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
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

              // ---------------------------- ---------------------------- ----------------------------

              // Checkbox Question 5
              const Text(
                'Siku Luar',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kiri',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionFive
                          .contains('Kiri'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kiri', 'Five');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kanan',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionFive
                          .contains('Kanan'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kanan', 'Five');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionFive
                          .contains('Tidak Ada'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Tidak Ada', 'Five');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Checkbox Question 6
              const Text(
                'Jenis Lesi / Kelainan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionSix
                          .contains('Bintil'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Bintil', 'Six');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil Bernanah',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionSix
                          .contains('Bintil Bernanah'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Bintil Bernanah', 'Six');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  IntrinsicWidth(
                    stepWidth: 80,
                    child: CheckboxListTile(
                      title: const Text(
                        'Lecet / Borok',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionSix
                          .contains('Lecet / Borok'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Lecet / Borok', 'Six');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
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

              // ---------------------------- ---------------------------- ----------------------------

              // Checkbox Question 7
              const Text(
                'Lipat Ketiak Depan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kiri',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionSeven
                          .contains('Kiri'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kiri', 'Seven');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kanan',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionSeven
                          .contains('Kanan'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kanan', 'Seven');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionSeven
                          .contains('Tidak Ada'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Tidak Ada', 'Seven');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Checkbox Question 8
              const Text(
                'Jenis Lesi / Kelainan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionEight
                          .contains('Bintil'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Bintil', 'Eight');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil Bernanah',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionEight
                          .contains('Bintil Bernanah'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Bintil Bernanah', 'Eight');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  IntrinsicWidth(
                    stepWidth: 80,
                    child: CheckboxListTile(
                      title: const Text(
                        'Lecet / Borok',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionEight
                          .contains('Lecet / Borok'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Lecet / Borok', 'Eight');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
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

              // ---------------------------- ---------------------------- ----------------------------

              // Checkbox Question 9
              const Text(
                'Pusar',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionNine
                          .contains('Bintil'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Bintil', 'Nine');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil Bernanah',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionNine
                          .contains('Bintil Bernanah'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Bintil Bernanah', 'Nine');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Lecet / Borok',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionNine
                          .contains('Lecet / Borok'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Lecet / Borok', 'Nine');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionNine
                          .contains('Tidak Ada'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Tidak Ada', 'Nine');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
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

              // ---------------------------- ---------------------------- ----------------------------

              // Checkbox Question 10
              const Text(
                'Area Bokong',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTen
                          .contains('Bintil'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Bintil', 'Ten');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil Bernanah',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTen
                          .contains('Bintil Bernanah'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Bintil Bernanah', 'Ten');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Lecet / Borok',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTen
                          .contains('Lecet / Borok'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Lecet / Borok', 'Ten');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTen
                          .contains('Tidak Ada'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Tidak Ada', 'Ten');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
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

              // ---------------------------- ---------------------------- ----------------------------

              // Checkbox Question 11
              const Text(
                'Area Puting',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kiri',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionEleven
                          .contains('Kiri'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kiri', 'Eleven');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Kanan',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionEleven
                          .contains('Kanan'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Kanan', 'Eleven');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionEleven
                          .contains('Tidak Ada'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Tidak Ada', 'Eleven');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Checkbox Question 12
              const Text(
                'Jenis Lesi / Kelainan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTweleve
                          .contains('Bintil'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem('Bintil', 'Tweleve');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text(
                        'Bintil Bernanah',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTweleve
                          .contains('Bintil Bernanah'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Bintil Bernanah', 'Tweleve');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  IntrinsicWidth(
                    stepWidth: 80,
                    child: CheckboxListTile(
                      title: const Text(
                        'Lecet / Borok',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: scannerProvider.sectionFourQuestionTweleve
                          .contains('Lecet / Borok'),
                      onChanged: (isChecked) {
                        scannerProvider.addCheckBoxItem(
                            'Lecet / Borok', 'Tweleve');
                      },
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () async {
                  warningSubmitTest(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(
                    AppColors.brandColor,
                  ),
                ),
                child: const Text(
                  'Submit Test',
                  style: TextStyle(
                    fontSize: AppFontSize.bodyMedium,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

warningSubmitTest(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Submit Test',
          style: TextStyle(
            fontSize: AppFontSize.heading3,
          ),
        ),
        content: const Text(
          'Apakah Anda yakin semua data yang telah diinputkan telah benar? (Jika iya, klik Scan Kulit)',
          style: TextStyle(
            fontSize: AppFontSize.bodyMedium,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Cek Data Lagi',
              style: TextStyle(color: AppColors.brandColor),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Tambahkan logika untuk menandai notifikasi sebagai sudah dibaca di sini
              // Misalnya: markAllNotificationsAsRead();
              Navigator.of(context).pop();

              showCameraModal(context);
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                AppColors.brandColor,
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  IconlyLight.camera,
                  size: 24,
                  color: AppColors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    'Mulai Scan Kulit',
                    style: TextStyle(
                      fontSize: AppFontSize.bodyMedium,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

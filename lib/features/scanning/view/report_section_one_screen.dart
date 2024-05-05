import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/widgets/warning_widget.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/scanning/view/report_section_two_screen.dart';
import 'package:provider/provider.dart';

class ReportSectionOneScreen extends StatefulWidget {
  const ReportSectionOneScreen({super.key});

  @override
  State<ReportSectionOneScreen> createState() => _ReportSectionOneScreenState();
}

class _ReportSectionOneScreenState extends State<ReportSectionOneScreen> {
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
            '2/5',
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
                'Gatal Malam Hari',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Jawab pertanyaan berikut sesuai dengan keadaan kulit anda saat ini.',
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

              // Radio Question 1
              const Text(
                'Sela di jari tangan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Ada',
                      groupValue: scannerProvider.sectionOneQuestionOne,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'One',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Tidak Ada',
                      groupValue: scannerProvider.sectionOneQuestionOne,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'One',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Radio Question 2
              const Text(
                'Pergelangan tangan depan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Ada',
                      groupValue: scannerProvider.sectionOneQuestionTwo,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Two',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Tidak Ada',
                      groupValue: scannerProvider.sectionOneQuestionTwo,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Two',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Radio Question 3
              const Text(
                'Siku luar',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Ada',
                      groupValue: scannerProvider.sectionOneQuestionThree,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Three',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Tidak Ada',
                      groupValue: scannerProvider.sectionOneQuestionThree,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Three',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Radio Question 4
              const Text(
                'Lipat ketiak depan',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Ada',
                      groupValue: scannerProvider.sectionOneQuestionFour,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Four',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Tidak Ada',
                      groupValue: scannerProvider.sectionOneQuestionFour,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Four',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Radio Question 5
              const Text(
                'Pusar',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Ada',
                      groupValue: scannerProvider.sectionOneQuestionFive,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Five',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Tidak Ada',
                      groupValue: scannerProvider.sectionOneQuestionFive,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Five',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Radio Question 6
              const Text(
                'Area Bokong',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Ada',
                      groupValue: scannerProvider.sectionOneQuestionSix,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Six',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Tidak Ada',
                      groupValue: scannerProvider.sectionOneQuestionSix,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Six',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // Radio Question 7
              const Text(
                'Area Puting',
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Ada',
                      groupValue: scannerProvider.sectionOneQuestionSeven,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Seven',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text(
                        'Tidak Ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.bodySmall,
                          color: AppColors.black,
                        ),
                      ),
                      value: 'Tidak Ada',
                      groupValue: scannerProvider.sectionOneQuestionSeven,
                      onChanged: (value) {
                        scannerProvider.setAnswer(
                          'Section One',
                          'Seven',
                          value ?? '',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (scannerProvider.validateSectionOne(context)) {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const ReportSectionTwoScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Row(
                          children: [
                            Icon(
                              Icons.close_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                'Isi seluruh pertanyaan terlebih dahulu!',
                              ),
                            ),
                          ],
                        ),
                        backgroundColor: AppColors.error500,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
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
                  'Lanjut',
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

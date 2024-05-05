import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/widgets/warning_widget.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/scanning/view/report_section_four_screen.dart';
import 'package:provider/provider.dart';

class ReportSectionThreeScreen extends StatefulWidget {
  const ReportSectionThreeScreen({super.key});

  @override
  State<ReportSectionThreeScreen> createState() =>
      _ReportSectionThreeScreenState();
}

class _ReportSectionThreeScreenState extends State<ReportSectionThreeScreen> {
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
            '4/5',
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
          return Form(
            key: scannerProvider.sectionThreeTestFormKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                warningWidget(
                    'Lengkapi data dibawah ini dengan data yang valid dan benar.'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Riwayat penyakit serupa sebelumnya',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Jawab pertanyaan berikut sesuai dengan riwayat penyakit yang anda miliki.',
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
                  'Keluhan gatal',
                  style: TextStyle(
                    fontSize: AppFontSize.bodySmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
                        groupValue: scannerProvider.sectionThreeQuestionOne,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Three',
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
                        groupValue: scannerProvider.sectionThreeQuestionOne,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Three',
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
                  'Kelainan kulit',
                  style: TextStyle(
                    fontSize: AppFontSize.bodySmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
                        groupValue: scannerProvider.sectionThreeQuestionTwo,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Three',
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
                        groupValue: scannerProvider.sectionThreeQuestionTwo,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Three',
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
                  'Riwayat pengobatan sebelumnya',
                  style: TextStyle(
                    fontSize: AppFontSize.bodySmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
                        groupValue: scannerProvider.sectionThreeQuestionThree,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Three',
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
                        groupValue: scannerProvider.sectionThreeQuestionThree,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Three',
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
                ElevatedButton(
                  onPressed: () async {
                    if (scannerProvider.validateSectionThree(context)) {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const ReportSectionFourScreen(),
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
            ),
          );
        },
      ),
    );
  }
}

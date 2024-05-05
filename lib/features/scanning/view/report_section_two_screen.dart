import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/widgets/warning_widget.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/scanning/view/report_section_three_screen.dart';
import 'package:provider/provider.dart';

class ReportSectionTwoScreen extends StatefulWidget {
  const ReportSectionTwoScreen({super.key});

  @override
  State<ReportSectionTwoScreen> createState() => _ReportSectionTwoScreenState();
}

class _ReportSectionTwoScreenState extends State<ReportSectionTwoScreen> {
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
            '3/5',
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
            key: scannerProvider.sectionTwoTestFormKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                warningWidget(
                    'Lengkapi data dibawah ini dengan data yang valid dan benar.'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Keluhan Gatal Pada Orang Lain',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Jawab pertanyaan berikut sesuai dengan keadaan gatal pada beberapa orang disekitar anda saat ini.',
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
                  'Sekamar / Serumah / Seasrama',
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
                        groupValue: scannerProvider.sectionTwoQuestionOne,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Two',
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
                        groupValue: scannerProvider.sectionTwoQuestionOne,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Two',
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
                  'Kerabat dekat lain',
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
                        groupValue: scannerProvider.sectionTwoQuestionTwo,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Two',
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
                        groupValue: scannerProvider.sectionTwoQuestionTwo,
                        onChanged: (value) {
                          scannerProvider.setAnswer(
                            'Section Two',
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
                ElevatedButton(
                  onPressed: () async {
                    if (scannerProvider.validateSectionTwo(context)) {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) =>
                              const ReportSectionThreeScreen(),
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

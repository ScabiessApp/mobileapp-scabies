import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/history/provider/history_provider.dart';
import 'package:mobileapp_scabies/features/history/widgets/item_widget/history_item_widget.dart';
import 'package:provider/provider.dart';

bool hasHistoryToShow = false;

class OldHistoryWidget extends StatelessWidget {
  const OldHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HistoryProvider>(
      builder: (context, historyProvider, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            historyProvider.historyList.isEmpty
                ? Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.black.withOpacity(0.05), // warna bayangan
                          spreadRadius: 0, // seberapa besar bayangan tersebar
                          blurRadius: 20, // tingkat kejelasan bayangan
                          offset: const Offset(4, 4), // posisi bayangan (x, y)
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Riwayat kosong.',
                      ),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      // Extract the DateTime from your history item
                      DateTime itemDate =
                          historyProvider.historyList[index].dateTime;

                      // Check if the item's date is not equal to today's date
                      if (!isSameDay(itemDate, DateTime.now())) {
                        hasHistoryToShow =
                            true; // Set the flag to true if at least one item should be displayed

                        return HistoryItemWidget(
                          file: historyProvider.historyList[index].imageFile,
                          id: 'Hasil Scan ${(index + 1)}',
                          scabiesResult:
                              historyProvider.historyList[index].description,
                          namaLengkap: historyProvider.historyList[index].nama,
                          jenisKelamin:
                              historyProvider.historyList[index].jenisKelamin,
                          noHp: historyProvider.historyList[index].noHp,
                          alamat: historyProvider.historyList[index].alamat,
                          sectionOneQuestionOne: historyProvider
                              .historyList[index].sectionOneQuestionOne,
                          sectionOneQuestionTwo: historyProvider
                              .historyList[index].sectionOneQuestionTwo,
                          sectionOneQuestionThree: historyProvider
                              .historyList[index].sectionOneQuestionThree,
                          sectionOneQuestionFour: historyProvider
                              .historyList[index].sectionOneQuestionFour,
                          sectionOneQuestionFive: historyProvider
                              .historyList[index].sectionOneQuestionFive,
                          sectionOneQuestionSix: historyProvider
                              .historyList[index].sectionOneQuestionSix,
                          sectionOneQuestionSeven: historyProvider
                              .historyList[index].sectionOneQuestionSeven,
                          sectionTwoQuestionOne: historyProvider
                              .historyList[index].sectionTwoQuestionOne,
                          sectionTwoQuestionTwo: historyProvider
                              .historyList[index].sectionTwoQuestionTwo,
                          sectionThreeQuestionOne: historyProvider
                              .historyList[index].sectionThreeQuestionOne,
                          sectionThreeQuestionTwo: historyProvider
                              .historyList[index].sectionThreeQuestionTwo,
                          sectionThreeQuestionThree: historyProvider
                              .historyList[index].sectionThreeQuestionThree,
                          sectionFourQuestionOne: historyProvider
                              .historyList[index].sectionFourQuestionOne,
                          sectionFourQuestionTwo: historyProvider
                              .historyList[index].sectionFourQuestionTwo,
                          sectionFourQuestionThree: historyProvider
                              .historyList[index].sectionFourQuestionThree,
                          sectionFourQuestionFour: historyProvider
                              .historyList[index].sectionFourQuestionFour,
                          sectionFourQuestionFive: historyProvider
                              .historyList[index].sectionFourQuestionFive,
                          sectionFourQuestionSix: historyProvider
                              .historyList[index].sectionFourQuestionSix,
                          sectionFourQuestionSeven: historyProvider
                              .historyList[index].sectionFourQuestionSeven,
                          sectionFourQuestionEight: historyProvider
                              .historyList[index].sectionFourQuestionEight,
                          sectionFourQuestionNine: historyProvider
                              .historyList[index].sectionFourQuestionNine,
                          sectionFourQuestionTen: historyProvider
                              .historyList[index].sectionFourQuestionTen,
                          sectionFourQuestionEleven: historyProvider
                              .historyList[index].sectionFourQuestionEleven,
                          sectionFourQuestionTweleve: historyProvider
                              .historyList[index].sectionFourQuestionTweleve,
                        );
                      }

                      return const SizedBox
                          .shrink(); // Skip displaying items with the same date as today
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 8,
                    ),
                    itemCount: historyProvider.historyList.length,
                  ),
            historyProvider.historyList.isEmpty
                ? const SizedBox.shrink()
                : Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.black.withOpacity(0.05), // warna bayangan
                          spreadRadius: 0, // seberapa besar bayangan tersebar
                          blurRadius: 20, // tingkat kejelasan bayangan
                          offset: const Offset(4, 4), // posisi bayangan (x, y)
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Riwayat kosong.',
                      ),
                    ),
                  ),
          ],
        );
      },
    );
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/dashboard/provider/dashboard_provider.dart';
import 'package:mobileapp_scabies/features/history/provider/history_provider.dart';
import 'package:mobileapp_scabies/features/history/widgets/item_widget/history_item_widget.dart';
import 'package:provider/provider.dart';

class LatestWidget extends StatelessWidget {
  const LatestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HistoryProvider>(
      builder: (context, historyProvider, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Latest Result',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<DashboardProvider>(context, listen: false)
                        .setSelectedIndex(context, 3);
                  },
                  child: const Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.graySecondColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
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
                        'History is empty.',
                      ),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return HistoryItemWidget(
                        file: historyProvider.historyList[index].imageFile,
                        id: 'Scan Result ${(index + 1)}',
                        scabiesResult:
                            historyProvider.historyList[index].description,
                      );
                    },
                    reverse: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 8,
                    ),
                    itemCount: historyProvider.historyList.length < 3
                        ? historyProvider.historyList.length
                        : 3,
                  )
          ],
        );
      },
    );
  }
}

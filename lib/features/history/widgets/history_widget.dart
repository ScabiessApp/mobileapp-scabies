import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/history/provider/history_provider.dart';
import 'package:mobileapp_scabies/features/history/widgets/item_widget/history_item_widget.dart';
import 'package:provider/provider.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

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
                        pertanyaanSatu:
                            historyProvider.historyList[index].pertanyaanSatu,
                        pertanyaanDua:
                            historyProvider.historyList[index].pertanyaanDua,
                        pertanyaanTiga:
                            historyProvider.historyList[index].pertanyaanTiga,
                        pertanyaanEmpat:
                            historyProvider.historyList[index].pertanyaanEmpat,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 8,
                    ),
                    itemCount: historyProvider.historyList.length,
                  )
          ],
        );
      },
    );
  }
}

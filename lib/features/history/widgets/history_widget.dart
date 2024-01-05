import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/features/history/widgets/item_widget/history_item_widget.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      const HistoryItemWidget(),
      const HistoryItemWidget(),
      const HistoryItemWidget(),
      const HistoryItemWidget(),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.separated(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 8,
          ),
          itemCount: items.length,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/home/widgets/item_widget/latest_item_widget.dart';

class LatestWidget extends StatelessWidget {
  const LatestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      const LatestItemWidget(),
      const LatestItemWidget(),
      const LatestItemWidget(),
      const LatestItemWidget(),
      const LatestItemWidget(),
      const LatestItemWidget(),
      const LatestItemWidget(),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Latest Result',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'See More',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.graySecondColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
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

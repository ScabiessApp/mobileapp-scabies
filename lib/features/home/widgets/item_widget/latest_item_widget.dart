import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LatestItemWidget extends StatelessWidget {
  const LatestItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.of(context).push(
      //     CupertinoPageRoute(
      //       builder: (context) => const HistoryDetailScreen(),
      //     ),
      //   );
      // },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // warna bayangan
              spreadRadius: 0, // seberapa besar bayangan tersebar
              blurRadius: 20, // tingkat kejelasan bayangan
              offset: const Offset(4, 4), // posisi bayangan (x, y)
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  30), // Half of the width/height for a perfect circle
              child: Container(
                width: 50.0,
                height: 50.0,
                color: AppColors.primary100, // Change the color as needed
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hand',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    '60%',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.graySecondColor,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  LinearPercentIndicator(
                    padding: const EdgeInsets.all(0),
                    animation: true,
                    lineHeight: 14.0,
                    animationDuration: 1000,
                    percent: 0.6,
                    barRadius: const Radius.circular(10),
                    progressColor: Colors.greenAccent,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              IconlyLight.arrow_right_circle,
              color: AppColors.brandColor,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}

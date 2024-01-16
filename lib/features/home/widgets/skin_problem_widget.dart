import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/scanning/widgets/camera_modal.dart';

class SkinProblemWidget extends StatelessWidget {
  const SkinProblemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: AppColors.purpleAccentColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Flexible(
            child: Text(
              'Apakah anda memiliki masalah kulit?',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.brandColor),
            ),
            onPressed: () async {
              await showCameraModal(context);
            },
            child: const Text(
              'Cek!',
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

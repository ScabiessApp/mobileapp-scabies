import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.graySecondColor,
                ),
              ),
              Text(
                'User!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Container(
            width: 60.0,
            height: 60.0,
            color: AppColors.primary500,
            child: Image.asset('assets/images/profile.jpg'),
          ),
        ),
      ],
    );
  }
}

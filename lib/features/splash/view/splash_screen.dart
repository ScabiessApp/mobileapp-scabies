import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/constants/font_weigth.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary500,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/road_report_logo.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Positioned(
            bottom: 35,
            right: 0,
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'POWERED BY',
                  style: TextStyle(
                    fontSize: AppFontSize.caption,
                    fontWeight: AppFontWeight.captionRegular,
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/pis_logo.png",
                      width: 37,
                      height: 37,
                    ),
                    Image.asset(
                      "assets/images/polinema.png",
                      width: 48,
                      height: 48,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

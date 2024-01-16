import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/constants/font_weigth.dart';
import 'package:mobileapp_scabies/features/dashboard/view/dashboard_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.brandColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(500, 200),
              ),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/auth_image_2.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Insert App',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: AppColors.brandColor,
                    ),
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  const Text(
                    'Aplikasi Pendeteksi Dini Penyakit Kulit Scabies',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.brandColor,
                    ),
                  ),
                  const SizedBox(
                    height: 82.0,
                  ),
                  //set consumer buat login
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        color: AppColors.brandColor,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            IconlyLight.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "Mulai Sekarang",
                            style: TextStyle(
                              fontSize: AppFontSize.actionMedium,
                              fontWeight: AppFontWeight.actionSemiBold,
                              color: AppColors.white,
                              letterSpacing: 0.75,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

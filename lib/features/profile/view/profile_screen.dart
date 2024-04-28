import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/auth/view/auth_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Container(
                        width: 64,
                        height: 64,
                        color: AppColors.primary500,
                        child: Image.asset('assets/images/profile.jpg'),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'hellouserexample@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: AppColors.graySecondColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
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
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            IconlyLight.message,
                            color: AppColors.brandColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: Text('Kontak Kami'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Row(
                        children: [
                          Icon(
                            IconlyLight.shield_done,
                            color: AppColors.brandColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: Text('Privasi Polisi'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Row(
                        children: [
                          Icon(
                            IconlyLight.setting,
                            color: AppColors.brandColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: Text('Pengaturan'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            CupertinoPageRoute(
                              builder: (context) => const AuthScreen(),
                            ),
                          );
                        },
                        child: const Row(
                          children: [
                            Icon(
                              IconlyLight.logout,
                              color: AppColors.error500,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                'Keluar',
                                style: TextStyle(
                                  color: AppColors.error500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/auth/view/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    const duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brandColor,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/insert_app_logo.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          // Positioned(
          //   bottom: 35,
          //   right: 0,
          //   left: 0,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       const Text(
          //         'POWERED BY',
          //         style: TextStyle(
          //           fontSize: AppFontSize.caption,
          //           fontWeight: AppFontWeight.captionRegular,
          //           letterSpacing: 1.5,
          //           color: Colors.white,
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 12,
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Container(
          //             color: AppColors.aqua100,
          //             width: 37,
          //             height: 37,
          //             child: const Center(
          //               child: Text(
          //                 'Logo',
          //               ),
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //             color: AppColors.aqua100,
          //             width: 37,
          //             height: 37,
          //             child: const Center(
          //               child: Text(
          //                 'Logo',
          //               ),
          //             ),
          //           ),
          //           // Image.asset(
          //           //   "assets/images/pis_logo.png",
          //           //   width: 37,
          //           //   height: 37,
          //           // ),
          //           // Image.asset(
          //           //   "assets/images/polinema.png",
          //           //   width: 48,
          //           //   height: 48,
          //           // ),
          //         ],
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

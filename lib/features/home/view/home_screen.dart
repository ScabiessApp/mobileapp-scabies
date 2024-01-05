import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/features/home/widgets/heading_widget.dart';
import 'package:mobileapp_scabies/features/home/widgets/last_scan_widget.dart';
import 'package:mobileapp_scabies/features/home/widgets/latest_widget.dart';
import 'package:mobileapp_scabies/features/home/widgets/skin_problem_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingWidget(),
                SizedBox(
                  height: 24,
                ),
                LastScanWidget(),
                SizedBox(
                  height: 24,
                ),
                SkinProblemWidget(),
                SizedBox(
                  height: 24,
                ),
                LatestWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

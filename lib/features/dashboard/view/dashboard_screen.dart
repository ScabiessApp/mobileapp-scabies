import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/dashboard/provider/dashboard_provider.dart';
import 'package:mobileapp_scabies/features/scanning/view/report_data_diri_screen.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Consumer<DashboardProvider>(
      builder: (context, dashboardProvider, _) {
        return Scaffold(
          body: dashboardProvider.pages[dashboardProvider.selectedIndex],
          floatingActionButton: keyboardIsOpened
              ? const SizedBox.shrink()
              : FloatingActionButton(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors.brandColor,
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const ReportDataDiriScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: const Icon(
                    IconlyLight.search,
                    color: Colors.white,
                  ),
                ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            height: 60,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    dashboardProvider.icon.length,
                    (index) {
                      final icon = dashboardProvider.icon[index];
                      final iconNotActive =
                          dashboardProvider.notActiveIcon[index];
                      return GestureDetector(
                        onTap: () {
                          dashboardProvider.setSelectedIndex(context, index);
                        },
                        child: Column(
                          children: [
                            icon == Icons.fiber_dvr
                                ? const SizedBox(
                                    width: 25,
                                  )
                                : Icon(
                                    index == dashboardProvider.selectedIndex
                                        ? icon
                                        : iconNotActive,
                                    size: 25,
                                    color:
                                        index == dashboardProvider.selectedIndex
                                            ? AppColors.brandColor
                                            : AppColors.neutral700,
                                  ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: index == dashboardProvider.selectedIndex
                                    ? AppColors.brandColor
                                    : Colors.transparent,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

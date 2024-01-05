import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/state/finite_state.dart';
import 'package:mobileapp_scabies/features/history/view/history_screen.dart';
import 'package:mobileapp_scabies/features/home/view/home_screen.dart';
import 'package:mobileapp_scabies/features/news/view/news_screen.dart';
import 'package:mobileapp_scabies/features/profile/view/profile_screen.dart';

class DashboardProvider with ChangeNotifier {
  int selectedIndex = 0;

  // State untuk loading
  MyState state = MyState.initial;

  // Icon
  final List icon = [
    IconlyBold.home,
    IconlyBold.activity,
    Icons.fiber_dvr,
    IconlyBold.paper,
    IconlyBold.profile,
  ];

  final List notActiveIcon = [
    IconlyLight.home,
    IconlyLight.activity,
    Icons.fiber_dvr,
    IconlyLight.paper,
    IconlyLight.profile,
  ];

  // Pages untuk icon icon diatas
  final List<Widget> pages = [
    const HomeScreen(),
    const NewsScreen(),
    const HomeScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  // Set Pages yang dipilih
  void setSelectedIndex(BuildContext context, int index) {
    selectedIndex = index;

    notifyListeners();
  }
}

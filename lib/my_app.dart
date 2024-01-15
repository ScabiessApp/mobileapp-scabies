import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/keys/navigator_key.dart';
import 'package:mobileapp_scabies/features/dashboard/provider/dashboard_provider.dart';
import 'package:mobileapp_scabies/features/history/provider/history_provider.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DashboardProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ScannerProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HistoryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scabies App',
        home: const SplashScreen(),
        theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.brandColor),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: Colors.black,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            color: Colors.white,
            shadowColor: Colors.black,
            elevation: 20,
            surfaceTintColor: Colors.white,
          ),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.white,
          ),
          dialogTheme: const DialogTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
          datePickerTheme: const DatePickerThemeData(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
        ),
        navigatorKey: navigatorKey,
      ),
    );
  }
}

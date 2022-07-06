import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'agent.dart';
import 'common/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildTheme(),
      home: const Agent(),
    );
  }

  ThemeData _buildTheme() {
    ThemeData baseTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundColor,
      ),
      iconTheme: const IconThemeData(color: AppColors.primaryColor),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.openSansTextTheme(baseTheme.textTheme),
    );
  }
}

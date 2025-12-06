import 'package:flutter/material.dart';

import 'theme.dart';

class TemperamentThemeData {
  const TemperamentThemeData._();

  static final primary = _TemperamentThemeData();
}

class _TemperamentThemeData {
  ThemeData get temperamentTheme => ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: TemperamentColors.navyBackground,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          actionsPadding: const EdgeInsets.only(right: 8),
          titleTextStyle: TemperamentTextStyle.tertiary.exLarge.copyWith(
            color: TemperamentColors.darkTextColor,
          ),
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: TemperamentColors.darkTextColor),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
        ),
      );
}

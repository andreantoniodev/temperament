import 'package:flutter/material.dart';

const String temperamentFont = 'Inter';

class TemperamentTextStyle {
  const TemperamentTextStyle._();

  static final primary = _Primary();
  static final secondary = _Secondary();
  static final tertiary = _Tertiary();
}

class _Primary {
  TextStyle get normal => const TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 14,
      );

  TextStyle get medium => const TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 16,
      );

  TextStyle get large => const TextStyle(
        fontSize: 18,
      );

  TextStyle get exLarge => const TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 20,
      );

  TextStyle get gigant => const TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 22,
      );
}

class _Secondary {
  TextStyle get normal => const TextStyle(
        fontSize: 14,
      );

  TextStyle get medium => const TextStyle(
        fontSize: 16,
      );

  TextStyle get large => const TextStyle(
        fontSize: 18,
      );

  TextStyle get exLarge => const TextStyle(
        fontSize: 20,
      );

  TextStyle get gigant => const TextStyle(
        fontSize: 22,
      );
}

class _Tertiary {
  TextStyle get normal => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
      );

  TextStyle get medium => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  TextStyle get large => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      );

  TextStyle get exLarge => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );

  TextStyle get gigant => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
}

import 'package:flutter/material.dart';
import 'package:same_wave_app/resources/tools/color_changer.dart';

class AppColors {
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Color(0xFF1C1C1C);
  static const Color blue = Color(0xFF415CE9);
  static const Color grey = Color(0xFFBEBEBE);
  static const Color lightGrey = Color(0xFFF3F3F3);



  static const Color greyColor = Colors.grey;
  static const Color blueGreyColor = Colors.blueGrey;
  static const Color transparent = Colors.transparent;
  static const Color errorRed = Colors.red;

  static const Color whiteTextColor = Colors.white;
  static const Color blackTextColor = Colors.black;
  static const Color greenTextColor = Colors.green;
  static const Color redTextColor = Colors.red;

  MaterialColor primaryLightColor = ColorChanger().createMaterialSwatch(
    Colors.black.withOpacity(0.8),
  );

  MaterialColor secondaryLightColor = ColorChanger().createMaterialSwatch(
    Colors.white.withOpacity(0.9),
  );

  MaterialColor primaryDarkColor = ColorChanger().createMaterialSwatch(
    Colors.white.withOpacity(0.9),
  );
  MaterialColor secondaryDarkColor = ColorChanger().createMaterialSwatch(
    Colors.black.withOpacity(0.8),
  );
}

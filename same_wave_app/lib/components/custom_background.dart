import 'package:flutter/material.dart';
import 'package:same_wave_app/resources/theme/app_colors.dart';
import 'package:same_wave_app/resources/tools/platform_mode_checker.dart';

class CustomBackground extends StatelessWidget {
  final String image;

  const CustomBackground({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        PlatformModeChecker.isDarkMode(context)
            ? AppColors.blackColor.withOpacity(0.5)
            : AppColors.transparent,
        BlendMode.srcOver,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

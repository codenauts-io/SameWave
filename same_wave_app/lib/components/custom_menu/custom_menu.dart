import 'package:flutter/material.dart';
import 'package:same_wave_app/components/custom_background.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';

class CustomMenu extends StatelessWidget {
  final String image;
  const CustomMenu({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomBackground(image: AppAssets.menuBackground),
        ListView(
          shrinkWrap: true,
          children: const [
            Text('Dashboard'),
            Text('Settings'),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:same_wave_app/components/custom_background.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/screens/profile/profile.dart';

class ProfileScreenView extends StatefulWidget {
  final ProfileScreenState state;
  const ProfileScreenView(this.state, {super.key});

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(image: AppAssets.menuBackground),
          const CustomMenu(),
          const Column(
            children: [
              Center(
                child: Card(
                  child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:same_wave_app/components/custom_background.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/screens/files/files.dart';

class FilesScreenView extends StatefulWidget {
  final FilesScreenState state;
  const FilesScreenView(this.state, {super.key});

  @override
  State<FilesScreenView> createState() => _FilesScreenViewState();
}

class _FilesScreenViewState extends State<FilesScreenView> {
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
                    'Files',
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

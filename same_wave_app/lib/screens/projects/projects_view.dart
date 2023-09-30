import 'package:flutter/material.dart';
import 'package:same_wave_app/components/custom_background.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/screens/projects/projects.dart';

class ProjectsScreenView extends StatefulWidget {
  final ProjectsScreenState state;
  const ProjectsScreenView(this.state, {super.key});

  @override
  State<ProjectsScreenView> createState() => _ProjectsScreenViewState();
}

class _ProjectsScreenViewState extends State<ProjectsScreenView> {
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
                    'Projects',
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
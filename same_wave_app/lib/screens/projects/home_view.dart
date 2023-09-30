import 'package:flutter/material.dart';

import 'home.dart';

class ProjectsScreenView extends StatefulWidget {
  final ProjectsScreenState state;
  const ProjectsScreenView(this.state, {super.key});

  @override
  State<ProjectsScreenView> createState() => _ProjectsScreenViewState();
}

class _ProjectsScreenViewState extends State<ProjectsScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Projects'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:same_wave_app/screens/projects/home_view.dart';


class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => ProjectsScreenState();
}

class ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) => ProjectsScreenView(this);
}

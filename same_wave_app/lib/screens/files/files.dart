import 'package:flutter/material.dart';
import 'package:same_wave_app/screens/files/files_view.dart';

class FilesScreen extends StatefulWidget {
  const FilesScreen({super.key});

  @override
  State<FilesScreen> createState() => FilesScreenState();
}

class FilesScreenState extends State<FilesScreen> {
  @override
  Widget build(BuildContext context) => FilesScreenView(this);
}

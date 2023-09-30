import 'package:flutter/material.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';

import 'home.dart';

class HomeScreenView extends StatefulWidget {
  final HomeScreenState state;
  const HomeScreenView(this.state, {super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomMenu(),
    );
  }
}

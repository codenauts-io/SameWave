import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        Text('Dashboard'),
        Text('Settings'),
      ],
    );
  }
}

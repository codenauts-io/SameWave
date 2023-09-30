import 'package:flutter/material.dart';
import 'package:same_wave_app/screens/home/home_view.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => HomeScreenView(this);
}

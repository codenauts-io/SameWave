import 'package:flutter/material.dart';
import 'package:same_wave_app/screens/dashboard/dashboard_view.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) => DashboardScreenView(this);
}

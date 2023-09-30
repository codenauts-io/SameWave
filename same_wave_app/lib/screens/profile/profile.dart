import 'package:flutter/material.dart';
import 'package:same_wave_app/screens/profile/profile_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) => ProfileScreenView(this);
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:same_wave_app/provider/app/app_state.dart';
import 'package:same_wave_app/provider/menu/menu_state.dart';
import 'package:same_wave_app/provider/settings/settings_state.dart';
import 'package:same_wave_app/screens/home/home.dart';
import 'package:same_wave_app/screens/settings/settings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final appState = AppState();
  final menuState = MenuState();
  final settingsState = SettingsState();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: appState),
        ChangeNotifierProvider.value(value: menuState),
        ChangeNotifierProvider.value(value: settingsState),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

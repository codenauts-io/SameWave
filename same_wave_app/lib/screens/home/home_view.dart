import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:same_wave_app/components/custom_background.dart';

// import 'package:provider/provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/provider/app/app_state.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';

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
    final AppState appState = Provider.of<AppState>(context);
    // final textTheme = Theme.of(context).extension<TextThemeExtension>()!;
    return const Scaffold(
      body: Stack(
        children: [
          CustomMenu(),
        ],
      ),
    );
  }
}

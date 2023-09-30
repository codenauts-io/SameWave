import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/screens/dashboard/dashboard.dart';

class DashboardScreenView extends StatefulWidget {
  final DashboardScreenState state;
  const DashboardScreenView(this.state, {super.key});

  @override
  State<DashboardScreenView> createState() => _DashboardScreenViewState();
}

class _DashboardScreenViewState extends State<DashboardScreenView> {
  @override
  Widget build(BuildContext context) {
    // final AppState appState = Provider.of<AppState>(context);
    // final textTheme = Theme.of(context).extension<TextThemeExtension>()!;
    return const Scaffold(
      // appBar: AppBar(
      //   title: const CustomMenu(),
      // ),
      body: Stack(
        children: [
          CustomMenu(),
        ],
      ),
    );
  }
}

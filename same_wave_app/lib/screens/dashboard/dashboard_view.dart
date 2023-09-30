import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/screens/dashboard/dashboard.dart';
import 'package:same_wave_app/screens/projects/home.dart';

import 'dashboard_page.dart';

class DashboardScreenView extends StatefulWidget {
  final DashboardScreenState state;
  const DashboardScreenView(this.state, {super.key});

  @override
  State<DashboardScreenView> createState() => _DashboardScreenViewState();
}

class _DashboardScreenViewState extends State<DashboardScreenView> {

  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    // Connect SideMenuController and PageController together
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final AppState appState = Provider.of<AppState>(context);
    // final textTheme = Theme.of(context).extension<TextThemeExtension>()!;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomMenu(
            sideMenu: sideMenu,
            pageController: pageController,
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: const [
                DashboardPage(),
                ProjectsScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

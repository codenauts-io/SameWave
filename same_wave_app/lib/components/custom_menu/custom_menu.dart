import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/resources/theme/app_colors.dart';

import '../../resources/theme/text_style.dart';

class CustomMenu extends StatefulWidget {

  final SideMenuController sideMenu;
  final PageController pageController;

  const CustomMenu({
    super.key,
    required this.sideMenu,
    required this.pageController
  });

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  SideMenuItem getSpacer() {
    return SideMenuItem(
      builder: (context, displayMode) {
        return const SizedBox(height: 12);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<TextThemeExtension>()!;
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(
              controller: widget.sideMenu,
              style: SideMenuStyle(
                showTooltip: false,
                displayMode: SideMenuDisplayMode.auto,

                backgroundColor: Colors.white,
                unselectedIconColor: AppColors.blackColor,
                unselectedTitleTextStyle: textTheme.headlineSmall,

                selectedColor: AppColors.lightGrey,
                selectedIconColor: AppColors.blue,
                selectedTitleTextStyle: textTheme.headlineSmall.merge(const TextStyle(color: AppColors.blue)),

                hoverColor: AppColors.lightGrey,
                selectedHoverColor: AppColors.lightGrey,
                itemOuterPadding: const EdgeInsets.symmetric(horizontal: 32),
                itemInnerSpacing: 8,
                itemHeight: 40,

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.zero,
                )
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Image.asset(
                  AppAssets.logo,
                ),
              ),
              footer: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: SideMenuItem(
                  title: 'Support Center',
                  onTap: (index, _) {
                    widget.sideMenu.changePage(index);
                  },
                  icon: const Icon(TablerIcons.help_hexagon),
                ),
              ),
              items: [
                SideMenuItem(
                  builder: (context, displayMode) {
                    return const Divider(
                      endIndent: 0,
                      indent: 0,
                    );
                  },
                ),
                getSpacer(),
                SideMenuItem(
                  builder: (context, displayMode) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          color: AppColors.lightGrey,
                          border: Border.all(width: 1.0, color: AppColors.grey)
                        ),
                        child: Row(
                          children: <Widget>[
                            const Icon(TablerIcons.search),
                            const SizedBox(width: 8),
                            Text(
                              'Search',
                              style: textTheme.headlineSmall.merge(const TextStyle(fontSize: 16)),
                            )
                          ],
                        ),
                      )
                    );
                  },
                ),
                getSpacer(),
                getSpacer(),
                SideMenuItem(
                  builder: (context, displayMode) {
                    return const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'FEATURES',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    );
                  },
                ),
                getSpacer(),
                SideMenuItem(
                  title: 'Dashboard 2',
                  onTap: (index, _) {
                    widget.sideMenu.changePage(0);
                  },
                  icon: const Icon(TablerIcons.home),
                ),
                getSpacer(),
                SideMenuItem(
                  title: 'Projects',
                  onTap: (index, _) {
                    widget.sideMenu.changePage(1);
                  },
                  icon: const Icon(TablerIcons.folder),
                  trailing: const Icon(TablerIcons.chevron_down),
                ),
                getSpacer(),
                SideMenuItem(
                  title: 'Profile',
                  onTap: (index, _) {
                    widget.sideMenu.changePage(index);
                  },
                  icon: const Icon(TablerIcons.user),
                ),
                getSpacer(),
                SideMenuItem(
                  builder: (context, displayMode) {
                    return const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'COMPANY',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    );
                  },
                ),
                getSpacer(),
                SideMenuItem(
                  title: 'Payments',
                  onTap: (index, _) {
                    widget.sideMenu.changePage(index);
                  },
                  icon: const Icon(TablerIcons.credit_card),
                ),
                getSpacer(),
                const SideMenuItem(
                  title: 'Files',
                  icon: Icon(TablerIcons.file),
                ),
                getSpacer(),
                const SideMenuItem(
                  title: 'Calendar',
                  icon: Icon(TablerIcons.calendar),
                ),
                getSpacer(),
                const SideMenuItem(
                  title: 'Inbox',
                  icon: Icon(TablerIcons.inbox),
                ),
                getSpacer(),
                const SideMenuItem(
                  title: 'Settings',
                  icon: Icon(TablerIcons.settings),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

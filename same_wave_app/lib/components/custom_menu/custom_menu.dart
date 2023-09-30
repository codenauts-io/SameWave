import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:same_wave_app/components/custom_background.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/resources/theme/app_colors.dart';

class CustomMenu extends StatefulWidget {
  const CustomMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(
              controller: sideMenu,
              style: SideMenuStyle(
                  showTooltip: false,
                  displayMode: SideMenuDisplayMode.auto,
                  hoverColor: Colors.blue[100],
                  selectedHoverColor: Colors.blue[100],
                  selectedColor: AppColors.transparent,
                  selectedTitleTextStyle: const TextStyle(color: Colors.white),
                  selectedIconColor: Colors.white,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  backgroundColor: AppColors.greyColor),
              title: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 150,
                      maxWidth: 150,
                    ),
                    child: Image.asset(
                      AppAssets.dreamCitybackground,
                    ),
                  ),
                  const Divider(
                    indent: 8.0,
                    endIndent: 8.0,
                  ),
                ],
              ),
              footer: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[100], borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    child: Text(
                      'Codenauts',
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    ),
                  ),
                ),
              ),
              items: [
                SideMenuItem(
                  title: 'Dashboard',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.home),
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  tooltipContent: "This is a tooltip for Dashboard item",
                ),
                SideMenuItem(
                  title: 'Users',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.supervisor_account),
                ),
                SideMenuItem(
                  title: 'Files',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.file_copy_rounded),
                  trailing: Container(
                      decoration: const BoxDecoration(
                          color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
                        child: Text(
                          'New',
                          style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                        ),
                      )),
                ),
                SideMenuItem(
                  title: 'Download',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.download),
                ),
                SideMenuItem(
                  builder: (context, displayMode) {
                    return const Divider(
                      endIndent: 8,
                      indent: 8,
                    );
                  },
                ),
                SideMenuItem(
                  title: 'Settings',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.settings),
                ),
                // SideMenuItem(
                //   onTap:(index, _){
                //     sideMenu.changePage(index);
                //   },
                //   icon: const Icon(Icons.image_rounded),
                // ),
                // SideMenuItem(
                //   title: 'Only Title',
                //   onTap:(index, _){
                //     sideMenu.changePage(index);
                //   },
                // ),
                const SideMenuItem(
                  title: 'Exit',
                  icon: Icon(Icons.exit_to_app),
                ),
              ],
            ),
            Stack(
              children: [
                CustomBackground(image: AppAssets.menuBackground),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: [
                      Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Dashboard',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Users',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Files',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Download',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Settings',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Only Title',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Only Icon',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

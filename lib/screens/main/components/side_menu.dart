import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

import '../main_screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: SingleChildScrollView(
        child: Column(
                    children: [
        const DrawerHeader(
          child: Image(image: AssetImage('assets/images/logo.png')),
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_dashboard.svg",
          title: 'Dashboard',
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_tran.svg",
          title: 'Transaction',
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_task.svg",
          title: 'Task',
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_doc.svg",
          title: 'Documents',
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_store.svg",
          title: 'Store',
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_notification.svg",
          title: 'Notification',
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_profile.svg",
          title: 'Profile',
        ),
        DrawerListTile(
          press: () {},
          svgSrc: "assets/icons/menu_setting.svg",
          title: 'Settings',
        ),
        
                    ],
                  ),
      ),
    );
  }
}
class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white70),
      ),
    );
  }
}
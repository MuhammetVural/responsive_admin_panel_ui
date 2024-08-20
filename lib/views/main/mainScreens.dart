import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              child: Drawer(
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
              )),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.amber,
            ),
          ),
        ],
      )),
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
        title, style: TextStyle(color: Colors.white70),
      ),
    );
  }
}

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
              child: Column(
            children: [
              const DrawerHeader(
                child: Image(image: AssetImage('assets/images/logo.png')),
              ),
              ListTile(
                onTap: (){

                },
                leading: SvgPicture.asset("assets/icons/menu_dashboard.svg" ),
                title: Text('Dashboard',),
              ),
              
            ],
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

import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
        child: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            Text('Dashboard', style: Theme.of(context).textTheme.headlineSmall,),
            Container(height: 20, width: 60, color: Colors.yellow  ,),
            //const TextField(decoration: InputDecoration(fillColor: secondaryColor),)
          ],
        ),
      ],
    )));
  }
}

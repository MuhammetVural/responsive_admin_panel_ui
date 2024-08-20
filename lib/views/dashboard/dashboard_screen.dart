import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
        child: SafeArea(
            child: Column(
      children: [
        Container(
          color: Colors.green,
        ),
      ],
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: SafeArea(
            child: Column(
          children: [
            Header(),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    height: 600,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    height: 600,
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}

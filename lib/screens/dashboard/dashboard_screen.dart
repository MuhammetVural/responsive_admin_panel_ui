import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/storage_info_card.dart';

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
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryColor,
                    ),
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    //padding: EdgeInsets.all(defaultPadding),
                    margin: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryColor,
                    ),
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(defaultPadding),
                          child: Text(
                            'Storage Details',
                            style: Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Chart(),
                        StorageInfoCard(title: 'Documents Files', files: '1234 Files', capacity: '1.4GB', svgSource: 'assets/icons/doc_file.svg', ),
                        StorageInfoCard(title: 'Media Files', files: '1234 Files', capacity: '1.4GB', svgSource: 'assets/icons/media_file.svg', ),
                        StorageInfoCard(title: 'Odher Files', files: '1234 Files', capacity: '1.4GB', svgSource: 'assets/icons/folder.svg', ),
                        StorageInfoCard(title: 'Unknown', files: '1234 Files', capacity: '1.4GB', svgSource: 'assets/icons/unknown.svg', ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}


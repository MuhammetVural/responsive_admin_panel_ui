import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/storage_info_card.dart';
import 'components/storage_info_total.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Map<String, String>> storageInfoList = [
    {
      'title': 'Documents Files',
      'files': '1234 Files',
      'capacity': '1.4GB',
      'svgSource': 'assets/icons/doc_file.svg',
    },
    {
      'title': 'Media Files',
      'files': '1234 Files',
      'capacity': '1.4GB',
      'svgSource': 'assets/icons/media.svg',
    },
    {
      'title': 'Other Files',
      'files': '1234 Files',
      'capacity': '1.4GB',
      'svgSource': 'assets/icons/folder.svg',
    },
    {
      'title': 'Unknown',
      'files': '1234 Files',
      'capacity': '1.4GB',
      'svgSource': 'assets/icons/unknown.svg',
    },
  ];
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
                        StorageInfoListView(storageInfoList: storageInfoList)
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


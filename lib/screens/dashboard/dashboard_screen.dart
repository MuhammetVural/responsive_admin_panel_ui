import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_files_grid_view.dart';
import 'components/storage_info_card.dart';
import 'components/storage_info_total.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.gridList});
  final List<Map<String, dynamic>> gridList;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: SafeArea(
            child: Column(
          children: [
            Header(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: defaultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'My Files',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Add New',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const MyFielsGridView(),
                        const RecentFiles(),
                      ],
                    ),
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

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              //dataRowMinHeight: double.infinity,
              horizontalMargin: 0,
              columnSpacing: 100,
              
                columns: [
                  DataColumn(
                    headingRowAlignment: MainAxisAlignment.spaceBetween,
                    numeric: false,
                    label: Text(
                      'File Name',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                  DataColumn(
                    numeric: false,
                    label: Text(
                      'Date',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                  DataColumn(
                    numeric: false,
                    label: Text(
                      'Size',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                ],
                rows: List.generate(
                  recentList.length,
                  (index) => dataRowListviewBuilder(
                      recentList[index]['fileName'],
                      recentList[index]['date'],
                      recentList[index]['size'],
                      recentList[index]['svgSrcRecent'],),
                )),
          ),
        ],
      ),
    );
  }

  DataRow dataRowListviewBuilder(
      String fileName, String date, String size, String svgSrcRecent) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(svgSrcRecent),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileName),
              ),
            ],
          ),
        ),
        DataCell(
          Text(date),
        ),
        DataCell(
          Text(size),
        ),
      ],
    );
  }
}

final List<Map<String, dynamic>> recentList = [
  {
    'fileName': 'XD File',
    'date': '03/02/2020',
    'size': '1.4GB',
    'svgSrcRecent': 'assets/icons/xd_file.svg',
  },
  {
    'fileName': 'Figma File',
    'date': '03/02/2024',
    'size': '1.4GB',
    'svgSrcRecent': 'assets/icons/Figma_file.svg',
  },
  {
    'fileName': 'Documents ',
    'date': '03/02/2024',
    'size': '1.4GB',
    'svgSrcRecent': 'assets/icons/doc_file.svg',
  },
  {
    'fileName': 'Sound File',
    'date': '03/02/2024',
    'size': '1.4GB',
    'svgSrcRecent': 'assets/icons/sound_file.svg',
  },
  {
    'fileName': 'Media File',
    'date': '03/02/2024',
    'size': '1.4GB',
    'svgSrcRecent': 'assets/icons/media_file.svg',
  },
  {
    'fileName': 'Sals Pdf',
    'date': '03/02/2024',
    'size': '1.4GB',
    'svgSrcRecent': 'assets/icons/pdf_file.svg',
  },
  {
    'fileName': 'Excel File',
    'date': '03/02/2024',
    'size': '1.4GB',
    'svgSrcRecent': 'assets/icons/excel_file.svg',
  },
];

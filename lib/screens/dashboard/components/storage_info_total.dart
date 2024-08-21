import 'package:flutter/material.dart';

import 'storage_info_card.dart';

class StorageInfoListView extends StatelessWidget {
  const StorageInfoListView({
    super.key,
    required this.storageInfoList,
  });

  final List<Map<String, String>> storageInfoList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: storageInfoList.length,
      itemBuilder: (context, index) {
        return
        RepaintBoundary(
          child: StorageInfoCard(
              capacity: storageInfoList[index]['capacity']!,
              title: storageInfoList[index]['title']!,
              files: storageInfoList[index]['files']!,
              svgSource: storageInfoList[index]['svgSource']!),
        );
      },
    );
  }
}

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
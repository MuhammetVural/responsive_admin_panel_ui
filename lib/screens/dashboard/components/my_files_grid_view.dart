import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class MyFielsGridView extends StatelessWidget {
  const MyFielsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: !isMobile ? 4 : 2,
        crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
      ),
      itemCount: gridList.length,
      itemBuilder: (context, index) => GridContainer(
        title: gridList[index]['title']!,
        files: gridList[index]['files']!,
        gb: gridList[index]['gb']!,
        svgSrcGrid: gridList[index]['svgSrcGrid']!,
        ratio: gridList[index]['ratio']!,
        pressGrid: () {},
        color: gridList[index]['color']!,
      ),
    );
  }
}

class GridContainer extends StatelessWidget {
  const GridContainer({
    super.key,
    required this.title,
    required this.files,
    required this.gb,
    required this.svgSrcGrid,
    required this.pressGrid,
    required this.color, required this.ratio,
  });
  final String title, files, gb, svgSrcGrid;
  final VoidCallback pressGrid;
  final Color color;
  final int ratio;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: secondaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(
                  svgSrcGrid,
                ),
              ),
              InkWell(onTap: pressGrid, child: Icon(Icons.menu))
            ],
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Stack(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color.withOpacity(0.1),),
                
              ),
              LayoutBuilder(builder: (context, constraints) => Container(
                height: 5,
                width: constraints.maxWidth*(ratio/100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,),
                
              ),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                files,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.white70),
              ),
              Text(
                gb,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> gridList = [
  {
    'title': 'Documents',
    'files': '1234 Files',
    'gb': '1.4GB',
    'svgSrcGrid': 'assets/icons/Documents.svg',
    'press': '',
    'color': Colors.blue,
    'ratio': 10,
  },
  {
    'title': 'Google Drive',
    'files': '5677 Files',
    'gb': '1.1GB',
    'svgSrcGrid': 'assets/icons/google_drive.svg',
    'press': '',
    'color': Colors.orange,
    'ratio': 20,
  },
  {
    'title': 'One Drive',
    'files': '1234 Files',
    'gb': '1.4GB',
    'svgSrcGrid': 'assets/icons/one_drive.svg',
    'press': '',
    'color': Colors.lightBlueAccent,
    'ratio': 19,
  },
  {
    'title': 'Drop Box',
    'files': '5677 Files',
    'gb': '1.1GB',
    'svgSrcGrid': 'assets/icons/drop_box.svg',
    'press': '',
    'color': const Color.fromARGB(255, 0, 149, 255),
    'ratio': 50,
  },
];

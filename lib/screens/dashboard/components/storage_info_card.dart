import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
   const StorageInfoCard({
    super.key,
    required this.capacity,
    required this.title,
    required this.files,
    required this.svgSource,
  });
  

    final String capacity, title, files, svgSource;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding/2),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2,color: primaryColor.withOpacity(0.1),)
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(svgSource,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, maxLines: 1,overflow: TextOverflow.ellipsis,),
                  Text(files, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white70),)
                ],
              ),
            ),
          ),
          Text(capacity)
        ],
      ),
    );
  }
}

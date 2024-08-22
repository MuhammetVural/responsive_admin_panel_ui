import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/5,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                startDegreeOffset: -90,
                sections: pieChartSelectionDatas,
                centerSpaceRadius: 80),
          ),
          Positioned.fill(
            top: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '29.9',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        height: 0.9,
                      ),
                ),
                Text(
                  'of 128GB',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionDatas = [
  PieChartSectionData(
    value: 20,
    color: Colors.red,
    radius: 25,
    showTitle: false,
  ),
  PieChartSectionData(
      value: 10,
      color: primaryColor,
      radius: 20,
      showTitle: false,
      gradient: LinearGradient(colors: [Colors.orange, Colors.yellow])),
  PieChartSectionData(
    value: 8,
    color: primaryColor.withOpacity(0.7),
    radius: 17,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 8,
    color: primaryColor.withOpacity(0.2),
    radius: 14,
    showTitle: false,
  ),
];

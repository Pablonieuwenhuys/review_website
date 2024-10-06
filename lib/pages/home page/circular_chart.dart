import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(aspectRatio: 1.0,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                      value: 10,
                    color: const Color(0xFFFFADB3),
                  ),
                  PieChartSectionData(
                      value: 20,
                    color: const Color(0xFFADB3FF), // Corrected hex code
                  ),
                  PieChartSectionData(
                      value: 30,
                    color: const Color(0xFF6BDFDA),

                  ),
                  PieChartSectionData(value: 40),
                ]
              ),
            ),
        ),
        ),
      ),
    );
  }
}

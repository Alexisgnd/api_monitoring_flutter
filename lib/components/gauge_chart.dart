import 'package:flutter/material.dart';
import 'package:gauge_chart/gauge_chart.dart';

class GaugeChartWidget extends StatelessWidget {
  final double currentValue;

  const GaugeChartWidget({super.key, required this.currentValue});

  @override
  Widget build(BuildContext context) {
    return
    GaugeChart(
      children: [
        PieData(
          value: currentValue,
          color: currentValue < 99
              ? Colors.red.shade700
              : currentValue < 100
                  ? Colors.orange.shade700
                  : Colors.green.shade700,
          description: "%",
        ),
        PieData(
          value: 100 - currentValue,
          color: Colors.grey.shade300,
          description: "",
        ),
      ],
      animateDuration: const Duration(seconds: 1),
      start: 180,
      displayIndex: 0,
      shouldAnimate: true,
      animateFromEnd: false,
      isHalfChart: true,
      size: 200,
      showValue: false,
      borderWidth: 25,
    );
  }
}

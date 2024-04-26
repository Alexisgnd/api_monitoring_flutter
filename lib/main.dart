import 'package:flutter/material.dart';

import 'components/gauge_chart.dart';
import 'components/header_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double currentValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: HeaderApp(interfaceName: 'API Monitoring'),
            ),
            const SizedBox(height: 80),
            Align(
              alignment: Alignment.center,
              child: GaugeChartWidget(currentValue: currentValue),
            ),
          ],
        ),
      ),
    );
  }
}

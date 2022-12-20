import 'package:flutter/material.dart';
import 'package:morita_app/theme/tema.dart';
import 'package:fl_chart/fl_chart.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: temaGlobal,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicacion de mi morita'),
        ),
        body: Container(
          height: 300,
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(10, 10),
                      FlSpot(22, 24),
                      FlSpot(44, 11),
                    ],
                    isCurved: false,
                    // dotData: FlDotData(
                    //   show: false,
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

// class ChartTest extends StatefulWidget {
//   static final routeName = 'TEST';
//   const ChartTest({super.key});

//   @override
//   State<ChartTest> createState() => _ChartTestState();
// }

// class _ChartTestState extends State<ChartTest> {
//   List<_Point> data = [
//     _Point('Janddsf', 35),
//     _Point('Febsdfsdf', 28),
//     _Point('Marsdfsdf', 34),
//     _Point('Aprsdfsdf', 32),
//     _Point('Maysdfsdf', 40)
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Syncfusion Flutter chart'),
//         ),
//         body: Column(
//           children: [
//           //Initialize the chart widget
//           lamamada(data: data),
//           //un boton que al darle click cambie el valor de la grafica
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 data = [
//                   _Point('tt', 10),
//                   _Point('ee', 17),
//                   _Point('yy', 18),
//                   _Point('rr', 19),
//                   _Point('vv', 16)
//                 ];
                
//               });
//             }, 
//             child: const Text('Cambiar datos')
//           ),
//         ]

//         )
//     );
//   }
// }

// class lamamada extends StatelessWidget {
//   const lamamada({
//     Key? key,
//     required this.data,
//   }) : super(key: key);

//   final List<_Point> data;

//   @override
//   Widget build(BuildContext context) {
//     return SfCartesianChart(

//       primaryXAxis: CategoryAxis(),
//       // Chart title
//       title: ChartTitle(text: 'Half yearly sales analysis'),
//       // Enable legend
//       legend: Legend(isVisible: true),
//       // Enable tooltip
//       tooltipBehavior: TooltipBehavior(enable: true),
//       series: <ChartSeries<_Point, String>>[
//         LineSeries<_Point, String>(
//           dataSource: data,
//           xValueMapper: (_Point punto, _) => punto.fecha,
//           yValueMapper: (_Point punto, _) => punto.valor,
//           name: 'Sales',
//           // Enable data label
//           dataLabelSettings: DataLabelSettings(isVisible: true)
//         ),
//       ],
//     );
//   }
// }

// class _Point {
//   _Point(this.fecha, this.valor);

//   final String fecha;
//   final double valor;
// }
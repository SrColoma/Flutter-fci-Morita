import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sensores_app/provider.dart';
import 'package:sensores_app/services/valoresService.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class Censores extends StatelessWidget {
  static const routeName = 'censores';
  const Censores({super.key});

  @override
  Widget build(BuildContext context) {

    final ValoresService valoresService = Provider.of<ValoresService>(context);
    // print(valoresService.valores);

    return Scaffold(
      drawer: const MenuDrawer(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(10),

              sliver: SliverAppBar(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                     Radius.circular(20),
                  ),
                ),
                // floating: true,
                // snap: true,
                // expandedHeight: 200,
            
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      child: Row(
                        children: [
                          const Text('Frecuencia: ',style: TextStyle(color: Colors.white),),
                          const Text("2",style: TextStyle(color: Colors.white),),
                          const Text("h",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      onPressed: () => {
                        showDialog(context: context, 
                        builder: (_)  => NuevoFrecuenciaDialog(),
                      ),
                      },
                    ),
                  ),
                  // 
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text('S E N S O R E S'),
                ),
              ),
            ),
            // TittleBar('S E N S O R E S',
            //   accion: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: TextButton(
            //       child: const Text('Descargar',style: TextStyle(color: Colors.blue),),
            //       onPressed: () => {
                    
            //       },
            //     ),
            //   ),
            // ), 
            
            

            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 1000,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 2,
                ),
              // delegate con 5 graficoCard distintos  
              delegate: SliverChildListDelegate(
                 [
                  GraficoCard(
                    imagen: 'assets/images/PH.jpg',
                    titulo: 'Oxido disuelto',
                    media: 'x̄ 7',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.oxdix));
                      });
                      return puntos;
                    }(),
                  ),
                  GraficoCard(
                    imagen: 'assets/images/temperatura.jpg',
                    titulo: 'Temperatura',
                    media: 'x̄ 12°C',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.temp));
                      });
                      return puntos;
                    }(),
                  ),
                  GraficoCard(
                    imagen: 'assets/images/PH.jpg',
                    titulo: 'Salinidad',
                    media: 'x̄ 7',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.sal));
                      });
                      return puntos;
                    }(),
                  ),
                  GraficoCard(
                    imagen: 'assets/images/PH.jpg',
                    titulo: 'PH',
                    media: 'x̄ 7',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.ph));
                      });
                      return puntos;
                    }(),
                  ),
                  GraficoCard(
                    imagen: 'assets/images/turbidez.jpg',
                    titulo: 'Turbidez',
                    media: 'x̄ 90 ntuC',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.turbidez));
                      });
                      return puntos;
                    }(),
                  ),
                  GraficoCard(
                    imagen: 'assets/images/TDS.jpg',
                    titulo: 'TDS',
                    media: 'x̄ 144 ppm',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.tds));
                      });
                      return puntos;
                    }(),
                  ),
                  GraficoCard(
                    imagen: 'assets/images/TDS.jpg',
                    titulo: 'LLuvia',
                    media: 'x̄ 144 ppm',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.lluvia));
                      });
                      return puntos;
                    }(),
                  ),
                  GraficoCard(
                    imagen: 'assets/images/TDS.jpg',
                    titulo: 'NIvel de agua',
                    media: 'x̄ 144 ppm',
                    puntos: () {
                      List<Point> puntos = [];
                      valoresService.valores.body.items.forEach((element) {
                        puntos.add(Point(element.fecha.toString(), element.valores.nivel));
                      });
                      return puntos;
                    }(),
                  ),
                  
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}


class GraficoCard extends StatefulWidget {

  final String imagen;
  final String titulo;
  final String media;
  final List<Point> puntos;


  const GraficoCard({
    super.key, 
    required this.imagen, 
    required this.titulo, 
    required this.media, 
    required this.puntos
  });


  @override
  State<GraficoCard> createState() => _GraficoCardState();
}

class _GraficoCardState extends State<GraficoCard> {

  set puntos(List<Point> puntos) {
    this.puntos = puntos;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: Image.asset(widget.imagen).image,

                ),
                
                Text(widget.titulo,style: TextStyle(fontSize: 20),),
                Text(widget.media,style: TextStyle(fontSize: 20),),
              ],
            ),
            GraficoLineaPorFecha(
              data: widget.puntos
            ),
            // graficoTMP(
            //   puntos: puntos
            // ),

          ],
        ),
      ),
    );
          
  }
}

class GraficoLineaPorFecha extends StatelessWidget{
  const GraficoLineaPorFecha({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<Point> data;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(

      primaryXAxis: CategoryAxis(),
      // Chart title
      // title: ChartTitle(text: 'Half yearly sales analysis'),
      // Enable legend
      // legend: Legend(isVisible: true),
      // Enable tooltip
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries<Point, String>>[
        LineSeries<Point, String>(
          dataSource: data,
          xValueMapper: (Point punto, _) => punto.fecha,
          yValueMapper: (Point punto, _) => punto.valor,
          name: 'valores',
          // Enable data label
          dataLabelSettings: DataLabelSettings(isVisible: true)
        ),
      ],
    );
  }

}

// class graficoTMP extends StatelessWidget {
//   final List<FlSpot> puntos;
//   const graficoTMP({
//     required this.puntos,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: Padding(
//         padding: const EdgeInsets.all(4.0),
        
//         // mostrar "tiempo como eje x"" y "valor como eje y"
//         // no mostrar numeros arriba ni a la derecha
//         // con leyenda
//         child: LineChart(
//           LineChartData(
//             lineTouchData: LineTouchData(
//               enabled: true
//             ),
            
//             gridData: FlGridData(
//               show: true,
//               drawVerticalLine: true,
//               drawHorizontalLine: true,
//               horizontalInterval: 10,

//             ),
//             baselineY: 55,
//             titlesData: FlTitlesData(
//               topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//               rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//               bottomTitles: AxisTitles(
//                 axisNameWidget: const Text('Tiempo'),
//                 sideTitles: SideTitles(showTitles: true)
//               ),
//               leftTitles: AxisTitles(
//                 axisNameWidget: const Text('Valor'),
//                 drawBehindEverything: true,
//                 sideTitles: SideTitles(showTitles: true, reservedSize: 50)
//               ),
//             ),
//             borderData: FlBorderData(show: false),
//             lineBarsData: [
//               LineChartBarData(
//                 spots: puntos,
//                 isCurved: false,

//               ),
//             ],
//           ),
//         ),

        // child: LineChart(
        //   LineChartData(

            
        //     lineBarsData: [
        //       LineChartBarData(
        //         spots: puntos
        //       ),
        //     ],
        //   ),
        // ),
//       ),
//     );
//   }
// }
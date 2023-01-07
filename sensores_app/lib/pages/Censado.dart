import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Censado extends StatelessWidget {
  const Censado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            TittleBar('Piscina23 - 12/04/1998',
              accion: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: const Text('Descargar',style: TextStyle(color: Colors.blue),),
                  onPressed: () => {
                    
                  },
                ),
              ),
            ), 
            
            

            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 1000,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 2,
                ),
              // delegate con 5 graficoCard distintos  
              delegate: SliverChildListDelegate(
                const [
                  GraficoCard(
                    imagen: 'assets/images/PH.jpg',
                    titulo: 'PH',
                    media: 'x̄ 7',
                    puntos: [
                      FlSpot(0, 0),
                      FlSpot(20, 10),
                      FlSpot(30, 15),
                      FlSpot(34, 34),
                      FlSpot(40, 36),
                      FlSpot(50, 36),
                    ],
                  ),
                  GraficoCard(
                    imagen: 'assets/images/TDS.jpg',
                    titulo: 'TDS',
                    media: 'x̄ 144 ppm',
                    puntos: [
                      FlSpot(0, 0),
                      FlSpot(30, 24),
                      FlSpot(60, 10),
                      FlSpot(80, 36),
                    ],
                  ),
                  GraficoCard(
                    imagen: 'assets/images/temperatura.jpg',
                    titulo: 'Temperatura',
                    media: 'x̄ 12°C',
                    puntos: [
                      FlSpot(0, 20),
                      FlSpot(34, 34),
                      FlSpot(60, 10),
                      FlSpot(80, 36),
                    ],
                  ),
                  GraficoCard(
                    imagen: 'assets/images/turbidez.jpg',
                    titulo: 'Turbidez',
                    media: 'x̄ 90 ntuC',
                    puntos: [
                      FlSpot(0, 0),
                      FlSpot(10, 34),
                      FlSpot(20, 10),
                      FlSpot(30, 10),
                      FlSpot(40, 36),
                      FlSpot(50, 36),
                    ],
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


class GraficoCard extends StatelessWidget {

  final String imagen;
  final String titulo;
  final String media;
  final List<FlSpot> puntos;


  const GraficoCard({
    super.key, 
    required this.imagen, 
    required this.titulo, 
    required this.media, 
    required this.puntos
    });

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
                  backgroundImage: Image.asset(imagen).image,

                ),
                
                Text(titulo,style: TextStyle(fontSize: 20),),
                Text(media,style: TextStyle(fontSize: 20),),
              ],
            ),
            graficoTMP(
              puntos: puntos
            ),

          ],
        ),
      ),
    );
          
  }
}

class graficoTMP extends StatelessWidget {
  final List<FlSpot> puntos;
  const graficoTMP({
    required this.puntos,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: puntos
              ),
            ],
          ),
        ),
      ),
    );
  }
}
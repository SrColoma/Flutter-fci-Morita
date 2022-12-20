import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morita_app/theme/tema.dart';
import 'package:fl_chart/fl_chart.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final bool pantalla = MediaQuery.of(context).size.width > 1000;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: temaGlobal,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('S E N S O R E S')),
        ),
        drawer: pantalla? null : Drawer(child:Mydrawer() ,),
        body: Row(
          children: [
            if(pantalla) Container(child: Mydrawer(),width: 250,),
            Flexible(child: sensoresBody(pantalla)),
          ],
        ),
      ),
    );
  }

  Column sensoresBody(bool pantalla) {
    return Column(
        //centrar columna
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("titulo"),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  value: 1,
                  items: [
                    DropdownMenuItem(
                      child: Text('    Piscina 1  '),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text('    Piscina 2  '),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text('    Piscina 3  '),
                      value: 3,
                    ),
                  ], onChanged: (onChanged) {},
                ),
              ),


              OutlinedButton(
                onPressed: () {},
                child: const Text('Actualizar'),
              )

            ],
          ),
          
          gridCharts(pantalla: pantalla,),
        ],
      );
  }

  Column Mydrawer() {
    return Column(
      children:[
        const DrawerHeader(child: Icon(Icons.favorite_rounded),),
        ListTile(
          leading: const Icon(Icons.sensors),
          title: const Text('S E N S O R E S'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.content_paste_search),
          title: const Text('R E G I S T R O'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.pool),
          title: const Text('P I S C I N A S'),
          onTap: (){},
        ),
      ]
    );
  }
}

class Cuadrado extends StatelessWidget {
  const Cuadrado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

class gridCharts extends StatelessWidget {
  const gridCharts({
    Key? key,
    required this.pantalla,
  }) : super(key: key);

  final bool pantalla;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        crossAxisCount: pantalla? 2 : 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 16/9,
        children:  [
          const graficoTMP(),
          const graficoTMP(),
          const graficoTMP(),
          const graficoTMP(),
          
        ],
      ),
    );
  }
}

class graficoTMP extends StatelessWidget {
  const graficoTMP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Temperatura'),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(10, 10),
                      const FlSpot(22, 24),
                      const FlSpot(30, 14),
                      const FlSpot(44, 11),
                      const FlSpot(49, 19),
                    ],
                    isCurved: true,
                    // dotData: FlDotData(
                    //   show: false,
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ]
    );
  }
}
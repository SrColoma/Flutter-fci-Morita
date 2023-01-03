import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class PiscinasPage extends StatelessWidget {
  const PiscinasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const TittleBar('P I S C I N A S'),
            
            //el grid de las piscinas
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 600,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 5 / 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return PiscinaCard(
                      index: index,
                    );
                  },
                  childCount: 5,
                ),
              ),
            ),
            
            //el boton de agregar piscina
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[900] ?.withOpacity(0.4),
                        ),
                        child: const Center(
                          child: Icon(Icons.add,size: 60,),
                        ),
                      ),
                      onTap: () {
                        // Navigator.pushNamed(context, 'piscinasInfo');
                      },
                    ),
                  ],
                ),
              ),              // ),
            ),
          ],
        ),
      ),
    );
  }
}

class PiscinaCard extends StatelessWidget {
  final int index;
  final String nombre;

  const PiscinaCard({
    Key? key,
    required this.index,
    this.nombre = "Piscina",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.pushNamed(context, 'piscinasInfo');
      },
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue[
              //si el residuo de la division es 0, entonces el color es 50, sino es 100 * (index % 9)
              //ocea todos los tiles seran pintados de azul, pero cada 9 tiles, el color sera 50
              (100 * (index % 9)) == 0 ? 50 : (100 * (index % 9))
            ]?.withOpacity(0.1),
            
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // estado de la piscina
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Reposo...", style: TextStyle(color: Colors.blueGrey, fontSize: 12),),
                    Container(
                      width:10,
                    ),
                    StatusDot(Colors.blueGrey),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text("$nombre $index",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class PiscinasPage extends StatelessWidget {
  const PiscinasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           TittleBar('P I S C I N A S',
            accion: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: const Text('Agregar Piscina',style: TextStyle(color: Colors.blue),),
                onPressed: (){},
              ),
            ),
          ),
        
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
          
          
        ],
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
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.pushNamed(context, 'piscinasInfo');
        },
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


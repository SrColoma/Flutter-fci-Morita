import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'StatusDot.dart';

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
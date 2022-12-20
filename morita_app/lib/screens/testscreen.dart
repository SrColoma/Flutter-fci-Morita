
import 'package:flutter/material.dart';
import 'package:morita_app/screens/loguin.dart';

class testScreen extends StatelessWidget {
  const testScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Morita App'),
      ),

      body: const loguinScreen(),
      // body: const Center(
      //   //child: Text('Ancho de la pantalla: ${MediaQuery.of(context).size.width} píxeles'),
      //   child: loguinScreen(),
      // ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loguin extends StatelessWidget {
  const Loguin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //loguin con thema de cupertino dentro de un recuadro centrado en la pantalla
      body: Center(
        child: Container(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/PH.jpg'),
              ),
              SizedBox(height: 10),
              const Text('Sensores Morita System S.A. de C.V.'),
              SizedBox(height: 20),
              CupertinoTextField(
                style: TextStyle(color: Colors.white),
                placeholder: 'Usuario',
              ),
              SizedBox(height: 4),
              CupertinoTextField(
                //modo password
                obscureText: true,
                style: TextStyle(color: Colors.white),
                placeholder: 'Contraseña',
              ),
              CupertinoButton(
                child: const Text('Iniciar Sesión'),
                onPressed: () => {
                  Navigator.popAndPushNamed(context, 'piscinaPage'),
                  // Navigator.pop(context, 'piscinaPage'),
                },
              ),
            ],
          ),
        ),
      ),
      // body: SafeArea(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text('Loguin'),
      //       CupertinoTextField(
      //         placeholder: 'Usuario',
      //       ),
      //       CupertinoTextField(
      //         placeholder: 'Contraseña',
      //       ),
      //       CupertinoButton(
      //         child: const Text('Iniciar Sesión'),
      //         onPressed: () => {
      //           Navigator.pushNamed(context, 'piscinaPage'),
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
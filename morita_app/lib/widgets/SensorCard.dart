

import 'package:flutter/material.dart';
import 'package:morita_app/router/app_routes.dart';

class SensorCard extends StatelessWidget {
  
  String nombreSensor;
  String valorSensor;
  String duracion;
  String foto;
  
  SensorCard({
    Key? key,
    this.nombreSensor = 'nombreSensor',
    this.valorSensor = 'valorSensor',
    this.duracion = 'duracion',
    this.foto = 'assets/images/temperatura.jpg',
  }) : super(key: key);

  BoxDecoration decoracion(){
    return BoxDecoration(
            color: const Color.fromARGB(14, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          // Acción a realizar cuando se hace clic en el elemento
          Navigator.pushReplacementNamed(context,'loguin_screen');
          // navegar a la ruta loguin_screen
          
        },
        child: Container(
          decoration: decoracion(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: Container(
                        color: Colors.white,
                        child: Image.asset(foto)),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        nombreSensor,
                        style: const TextStyle(
                          // fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Promedio: $valorSensor',
                        style: const TextStyle(
                          // fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Duracion del senso: $duracion min',
                        style: const TextStyle(
                          // fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
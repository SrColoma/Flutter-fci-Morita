import 'package:flutter/material.dart';
import 'package:morita_app/router/app_routes.dart';
import 'package:morita_app/screens/homeScreen.dart';

class loguinScreen extends StatelessWidget {
  const loguinScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.black87,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    Text(
                      'Log in',
                      style: TextStyle(fontSize: 32),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),

                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
                

                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'home_screen');
                      //TODO: verificar las credenciales e ingreasar a la app
                      
                    },
                    child: const Text('Log in'),
                  ),
                    
                  ] 
                  
                ),

              ],
            ),
          ),
        ),
      ),
    );


  }
}
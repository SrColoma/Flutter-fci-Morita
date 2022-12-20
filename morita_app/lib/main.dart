import 'package:flutter/material.dart';
import 'package:morita_app/router/app_routes.dart';
import 'package:morita_app/screens/screens.dart';
import 'package:morita_app/theme/tema.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: temaGlobal,
      title: 'Material App',
      initialRoute: 'loguin_screen',
      routes: App_Routes.rutas,
      //genera un nuevo testscene
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (context) => const testScreen(),
      ),

    );
  }
}

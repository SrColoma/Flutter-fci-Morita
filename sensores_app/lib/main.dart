import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:sensores_app/pages/Pages.dart';
import 'package:sensores_app/provider.dart';

import 'services/services.dart';

void main() async{
  await dotenv.load(fileName: ".env");
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => provider()),
          ChangeNotifierProvider(create: (_) => ValoresService()),
        ],
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'Camaronera',
      initialRoute: Loguin.routeName,
      routes: {
        Loguin.routeName          : (context) => const Loguin(),
        PiscinasPage.routeName    : (context) => const PiscinasPage(),
        ReportesPage.routeName    : (context) => const ReportesPage(),
        ReporteConcreto.routeName : (context) => const ReporteConcreto(),
        Censores.routeName        : (context) => const Censores(),
        // ChartTest.routeName       : (context) => const ChartTest(),
      },
    );
  }


}


//TODO: pensar que hacer con el boton individual de cada piscina
// reacer la pantalla de reportes, mirar el documento para guiarse, filtros y descarga
// pantalla de gestion de usuarios
import 'package:flutter/material.dart';
import 'package:inv_test_app/pages/Pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Camaronera',
      initialRoute: 'piscinaPage',
      routes: {
        'piscinaPage': (context) => const PiscinasPage(),
        'nuevaPiscina': (context) => const NuevaPiscina(),
        'piscinasInfo': (context) => const PiscinasInfo(),
        'nuevoCenso': (context) => const NuevoCenso(),
        'censado': (context) => const Censado(),
      },
    );
  }

  
}


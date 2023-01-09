import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:sensores_app/pages/Pages.dart';
import 'package:sensores_app/provider.dart';

void main() async{
  await dotenv.load(fileName: ".env");
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => provider()),
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
      theme: ThemeData.dark(),
      title: 'Camaronera',
      initialRoute: 'loguin',
      routes: {
        'loguin': (context) => const Loguin(),
        'piscinaPage': (context) => const PiscinasPage(),
        'piscinasInfo': (context) => const PiscinasInfo(),
        'censado': (context) => const Censado(),
      },
    );
  }


}
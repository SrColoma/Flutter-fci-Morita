import 'package:flutter/material.dart';

import 'package:morita_app/screens/screens.dart';

class App_Routes {

  static Map<String, Widget Function(BuildContext)> rutas = {
    'testScreen': (context) => const testScreen(),
    'loguin_screen': (context) => const loguinScreen(),
    'home_screen': (context) => const homeScreen(),
  };
}
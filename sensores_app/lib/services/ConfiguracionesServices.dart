import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';

class ConfiguracionesServices extends ChangeNotifier {
  final List<Configuraciones> _configuraciones = [];
  bool isLoading = true;

  ConfiguracionesServices() {
    this.loadProducts();
  }

  loadProducts() async {
    final url = Uri.http(dotenv.env['BASE_URL_API']!, '/camaronGetBoxConfig');
    final resp = await http.get(url);

    final configuraciones = configuracionesFromJson(resp.body);

    print(configuraciones.toJson());
    // this.isLoading = true;
    // notifyListeners();

    // // await Future.delayed(Duration(seconds: 2));

    // this.isLoading = false;
    // notifyListeners();
  }

  //hacer fetch de valores
}
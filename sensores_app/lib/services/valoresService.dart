import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';
import '../models/models.dart';

class ValoresService  extends ChangeNotifier {
  Valores _valores = new Valores(status: 0, body: new Body(items: [], count: 0, scannedCount: 0));
  bool isLoading = true;

  ValoresService() {
    this.loadProducts();
  }

  loadProducts() async {

    // final url = Uri.http(dotenv.env['BASE_URL_API']!, '/camaronGetAllValores');
    final url = Uri.https('kmf7eub7se.execute-api.us-west-1.amazonaws.com','/camaronGetAllValores');
    try{
      final resp = await http.get(url);
      _valores = valoresFromJson(resp.body);
      print(_valores.body.items[0].valores.tds);

    }catch(e){
      print("ahi vamos- si ves esto es que no se pudo conectar a la api");
      print(e);
    }

    // print(_valores.items);
    // _valores.items.forEach((element) {
      // print(element.toJson());
      // print("fecha: ",element.fecha);
      // print("valor: ",element.valores.tds);
      // print("fecha: ${element.fecha}");
      // print(element.valores.); //element.valores.tds

    // });
    // print(_valores.items[0].valores.tds);
    // _valores.items.map((e) => {
    //   print(e.valores.tds),
    //   }
    // );

    // print(valores.toJson());
    
    // this.isLoading = true;
    // notifyListeners();

    // // await Future.delayed(Duration(seconds: 2));

    this.isLoading = false;
    notifyListeners();
  }

  get valores => this._valores;

  
}
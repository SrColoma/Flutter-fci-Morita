import 'package:flutter/foundation.dart';
import 'package:sensores_app/services/AwsServices.dart';

class provider with ChangeNotifier {
  AwsServices awsServices = AwsServices();

  AwsServices get getAwsServices => awsServices;

  // Future<void> getDatos({
  //   required String c1,
  //   required String c2,
  // }) async {
  //   this.cosa1 = c1;
  //   this.cosas2 = c2;
  //   notifyListeners();
  // }
  // int _dato = 0;
  // set dato(int dato) {
  //   notifyListeners();
  // }
}

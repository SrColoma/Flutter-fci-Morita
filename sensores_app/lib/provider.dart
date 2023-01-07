import 'package:flutter/foundation.dart';

class provider with ChangeNotifier {
  String cosa1 = "";
  String cosas2 = "";

  String get getCosa1 => cosa1;
  String get getCosa2 => cosas2;

  Future<void> getDatos({
    required String c1,
    required String c2,
  }) async {
    this.cosa1 = c1;
    this.cosas2 = c2;
    notifyListeners();
  }
}

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeNotify2 = ChangeNotifierProvider<Provider22>((ref) {
  return Provider22();
});

class Provider22 extends ChangeNotifier {
  Provider22();

  int count = 0;

  void plus(){
    count++;
    notifyListeners();
  }
}
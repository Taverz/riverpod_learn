import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeNotify1 = ChangeNotifierProvider<Provider1>((ref) {
  return Provider1();
});

class Provider1 extends ChangeNotifier {
  Provider1();

  int count = 0;

  void plus(){
    count++;
    notifyListeners();
  }
}
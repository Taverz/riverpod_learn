import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider1 = Provider<Provider3>((ref) {
  return Provider3();
});

class Provider3  {
  Provider3();

  int count = 0;

  void plus(){
    count++;
  }
}
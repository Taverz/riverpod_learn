import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider2 = Provider<Provider4>((ref) {
  return Provider4();
});

class Provider4  {
  Provider4();

  int count = 0;

  void plus(){
    count++;
  }
}
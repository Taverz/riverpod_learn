import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentQuestion = FutureProvider<int>((ref) {
  int count = 0;

  void plus() async {
    count++;
  }

  plus();
  return count;
});

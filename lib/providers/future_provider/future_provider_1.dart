import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentQuestionFututre = FutureProvider<int>((ref) async {
  final classData =
      CountFutureProvider((ref) => Future.delayed(const Duration(seconds: 1)));
  await classData.plus();
  return classData.count;
});

class CountFutureProvider extends FutureProvider {
  CountFutureProvider(super.createFn);

  int count = 0;

  Future<void> plus() async {
    count++;
  }
}

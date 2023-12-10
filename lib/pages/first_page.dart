import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_learn/providers/change_notify/change_notify_1.dart';
import 'package:riverpod_learn/providers/future_provider/future_provider_1.dart';
import 'package:riverpod_learn/providers/norifer_provider/notider_provider_1.dart';
import 'package:riverpod_learn/providers/provider/provider_1.dart';
import 'package:riverpod_learn/providers/provider/provider_async_2.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: Column(
        children: [
          HookConsumer(
            builder: (context, ref, child) {
              // listenProv(ref);
              // plus(ref);
              return Container();
            },
          )
        ],
      ),
    );
  }

  void listenProv(WidgetRef ref) {
    final changeNotify1W = ref.watch(changeNotify1);
    final currentQuestionFututreW = ref.watch(currentQuestionFututre);
    final countNotifyProviderW = ref.watch(countNotifyProvider);
    final provider1W = ref.watch(provider1);
    final countStreamProviderW = ref.watch(countStreamProvider);
  }

  void plus(WidgetRef ref) {
    final datFuture1 = ref.watch(changeNotify1);
    datFuture1.plus();
    // final datFuture1Notify = ref.watch(changeNotify1.notifier);
    // datFuture1Notify.plus();
    final datFuture2 = ref.watch(currentQuestionFututre);
    final datFuture3Notify = ref.watch(countNotifyProvider.notifier);
    datFuture3Notify.plus();
    final datFuture3 = ref.watch(countNotifyProvider);
    final datFuture4 = ref.watch(provider1);
    datFuture4.plus();
    final datFuture5 = ref.watch(countStreamProvider);
    /// * Утилита для безопасного управления асинхронными данными.
    /// * Используя AsyncValue , вы гарантированно не сможете забыть обработать состояние загрузки/ошибки асинхронной операции.
    /// * Auto union class
    // datFuture5.map(data: (data){}, error: (message){}, loading: (ss){},);
  }
}

// HookConsumerWidget
// hooks_riverpod

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HookRiverpodPage extends HookConsumerWidget {
  const HookRiverpodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HookRiverpodPage'),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
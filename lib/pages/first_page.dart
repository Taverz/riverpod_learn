import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
              return Container();
            },
          )
        ],
      ),
    );
  }
}

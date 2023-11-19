import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelfPage extends HookConsumerWidget {
  const SelfPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calc = ref.watch(calcProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(calc.toString()),
      ),
      body: const Center(child: Text('No Tabs Here')),
    );
  }
}

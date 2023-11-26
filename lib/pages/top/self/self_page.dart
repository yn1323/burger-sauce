import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelfPage extends HookConsumerWidget {
  const SelfPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('moge'),
      ),
      body: const Center(child: Text('No Tabs Here')),
    );
  }
}

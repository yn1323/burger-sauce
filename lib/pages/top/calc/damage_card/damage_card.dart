import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DamageCard extends HookConsumerWidget {
  const DamageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calc = ref.watch(calcProvider);
    final calcNotifier = ref.watch(calcProvider.notifier);

    return Card(
      child: ListTile(
        leading: const FlutterLogo(size: 72.0),
        title: const Text('Three-line ListTile'),
        subtitle: Container(
          height: 100,
        ),
      ),
    );
  }
}

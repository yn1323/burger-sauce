import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DamageCardAddButton extends HookConsumerWidget {
  const DamageCardAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calc = ref.watch(calcProvider);
    final calcNotifier = ref.watch(calcProvider.notifier);

    return Card(
      child: SizedBox(
        height: 100,
        child: InkWell(
          onTap: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

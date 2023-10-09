import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DamageCalculationPage extends HookWidget {
  const DamageCalculationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('DamageCalculationPage',
          style: Theme.of(context).textTheme.headlineMedium),
    ]);
  }
}

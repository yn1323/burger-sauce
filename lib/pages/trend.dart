import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TrendPage extends HookWidget {
  const TrendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('TrendPage', style: Theme.of(context).textTheme.headlineMedium),
    ]);
  }
}

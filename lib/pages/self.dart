import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SelfPage extends HookWidget {
  const SelfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('SelfPage', style: Theme.of(context).textTheme.headlineMedium),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingPage extends HookWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('dあaabb', style: Theme.of(context).textTheme.headlineMedium),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Press me'),
      ),
    ]);
  }
}

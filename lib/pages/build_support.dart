import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BuildSupportPage extends HookWidget {
  const BuildSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('BuildSupportPage',
          style: Theme.of(context).textTheme.headlineMedium),
    ]);
  }
}

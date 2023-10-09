import 'package:burger_sauce/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingPage extends ConsumerStatefulWidget {
  const SettingPage({super.key});

  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends ConsumerState<SettingPage> {
  @override
  void initState() {
    super.initState();
    ref.read(counterProvider);

    print(ref.read(counterProvider));
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final controller = ref.watch(counterProvider);
    return Row(children: [
      Text('moge', style: Theme.of(context).textTheme.headlineMedium),
      Text(controller.toString(),
          style: Theme.of(context).textTheme.headlineMedium),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Press me'),
      ),
    ]);
  }
}

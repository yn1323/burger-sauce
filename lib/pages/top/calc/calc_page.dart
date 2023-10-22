import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CalcPage extends HookWidget {
  const CalcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Non-Tabbed Page"),
      ),
      body: const Center(child: Text('No Tabs Here')),
    );
  }
}

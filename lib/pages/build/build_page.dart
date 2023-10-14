import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BuildPage extends HookWidget {
  const BuildPage({super.key});

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

import 'package:flutter/material.dart';

class SelfPage extends StatefulWidget {
  const SelfPage({super.key});

  @override
  State<SelfPage> createState() => _SelfPageState();
}

class _SelfPageState extends State<SelfPage> {
  @override
  Widget build(BuildContext context) {
    return Text('SelfPage 1',
        style: Theme.of(context).textTheme.headlineMedium);
  }
}

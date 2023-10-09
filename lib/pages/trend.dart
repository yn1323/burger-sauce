import 'package:flutter/material.dart';

class TrendPage extends StatefulWidget {
  const TrendPage({super.key});

  @override
  State<TrendPage> createState() => _TrendPageState();
}

class _TrendPageState extends State<TrendPage> {
  @override
  Widget build(BuildContext context) {
    return Text('TrendPage 1',
        style: Theme.of(context).textTheme.headlineMedium);
  }
}

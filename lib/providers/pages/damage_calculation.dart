import 'package:flutter/material.dart';

class DamageCalculationPage extends StatefulWidget {
  const DamageCalculationPage({super.key});

  @override
  State<DamageCalculationPage> createState() => _DamageCalculationPageState();
}

class _DamageCalculationPageState extends State<DamageCalculationPage> {
  @override
  Widget build(BuildContext context) {
    return Text('DamageCalculationPage 1',
        style: Theme.of(context).textTheme.headlineMedium);
  }
}

import 'package:flutter/material.dart';

class BuildSupportPage extends StatefulWidget {
  const BuildSupportPage({super.key});

  @override
  State<BuildSupportPage> createState() => _BuildSupportPageState();
}

class _BuildSupportPageState extends State<BuildSupportPage> {
  @override
  Widget build(BuildContext context) {
    return Text('BuildSupportPage 1',
        style: Theme.of(context).textTheme.headlineMedium);
  }
}

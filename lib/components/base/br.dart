import 'package:flutter/material.dart';

const brLine = BoxDecoration(
  border: Border(
    bottom: BorderSide(
      color: Colors.grey,
      width: 0.5,
    ),
  ),
);

class Br extends StatelessWidget {
  const Br({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: brLine,
    );
  }
}

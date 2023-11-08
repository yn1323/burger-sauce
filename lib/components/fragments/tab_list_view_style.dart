import 'package:flutter/material.dart';

class TabListViewStyle extends StatelessWidget {
  const TabListViewStyle({
    super.key,
    required this.row,
  });

  final Row row;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: ListTile(title: row),
    );
  }
}

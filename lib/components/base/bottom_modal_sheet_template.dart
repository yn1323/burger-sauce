import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomModalSheetTemplate extends HookWidget {
  const BottomModalSheetTemplate({
    Key? key,
    required this.child,
    this.title = '',
    this.isScrollable = false,
    this.height,
  }) : super(key: key);

  final Widget child;
  final String title;
  final bool isScrollable;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isScrollable
          ? (height ?? MediaQuery.of(context).size.height - 100)
          : null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(children: [
                Center(
                  child: Text(title, style: const TextStyle(fontSize: 18.0)),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
              ]),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

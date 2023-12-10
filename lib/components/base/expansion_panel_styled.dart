import 'package:burger_sauce/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const defaultListHeight = listHeight;

class ExpansionPanelStyled extends HookWidget {
  const ExpansionPanelStyled({
    Key? key,
    required this.title,
    this.height = defaultListHeight,
    this.children = const <Widget>[],
    this.initiallyExpanded = false,
  }) : super(key: key);

  final Widget title;
  final double height;
  final List<Widget> children;
  final bool initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(initiallyExpanded);

    return ExpansionTile(
      initiallyExpanded: initiallyExpanded,
      onExpansionChanged: (bool expanding) {
        isExpanded.value = expanding;
      },
      trailing: AnimatedRotation(
        duration: const Duration(milliseconds: 200),
        turns: isExpanded.value ? 0.5 : 0.0,
        child: SizedBox(
          width: 48,
          height: height,
          child: const Center(
            child: Icon(Icons.expand_more, size: 24.0),
          ),
        ),
      ),
      collapsedShape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      title: SizedBox(
        height: listHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [title],
        ),
      ),
      children: children,
    );
  }
}

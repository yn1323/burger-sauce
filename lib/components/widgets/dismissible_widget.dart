import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DismissibleWidget extends HookWidget {
  final Widget child;
  final void Function(DismissDirection)? onDismissed;

  const DismissibleWidget({Key? key, required this.child, this.onDismissed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        color: Colors.red[400],
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      key: UniqueKey(),
      onDismissed: onDismissed,
      child: child,
    );
  }
}

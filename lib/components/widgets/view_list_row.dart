import 'package:burger_sauce/components/widgets/br.dart';
import 'package:burger_sauce/constants/ui.dart';
import 'package:flutter/material.dart';

const defaultListHeight = listHeight;

class ViewListRow extends StatelessWidget {
  const ViewListRow(
      {super.key,
      required this.child,
      this.listHeight = defaultListHeight,
      this.padding});

  final Widget child;
  final double listHeight;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: listHeight,
      padding: padding,
      decoration: brLine,
      child: child,
    );
  }
}

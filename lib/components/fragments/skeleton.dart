import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skeleton_text/skeleton_text.dart';

class Skeleton extends HookWidget {
  const Skeleton({
    Key? key,
    this.width = 280,
    this.height = 280,
    this.radius,
  }) : super(key: key);

  final double width;
  final double height;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      borderRadius: BorderRadius.circular(radius ?? (height / 10)),
      shimmerColor: Colors.grey,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? (height / 10)),
          color: Colors.grey[200],
        ),
      ),
    );
  }
}

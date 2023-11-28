import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skeleton_text/skeleton_text.dart';

class Skeleton extends HookWidget {
  const Skeleton({
    Key? key,
    this.width = 280,
    this.height = 280,
    this.radius,
    this.ballSkeleton = false,
  }) : super(key: key);

  final double width;
  final double height;
  final double? radius;
  final bool ballSkeleton;

  @override
  Widget build(BuildContext context) {
    final String ballSkeletonUrl = dotenv.get('BALL_SKELETON');

    return ballSkeleton
        ? SizedBox(
            height: 10,
            width: 10,
            child: CachedNetworkImage(
              imageUrl: ballSkeletonUrl,
              width: 10,
              height: 10,
            ),
          )
        : SkeletonAnimation(
            borderRadius: BorderRadius.circular(radius ?? (height / 10)),
            shimmerColor: Colors.grey[300]!,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? (height / 10)),
              ),
            ),
          );
  }
}

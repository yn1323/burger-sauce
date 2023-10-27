import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VerticalMoveTypeImage extends StatelessWidget {
  const VerticalMoveTypeImage({
    super.key,
    required this.attackTypeImageUrl,
    required this.typeImageUrl,
  });

  final String? attackTypeImageUrl;
  final String? typeImageUrl;

  final double width = 80;
  final double height = 18;

  Color getAttackTypeBackground() {
    if (attackTypeImageUrl == null) return Colors.black;

    if (attackTypeImageUrl!.contains('physic')) {
      return Colors.red.withOpacity(0.8);
    } else if (attackTypeImageUrl!.contains('special')) {
      return Colors.blue.withOpacity(0.8);
    } else {
      return Colors.purple.withOpacity(0.7);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CachedNetworkImage(
        imageUrl: typeImageUrl ?? '',
        width: width,
        height: height,
        placeholder: (context, url) => Skeleton(
          width: width,
          height: height,
        ),
      ),
      Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: getAttackTypeBackground(),
          borderRadius: BorderRadius.circular(2),
        ),
        child: CachedNetworkImage(
          imageUrl: attackTypeImageUrl ?? '',
          width: width,
          height: height,
          placeholder: (context, url) => Skeleton(
            width: width,
            height: height,
          ),
        ),
      ),
    ]);
  }
}

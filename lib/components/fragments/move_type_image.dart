import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:burger_sauce/components/fragments/type_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MoveTypeImage extends StatelessWidget {
  const MoveTypeImage(
      {super.key,
      required this.attackTypeImageUrl,
      required this.typeImageUrl,
      this.isHorizontal = false,
      this.gap = 0});

  final String? attackTypeImageUrl;
  final String? typeImageUrl;
  final bool isHorizontal;
  final double gap;

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
    if (!isHorizontal) {
      return Column(children: [
        TypeImage(typeImageUrl1: typeImageUrl),
        Gap(gap),
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
            // ignore: prefer_const_constructors
            placeholder: (context, url) => Skeleton(
              width: width,
              height: height,
            ),
          ),
        ),
      ]);
    }
    return Row(children: [
      TypeImage(typeImageUrl1: typeImageUrl),
      Gap(gap),
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
          // ignore: prefer_const_constructors
          placeholder: (context, url) => Skeleton(
            width: width,
            height: height,
          ),
        ),
      ),
    ]);
  }
}

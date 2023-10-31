import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TypeImage extends StatelessWidget {
  const TypeImage({
    super.key,
    this.typeImageUrl1 = '',
    this.typeImageUrl2 = '',
  });
  final String? typeImageUrl1;
  final String? typeImageUrl2;

  final double width = 80;
  final double height = 18;

  @override
  Widget build(BuildContext context) {
    if (typeImageUrl1 == null && typeImageUrl2 == null) {
      return Container();
    }

    return Column(
      children: [
        if (typeImageUrl1 != '')
          CachedNetworkImage(
            imageUrl: typeImageUrl1 ?? '',
            width: width,
            height: height,
            placeholder: (context, url) => Skeleton(
              width: width,
              height: height,
            ),
          ),
        if (typeImageUrl2 != '')
          CachedNetworkImage(
            imageUrl: typeImageUrl2 ?? '',
            width: width,
            height: height,
            placeholder: (context, url) => Skeleton(
              width: width,
              height: height,
            ),
          )
      ],
    );
  }
}

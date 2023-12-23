import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      required this.imageUrl,
      this.height = 64,
      this.width = 64,
      this.showSkeleton = true});
  final String imageUrl;

  final double width;
  final double height;
  final bool showSkeleton;

  @override
  Widget build(BuildContext context) {
    CachedNetworkImage image = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fadeOutDuration: const Duration(milliseconds: 300),
      placeholder: showSkeleton ? (context, url) => const Skeleton() : null,
    );

    return image;
  }
}

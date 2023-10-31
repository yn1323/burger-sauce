import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonImage extends StatelessWidget {
  const PokemonImage(
      {super.key,
      required this.imageUrl,
      this.height = 180,
      this.width = 180,
      this.ballSkeleton = true,
      this.showSkeleton = true,
      this.label = '',
      this.labelSize = 12});
  final String imageUrl;

  final double width;
  final double height;
  final bool ballSkeleton;
  final bool showSkeleton;
  final String label;
  final double labelSize;

  @override
  Widget build(BuildContext context) {
    CachedNetworkImage image = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fadeOutDuration: const Duration(milliseconds: 300),
      placeholder: showSkeleton
          ? (context, url) => Skeleton(ballSkeleton: ballSkeleton)
          : null,
    );

    if (label.isEmpty) {
      return image;
    } else {
      return Column(
        children: [
          image,
          if (label.isNotEmpty)
            Text(label, style: TextStyle(fontSize: labelSize))
        ],
      );
    }
  }
}

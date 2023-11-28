import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonCustomImage extends StatelessWidget {
  const PokemonCustomImage({
    super.key,
    required this.pokemonImage,
    this.terastalImage,
    this.itemImage,
    this.size = 180,
  });

  final String pokemonImage;
  final String? terastalImage;
  final String? itemImage;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PokemonImage(
        height: size,
        width: size,
        ballSkeleton: false,
        imageUrl: pokemonImage,
        showSkeleton: false,
      ),
      if (terastalImage != null)
        Positioned(
          left: size / 10,
          top: size / 10,
          child: CachedNetworkImage(
            width: size / 5,
            height: size / 5,
            imageUrl: terastalImage!,
            placeholder: (context, url) => Skeleton(
              width: size / 5,
              height: size / 5,
            ),
          ),
        ),
      if (itemImage != null)
        Positioned(
          left: size - size / 5 - size / 18,
          top: size - size / 5 - size / 18,
          child: CachedNetworkImage(
            width: size / 5,
            height: size / 5,
            imageUrl: itemImage!,
            placeholder: (context, url) => Skeleton(
              width: size / 5,
              height: size / 5,
            ),
          ),
        ),
    ]);
  }
}

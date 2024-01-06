import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/constants/env/env.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:burger_sauce/pages/top/calc/calc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedPokemonList extends HookConsumerWidget {
  const SelectedPokemonList({Key? key, required this.base, required this.type})
      : super(key: key);

  final List<DamageCustomBase> base;
  final String type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calcNotifier = ref.watch(calcProvider.notifier);
    final icon = type == "attack" ? attackIcon : defenseIcon;

    final pokemons = useMemoized(() {
      final pokemonIds = base.map((e) => e.pokemonId).toList();
      final images = pokemonIds
          .map((e) => calcNotifier.getPokemon(id: e).imageUrl)
          .toList();

      if (images.length >= maxBases) {
        return images;
      }

      final emptyImages = List.generate(maxBases - images.length, (index) {
        return loadingSkeletonUrl;
      });

      return [...images, ...emptyImages].sublist(0, maxBases);
    }, [base]);

    if (base.isEmpty) {
      return const SizedBox();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            icon,
            size: 36,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        ...pokemons.map((imageUrl) {
          return PokemonImage(
            imageUrl: imageUrl,
            height: 40,
            width: 40,
          );
        }).toList()
      ],
    );
  }
}

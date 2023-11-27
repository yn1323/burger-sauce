import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DamageCard extends HookConsumerWidget {
  const DamageCard({Key? key, required this.damageCustomBase})
      : super(key: key);

  final DamageCustomBase damageCustomBase;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calcNotifier = ref.watch(calcProvider.notifier);

    final pokemon = calcNotifier.getPokemon(id: damageCustomBase.pokemonId);
    final ability = calcNotifier.getAbility(id: damageCustomBase.abilityId);
    final terastal = calcNotifier.getType(id: damageCustomBase.terastalId);
    final item = calcNotifier.getItem(id: damageCustomBase.itemId);
    final nature = calcNotifier.getNature(id: damageCustomBase.natureId);
    final moves = damageCustomBase.moveIds
        .map((moveId) => calcNotifier.getMove(id: moveId));

    return Card(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(nameWithForm(name: pokemon.name, form: pokemon.form)),
                Text(ability.name),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  PokemonImage(
                    height: 180,
                    width: 180,
                    ballSkeleton: false,
                    imageUrl: pokemon.imageUrl,
                    showSkeleton: false,
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: CachedNetworkImage(
                      width: 36,
                      height: 36,
                      imageUrl: terastal.terastalImageUrl,
                      placeholder: (context, url) => const Skeleton(
                        width: 36,
                        height: 36,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 180 - 36 - 10,
                    top: 180 - 36 - 10,
                    child: CachedNetworkImage(
                      width: 36,
                      height: 36,
                      imageUrl: item.imageUrl,
                      placeholder: (context, url) => const Skeleton(
                        width: 36,
                        height: 36,
                      ),
                    ),
                  ),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}

//  ListTile(
//         leading: PokemonImage(
//           imageUrl: pokemon.imageUrl,
//           width: 400,
//           height: 400,
//           ballSkeleton: false,
//           showSkeleton: false,
//         ),
//         title: Text(pokemon.name),
//         subtitle: Container(
//           height: 100,
//         ),
//       ),

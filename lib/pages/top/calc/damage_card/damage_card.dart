import 'package:burger_sauce/components/fragments/pokemon_custom_image.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/status_list.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> statusLabels = ["H", "A", "B", "C", "D", "S"];

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
                PokemonCustomImage(
                  pokemonImage: pokemon.imageUrl,
                  itemImage: item.imageUrl,
                  terastalImage: terastal.terastalImageUrl,
                  size: 120,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: moves.map((e) => Text(e.name)).toList(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: statusLabels
                  .map(
                    (label) => Expanded(
                      flex: 1,
                      child: StatusBox(
                        verticalSubStatus: true,
                        label: label,
                        status:
                            damageCustomBase.status.getRealStatus(label: label),
                        subStatus: damageCustomBase.status.evH,
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

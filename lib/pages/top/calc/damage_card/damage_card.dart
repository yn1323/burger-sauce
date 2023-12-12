import 'package:burger_sauce/components/fragments/move_type_image.dart';
import 'package:burger_sauce/components/fragments/pokemon_custom_image.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/status_list.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.req.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.var.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/ability_select_bottom_sheet.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/pokemon_select_bottom_sheet.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/status_edit_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> statusLabels = ["H", "A", "B", "C", "D", "S"];

class DamageCard extends HookConsumerWidget {
  const DamageCard({Key? key, required this.damageCustomBase})
      : super(key: key);

  final DamageCustomBase damageCustomBase;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calcNotifier = ref.watch(calcProvider.notifier);
    final calcStore = ref.watch(calcProvider);

    final pokemon = calcNotifier.getPokemon(id: damageCustomBase.pokemonId);
    final ability = calcNotifier.getAbility(id: damageCustomBase.abilityId);
    final terastal = calcNotifier.getType(id: damageCustomBase.terastalId);
    final item = calcNotifier.getItem(id: damageCustomBase.itemId);
    final moves = damageCustomBase.moveIds
        .map((moveId) => calcNotifier.getMove(id: moveId));
    final pokemonInfo = calcStore.pokemonInfo[pokemon.id];

    void changePokemon(String nextPokemonId) {
      if (nextPokemonId == damageCustomBase.pokemonId) return;

      final nextBase =
          calcNotifier.getDamageCustomBase(pokemonId: nextPokemonId);

      calcNotifier.replaceBase(before: damageCustomBase, after: nextBase);
    }

    void changeAbility(String nextAbilityId) {
      if (nextAbilityId == damageCustomBase.abilityId) return;

      final nextBase = calcNotifier.getDamageCustomBase(pokemonId: pokemon.id)
        ..abilityId = nextAbilityId;

      calcNotifier.replaceBase(before: damageCustomBase, after: nextBase);
    }

    if (calcStore.pokemonInfo[pokemon.id] == null) {
      useQuerySync<GDamageCalcDetailData, GDamageCalcDetailVars>(
        GDamageCalcDetailReq(
          (b) => b
            ..vars.id = damageCustomBase.pokemonId
            ..fetchPolicy = fetchCacheFirst,
        ),
        (response) => calcNotifier.addDetail(response.data!),
      );
    }

    return Card(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return PokemonSelectBottomSheet(
                          onChange: (String id) => changePokemon(id),
                          pokemons: calcStore.pokemons!,
                        );
                      },
                    );
                  },
                  child: PokemonCustomImage(
                    pokemonImage: pokemon.imageUrl,
                    itemImage: item.imageUrl,
                    terastalImage: terastal.terastalImageUrl,
                    size: 120,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return AbilitySelectBottomSheet(
                              abilities: pokemonInfo!.abilities,
                              onChange: (String abilityId) =>
                                  changeAbility(abilityId),
                            );
                          },
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              nameWithForm(
                                  name: pokemon.name, form: pokemon.form),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const Gap(12),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ability.name,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(4),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return StatusEditBottomSheet(
                      initialStatus: damageCustomBase.status,
                      onChangeNature: (nature) {
                        calcNotifier.updateNature(
                          id: damageCustomBase.id,
                          increase: nature.increase,
                          decrease: nature.decrease,
                        );
                      },
                      onChangeEv: ({required type, required value}) {
                        calcNotifier.updateEv(
                            type: type, ev: value, id: damageCustomBase.id);
                      },
                    );
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: statusLabels
                    .map(
                      (label) => Expanded(
                        flex: 1,
                        child: StatusBox(
                          verticalSubStatus: true,
                          label: label,
                          status: damageCustomBase.status
                              .getRealStatus(label: label),
                          subStatus: damageCustomBase.status.getEv(label),
                          isIncrease: damageCustomBase.status
                              .getIsIncreaseNature(label),
                          isDecrease: damageCustomBase.status
                              .getIsDecreaseNature(label),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const Gap(4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: moves.map((e) {
                final moveType = calcNotifier.getMoveType(id: e.id);
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(children: [
                    MoveTypeImage(
                      attackTypeImageUrl: moveType.attackType.imageUrl,
                      typeImageUrl: moveType.type.textImageUrl,
                    ),
                    const Gap(16),
                    Text(e.name, style: const TextStyle(fontSize: 18))
                  ]),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:burger_sauce/components/fragments/move_type_image.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/status_list.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.req.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.var.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/ability_select.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/item_select.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/move_select_bottom_sheet.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/pokemon_select.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/status_edit_bottom_sheet.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/terastal_select.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> statusLabels = ["H", "A", "B", "C", "D", "S"];

const space = 8.0;

const gap = Gap(space);

class PokemonForm extends HookConsumerWidget {
  const PokemonForm({Key? key, required this.damageCustomBase})
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
    final battleData =
        calcNotifier.getBattleData(pokemonId: damageCustomBase.pokemonId);

    void changePokemon(String nextPokemonId) {
      if (nextPokemonId == damageCustomBase.pokemonId) return;

      final nextBase =
          calcNotifier.getDamageCustomBase(pokemonId: nextPokemonId);

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

    MoveType getMoveType(String moveId) {
      return calcNotifier.getMoveType(id: moveId);
    }

    return Card(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: double.infinity,
                    child: PokemonSelect(
                      calcStore: calcStore,
                      pokemon: pokemon,
                      onChange: (String id) => changePokemon(id),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: space),
                        child: AbilitySelect(
                          battleData: battleData,
                          pokemonInfo: pokemonInfo,
                          calcNotifier: calcNotifier,
                          damageCustomBase: damageCustomBase,
                          ability: ability,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      TerastalSelect(
                        battleData: battleData,
                        calcStore: calcStore,
                        calcNotifier: calcNotifier,
                        damageCustomBase: damageCustomBase,
                        terastal: terastal,
                      ),
                      gap,
                      ItemSelect(
                        battleData: battleData,
                        calcStore: calcStore,
                        calcNotifier: calcNotifier,
                        damageCustomBase: damageCustomBase,
                        item: item,
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(8),
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
            const Gap(8),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return MoveSelectBottomSheet(
                      moves: pokemonInfo!.moves,
                      battleData: battleData,
                      getMoveType: (String id) => getMoveType(id),
                      selectedIds: damageCustomBase.moveIds,
                      onChange: (
                          {required String moveId, required bool isSelected}) {
                        if (isSelected) {
                          calcNotifier.addMove(
                            id: damageCustomBase.id,
                            addMoveId: moveId,
                          );
                        } else {
                          calcNotifier.removeMove(
                            id: damageCustomBase.id,
                            removeMoveId: moveId,
                          );
                        }
                      },
                    );
                  },
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (moves.isEmpty)
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return MoveSelectBottomSheet(
                                  moves: pokemonInfo!.moves,
                                  battleData: battleData,
                                  getMoveType: (String id) => getMoveType(id),
                                  selectedIds: damageCustomBase.moveIds,
                                  onChange: (
                                      {required String moveId,
                                      required bool isSelected}) {
                                    if (isSelected) {
                                      calcNotifier.addMove(
                                        id: damageCustomBase.id,
                                        addMoveId: moveId,
                                      );
                                    } else {
                                      calcNotifier.removeMove(
                                        id: damageCustomBase.id,
                                        removeMoveId: moveId,
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          },
                          child: const Text('わざを追加')),
                    ),
                  ...moves.map(
                    (e) {
                      final moveType = getMoveType(e.id);
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(children: [
                          MoveTypeImage(
                            attackTypeImageUrl: moveType.attackType.imageUrl,
                            typeImageUrl: moveType.type.textImageUrl,
                          ),
                          const Gap(16),
                          Text(e.name, style: const TextStyle(fontSize: 18)),
                          const Gap(8),
                          Text('(威力：${e.power > 0 ? e.power : '- '})',
                              style: const TextStyle(fontSize: 12))
                        ]),
                      );
                    },
                  ).toList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

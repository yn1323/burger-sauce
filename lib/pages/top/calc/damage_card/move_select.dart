import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/components/base/common_search_bar.dart';
import 'package:burger_sauce/components/fragments/move_type_image.dart';
import 'package:burger_sauce/components/styles/button.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class MoveSelect extends StatelessWidget {
  const MoveSelect({
    super.key,
    required this.pokemonInfo,
    required this.battleData,
    required this.damageCustomBase,
    required this.calcNotifier,
    required this.moves,
    required this.getMoveType,
  });

  final PokemonInfo? pokemonInfo;
  final GDamageCalcSummaryData_battleDatasLatest_battleDatas? battleData;
  final DamageCustomBase damageCustomBase;
  final Calc calcNotifier;
  final Iterable<GDamageCalcSummaryData_moves> moves;
  final MoveType Function(String moveId) getMoveType;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getCardButtonFormStyle(context),
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
              onChange: ({required String moveId, required bool isSelected}) {
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
    );
  }
}

class MoveSelectBottomSheet extends HookWidget {
  const MoveSelectBottomSheet({
    Key? key,
    required this.moves,
    required this.battleData,
    required this.getMoveType,
    required this.onChange,
    this.selectedIds = const [],
  }) : super(key: key);

  final List<GDamageCalcSummaryData_moves> moves;
  final GDamageCalcSummaryData_battleDatasLatest_battleDatas? battleData;
  final MoveType Function(String) getMoveType;
  final List<String> selectedIds;
  final void Function({required String moveId, required bool isSelected})
      onChange;

  double getRate(String moveId) {
    if (battleData == null) return 0;

    if (battleData!.battleDataMove.where((e) => e.moveId == moveId).isEmpty) {
      return 0;
    }
    return battleData!.battleDataMove
        .firstWhere((e) => e.moveId == moveId)
        .rate;
  }

  @override
  Widget build(BuildContext context) {
    final searchWord = useState('');
    final initialSelected = useState(selectedIds);

    final orderedMoves = useMemoized(() {
      final selected =
          moves.where((e) => initialSelected.value.contains(e.id)).toList();
      final nonSelected =
          moves.where((e) => !initialSelected.value.contains(e.id)).toList();

      return [...selected, ...nonSelected];
    }, []);

    return BottomModalSheetTemplate(
      isScrollable: true,
      title: 'わざ',
      child: Column(
        children: [
          CommonSearchBar(
            hintText: '検索',
            onChange: (String word) => searchWord.value = word,
            onDelete: () => searchWord.value = '',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 300,
            child: ListView(
              children: orderedMoves
                  .where((move) => move.name.contains(searchWord.value))
                  .map(
                (e) {
                  final moveType = getMoveType(e.id);
                  final rate = getRate(e.id);
                  return CheckboxListTile(
                    value: initialSelected.value.contains(e.id),
                    title: SizedBox(
                      child: Row(
                        children: [
                          MoveTypeImage(
                            attackTypeImageUrl: moveType.attackType.imageUrl,
                            typeImageUrl: moveType.type.textImageUrl,
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(e.name,
                                      style: const TextStyle(fontSize: 18.0)),
                                  const Gap(10),
                                  if (e.power > 0)
                                    Text(
                                      '(威力：${e.power})',
                                      style: const TextStyle(fontSize: 14.0),
                                    ),
                                  const Gap(10),
                                  if (rate > 0)
                                    Text(
                                      '[使用率：$rate%]',
                                      style: const TextStyle(fontSize: 14.0),
                                    ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 150,
                                child: Text(
                                  e.detail,
                                  style: const TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: const EdgeInsets.all(0),
                    onChanged: !selectedIds.contains(e.id) &&
                            selectedIds.length >= maxMoves
                        ? null
                        : (isSelected) {
                            if (selectedIds.length > maxMoves) return;

                            if (isSelected == true) {
                              initialSelected.value = [
                                ...initialSelected.value,
                                e.id
                              ];
                            } else {
                              initialSelected.value = initialSelected.value
                                  .where((prevId) => prevId != e.id)
                                  .toList();
                            }
                            onChange(moveId: e.id, isSelected: isSelected!);
                          },
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

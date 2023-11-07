import 'package:built_collection/built_collection.dart';
import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:burger_sauce/components/fragments/vertical_move_type_image.dart';
import 'package:burger_sauce/pages/search/battle_detail/__generated__/oneBattleData.data.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class BattleRankTab extends HookWidget {
  final BuiltList<GOneBattleDataData_battleData_battleDataAbility>
      battleAbilities;
  final BuiltList<GOneBattleDataData_battleData_battleDataMove> battleMoves;
  final BuiltList<GOneBattleDataData_battleData_battleDataItem> battleItems;
  final BuiltList<GOneBattleDataData_battleData_battleDataNature> battleNatures;
  final BuiltList<GOneBattleDataData_battleData_battleDataTerastal>
      battleTerastals;

  BattleRankTab({
    Key? key,
    required this.battleAbilities,
    required this.battleMoves,
    required this.battleItems,
    required this.battleNatures,
    required this.battleTerastals,
  }) : super(key: key);

  Row getStatusText(String status, bool isIncrease) {
    final arrow = isIncrease ? '↑' : '↓';
    final text = status.replaceFirst("status", "");

    return Row(children: [
      Text(
        arrow,
        style: TextStyle(
          color: isIncrease ? Colors.red : Colors.blue,
          fontSize: 14,
        ),
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    ]);
  }

  final tabs = ["とくせい", "わざ", "もちもの", "せいかく", "テラスタル"]
      .map(
        (e) => Tab(
            child: Text(
          e,
          style: const TextStyle(
            fontSize: 13,
          ),
        )),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 5);

    return Column(
      children: [
        TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          controller: tabController,
          isScrollable: true,
          tabs: tabs,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                itemCount: battleAbilities.length,
                itemBuilder: (context, index) {
                  final battleAbility = battleAbilities[index];
                  return Tooltip(
                    message: battleAbility.ability.detail,
                    child: TabTemplate(
                        row: Row(
                      children: [
                        Text(battleAbility.ability.name),
                        const Spacer(),
                        Text('${battleAbility.rate}%'),
                      ],
                    )),
                  );
                },
              ),
              ListView.builder(
                itemCount: battleMoves.length,
                itemBuilder: (context, index) {
                  final battleMove = battleMoves[index];
                  return Tooltip(
                    message: battleMove.move.power != 0
                        ? '${battleMove.move.detail}(威力 ${battleMove.move.power})'
                        : battleMove.move.detail,
                    child: TabTemplate(
                      row: Row(
                        children: [
                          VerticalMoveTypeImage(
                            typeImageUrl: battleMove.move.type?.textImageUrl,
                            attackTypeImageUrl:
                                battleMove.move.attackType?.imageUrl,
                          ),
                          const Gap(24),
                          Text(
                            battleMove.move.name,
                          ),
                          const Spacer(),
                          Text('${battleMove.rate}%'),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: battleItems.length,
                itemBuilder: (context, index) {
                  final battleItem = battleItems[index];
                  return Tooltip(
                    message: battleItem.item.detail,
                    child: TabTemplate(
                      row: Row(
                        children: [
                          CachedNetworkImage(
                            width: 36,
                            height: 36,
                            imageUrl: battleItem.item.imageSmallUrl,
                            placeholder: (context, url) => const Skeleton(
                              width: 36,
                              height: 36,
                            ),
                          ),
                          const Gap(24),
                          Text(battleItem.item.name),
                          const Spacer(),
                          Text('${battleItem.rate}%'),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: battleNatures.length,
                itemBuilder: (context, index) {
                  final battleNature = battleNatures[index];
                  return TabTemplate(
                    row: Row(
                      children: [
                        getStatusText(battleNature.nature.increase, true),
                        const Gap(4),
                        getStatusText(battleNature.nature.decrease, false),
                        const Gap(20),
                        Text(battleNature.nature.name),
                        const Spacer(),
                        Text('${battleNature.rate}%'),
                      ],
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: battleTerastals.length,
                itemBuilder: (context, index) {
                  final battleTerastal = battleTerastals[index];
                  return TabTemplate(
                    row: Row(
                      children: [
                        CachedNetworkImage(
                          width: 36,
                          height: 36,
                          imageUrl: battleTerastal.type.terastalImageUrl,
                          placeholder: (context, url) => const Skeleton(
                            width: 36,
                            height: 36,
                          ),
                        ),
                        const Gap(24),
                        Text(battleTerastal.type.name),
                        const Spacer(),
                        Text('${battleTerastal.rate}%'),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TabTemplate extends StatelessWidget {
  const TabTemplate({
    super.key,
    required this.row,
  });

  final Row row;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: ListTile(title: row),
    );
  }
}

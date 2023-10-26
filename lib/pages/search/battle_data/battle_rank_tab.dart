import 'package:built_collection/built_collection.dart';
import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:burger_sauce/components/fragments/vertical_move_type_image.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.data.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class BattleRankTab extends HookWidget {
  final BuiltList<GOneBattleDataData_battleData_battleDataAbility>?
      battleAbilities;
  final BuiltList<GOneBattleDataData_battleData_battleDataMove>? battleMoves;
  final BuiltList<GOneBattleDataData_battleData_battleDataItem>? battleItems;

  const BattleRankTab({
    Key? key,
    required this.battleAbilities,
    required this.battleMoves,
    required this.battleItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);

    return Column(
      children: [
        TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          controller: tabController,
          tabs: const [
            Tab(text: 'とくせい'),
            Tab(text: 'わざ'),
            Tab(text: 'もちもの'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                itemCount: battleAbilities?.length ?? 0,
                itemBuilder: (context, index) {
                  final battleAbility = battleAbilities![index];
                  return TabTemplate(
                      row: Row(
                    children: [
                      Text(battleAbility.ability.name),
                      const Spacer(),
                      Text('${battleAbility.rate}%'),
                    ],
                  ));
                },
              ),
              ListView.builder(
                itemCount: battleMoves?.length ?? 0,
                itemBuilder: (context, index) {
                  final battleMove = battleMoves![index];
                  return TabTemplate(
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
                  ));
                },
              ),
              ListView.builder(
                itemCount: battleItems?.length ?? 0,
                itemBuilder: (context, index) {
                  final battleItem = battleItems![index];
                  return TabTemplate(
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

  // receive Row widget
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

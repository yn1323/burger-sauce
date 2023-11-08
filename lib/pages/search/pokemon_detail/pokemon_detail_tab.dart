import 'package:built_collection/built_collection.dart';
import 'package:burger_sauce/components/fragments/tab_list_view_style.dart';
import 'package:burger_sauce/components/fragments/vertical_move_type_image.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class PokemonDetailTab extends HookWidget {
  const PokemonDetailTab({
    super.key,
    required this.moves,
    required this.abilities,
  });

  final BuiltList<GOnePokemonDataData_pokemon_moves> moves;
  final BuiltList<GOnePokemonDataData_pokemon_abilities> abilities;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);

    final tabs = ["とくせい", "わざ"]
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

    return Column(
      children: [
        TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          controller: tabController,
          tabs: tabs,
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            ListView.builder(
              itemCount: abilities.length,
              itemBuilder: (context, index) {
                final ability = abilities[index];
                return InkWell(
                  onTap: () {
                    context.go('/search?ability=${ability.name}');
                  },
                  child: TabListViewStyle(
                      row: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ability.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const Gap(5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              child: Text(
                                ability.detail,
                                style: const TextStyle(fontSize: 12),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                );
              },
            ),
            ListView.builder(
              itemCount: moves.length,
              itemBuilder: (context, index) {
                final move = moves[index];
                return InkWell(
                  onTap: () {
                    context.go('/search?move=${move.name}');
                  },
                  child: TabListViewStyle(
                      row: Row(
                    children: [
                      VerticalMoveTypeImage(
                        attackTypeImageUrl: move.attackType?.imageUrl,
                        typeImageUrl: move.type?.textImageUrl,
                      ),
                      const Gap(20),
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  move.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    move.power > 0
                                        ? '（いりょく：${move.power.toString()}）'
                                        : '',
                                    style: const TextStyle(fontSize: 12))
                              ],
                            ),
                            const Gap(5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 160,
                              child: Text(
                                move.detail,
                                style: const TextStyle(fontSize: 12),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                );
              },
            ),
          ]),
        ),
      ],
    );
  }
}

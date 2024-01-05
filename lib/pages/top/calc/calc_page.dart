import 'package:burger_sauce/components/base/dismissible_widget.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.req.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.var.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/damage_card_add_button.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/pokemon_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const tabTypes = ['attack', 'defense'];

class CalcPage extends HookConsumerWidget {
  final String calcId;

  const CalcPage({
    Key? key,
    this.calcId = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final calcStore = ref.watch(calcProvider);
    final calcStoreNotifier = ref.watch(calcProvider.notifier);

    final result = useQuery<GDamageCalcSummaryData, GDamageCalcSummaryVars>(
      GDamageCalcSummaryReq(
        (b) => b
          // ..vars.calcId = '2fb26f41-7986-4977-9c14-83affd5696d6'
          ..vars.calcId = calcId
          ..fetchPolicy = fetchCacheFirst,
      ),
    );

    useEffect(() {
      Future.microtask(() async {
        if (result.data != null && result.data!.myDamageCalcIndex != null) {
          calcStoreNotifier.updateCalcAll(
            result.data!.myDamageCalcIndex!.myDamageCalc.toList(),
          );
        }
      });
      return null;
    }, [result.data]);

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  title: const Text('まとめてダメ計'),
                  pinned: true,
                  floating: true,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(kToolbarHeight +
                        (calcStore.defenseBase.isNotEmpty ? 40 : 0)),
                    child: Column(
                      children: [
                        const TabBar(
                          tabs: [
                            Tab(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.sports_martial_arts),
                                  Text('Attack'),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.health_and_safety),
                                  Text('Defense'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        if (calcStore.defenseBase.isNotEmpty)
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text('防御側の設定'),
                          ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Builder(
              builder: (context) {
                if (result.isLoadingOrError()) {
                  return result.suspensePart();
                }
                if (result.data!.abilities.isEmpty ||
                    result.data!.moves.isEmpty ||
                    result.data!.pokemons.isEmpty ||
                    result.data!.attackTypes.isEmpty ||
                    result.data!.battleDatasLatest == null ||
                    result.data!.natures.isEmpty ||
                    result.data!.types.isEmpty) {
                  return const Text('データが見つかりませんでした');
                }

                calcStoreNotifier.updateSummary(result.data!);

                return TabBarView(
                  children: tabTypes.map((type) {
                    final targetBase = type == 'attack'
                        ? calcStore.attackBase
                        : calcStore.defenseBase;

                    return ListView.separated(
                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemCount: targetBase.length +
                          (targetBase.length < maxBases ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index >= targetBase.length) {
                          return DamageCardAddButton(type: type);
                        }

                        return DismissibleWidget(
                          child: PokemonForm(
                            damageCustomBase: targetBase[index],
                          ),
                          onDismissed: (_) {
                            calcStoreNotifier.removeBase(
                              type: type,
                              index: index,
                            );
                          },
                        );
                      },
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

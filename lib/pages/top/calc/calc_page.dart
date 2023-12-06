import 'package:burger_sauce/components/widgets/dismissible_widget.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.req.gql.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.var.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/damage_card.dart';
import 'package:burger_sauce/pages/top/calc/damage_card/damage_card_add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalcPage extends HookConsumerWidget {
  final String calcId;

  const CalcPage({
    Key? key,
    this.calcId = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                const SliverAppBar(
                  title: Text('まとめてダメ計'),
                  floating: false,
                  pinned: false,
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _StickyTabBarDelegate(
                    tabBar: TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey[700],
                      tabs: const [
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
                  ),
                ),
              ];
            },
            body: Builder(builder: (context) {
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
                children: [
                  ListView.separated(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: calcStore.attackBase.length +
                        (calcStore.attackBase.length < maxBases ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index >= calcStore.attackBase.length) {
                        return const DamageCardAddButton();
                      }
                      return DismissibleWidget(
                        child: DamageCard(
                          damageCustomBase: calcStore.attackBase[index],
                        ),
                        onDismissed: (_) {
                          calcStoreNotifier.removeBase(
                            type: 'attack',
                            index: index,
                          );
                        },
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Text('moge');
                    },
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate({required this.tabBar});

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}

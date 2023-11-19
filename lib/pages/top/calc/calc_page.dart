import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalcPage extends HookConsumerWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calc = ref.watch(calcProvider);
    final calcNotifier = ref.watch(calcProvider.notifier);

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                title: Text('まとめてダメ計'),
                floating: true,
                pinned: false,
              ),
              const SliverPersistentHeader(
                pinned: true,
                delegate: _StickyTabBarDelegate(
                  tabBar: TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
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
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                    child: ElevatedButton(
                      onPressed: () {
                        calcNotifier.update(calc + 1);
                      },
                      child: Text(calc.toString()),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      index.toString(),
                      style: const TextStyle(fontSize: 100),
                    ),
                  );
                },
              ),
            ],
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
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}

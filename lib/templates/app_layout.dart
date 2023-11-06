import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/constants/widgets/properties.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/templates/__generated__/wakeup.data.gql.dart';
import 'package:burger_sauce/templates/__generated__/wakeup.req.gql.dart';
import 'package:burger_sauce/templates/__generated__/wakeup.var.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

List<BottomNavigationBarItem> icons = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.calculate),
    label: 'ダメージ計算',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: '検索',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.trending_up),
    label: 'トレンド',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.construction),
    label: '構築支援',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.account_circle),
    label: 'マイページ',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: '設定',
  ),
];

class AppLayout extends HookWidget {
  const AppLayout({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final String ballSkeletonUrl = dotenv.get('BALL_SKELETON');

    final result = useQuery<GWakeUpData, GWakeUpVars>(
      GWakeUpReq(
        (b) => b..fetchPolicy = fetchNetworkOnly,
      ),
    );

    if (result.loading) {
      return Center(
        child: CachedNetworkImage(imageUrl: ballSkeletonUrl),
      );
    }

    return Scaffold(
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: templateOpacity,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // StatefulNavigationShellのindexを利用
        currentIndex: navigationShell.currentIndex,
        // goBranch()を使って、タブを切り替え
        onTap: (index) => navigationShell.goBranch(index),
        items: icons.map((e) => e).toList(),
      ),
    );
  }
}

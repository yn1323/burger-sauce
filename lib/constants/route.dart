import 'package:burger_sauce/pages/self.dart';
import 'package:burger_sauce/pages/top/build/build_page.dart';
import 'package:burger_sauce/pages/top/calc/calc_page.dart';
import 'package:burger_sauce/pages/top/search/search_page.dart';
import 'package:burger_sauce/pages/top/setting/setting_page.dart';
import 'package:burger_sauce/pages/top/trend/trend_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RoutePage {
  final BottomNavigationBarItem item;
  final String url;
  final HookWidget page;

  RoutePage({
    required this.item,
    required this.url,
    required this.page,
  });
}

List<RoutePage> routes = [
  RoutePage(
    item: const BottomNavigationBarItem(
      icon: Icon(Icons.calculate),
      label: 'ダメージ計算',
    ),
    url: '/',
    page: const CalcPage(),
  ),
  RoutePage(
    item: const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: '検索',
    ),
    url: 'search',
    page: const SearchPage(),
  ),
  RoutePage(
    item: const BottomNavigationBarItem(
      icon: Icon(Icons.trending_up),
      label: 'トレンド',
    ),
    url: '/trend',
    page: TrendPage(),
  ),
  RoutePage(
    item: const BottomNavigationBarItem(
      icon: Icon(Icons.construction),
      label: '構築支援',
    ),
    url: '/build_support',
    page: const BuildPage(),
  ),
  RoutePage(
    item: const BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: 'マイページ',
    ),
    url: '/self',
    page: const SelfPage(),
  ),
  RoutePage(
    item: const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '設定',
    ),
    url: '/setting',
    page: const SettingPage(),
  ),
];

import 'package:burger_sauce/pages/search/battle_detail/page.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/page.dart';
import 'package:burger_sauce/pages/search/pokemon_simple_detail/page.dart';
import 'package:burger_sauce/pages/top/build/build_page.dart';
import 'package:burger_sauce/pages/top/calc/calc_page.dart';
import 'package:burger_sauce/pages/top/search/search_page.dart';
import 'package:burger_sauce/pages/top/self/self_page.dart';
import 'package:burger_sauce/pages/top/setting/setting_page.dart';
import 'package:burger_sauce/pages/top/trend/trend_page.dart';
import 'package:burger_sauce/templates/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/search",
  routes: <RouteBase>[
    // index付きのStatefulShellRouteを使う
    StatefulShellRoute.indexedStack(
      // Scaffoldなど描画を固定したい部分のWidgetを返す
      builder: (context, state, navigationShell) {
        return AppLayout(navigationShell: navigationShell, state: state);
      },
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/damage',
            builder: (context, state) => const CalcPage(),
          )
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: '/search',
              builder: (BuildContext context, GoRouterState state) {
                return SearchPage(
                  ability: state.uri.queryParameters['ability'],
                  move: state.uri.queryParameters['move'],
                  name: state.uri.queryParameters['name'],
                );
              },
              routes: [
                GoRoute(
                  path: 'dictionary/:pokemonId',
                  builder: (BuildContext context, GoRouterState state) {
                    return PokemonDetail(
                        pokemonId: state.pathParameters['pokemonId']!);
                  },
                ),
              ]),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: '/trend',
              builder: (context, state) => const TrendPage(),
              routes: [
                GoRoute(
                    path: ':battleId',
                    builder: (BuildContext context, GoRouterState state) {
                      return BattleDetail(
                          battleId: state.pathParameters['battleId']!);
                    },
                    routes: [
                      GoRoute(
                        path: ':pokemonId',
                        builder: (BuildContext context, GoRouterState state) {
                          return PokemonSimpleDetail(
                              pokemonId: state.pathParameters['pokemonId']!);
                        },
                      ),
                    ]),
              ])
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/build_support',
            builder: (context, state) => const BuildPage(),
          )
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/self',
            builder: (context, state) => const SelfPage(),
          )
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/setting',
            builder: (context, state) => const SettingPage(),
          )
        ]),
      ],
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);

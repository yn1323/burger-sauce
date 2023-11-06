import 'package:burger_sauce/pages/search/pokemon_detail/page.dart';
import 'package:burger_sauce/pages/top/build/build_page.dart';
import 'package:burger_sauce/pages/top/calc/calc_page.dart';
import 'package:burger_sauce/pages/top/search/search_page.dart';
import 'package:burger_sauce/pages/top/self/self_page.dart';
import 'package:burger_sauce/pages/top/setting/setting_page.dart';
import 'package:burger_sauce/pages/top/trend/trend_page.dart';
import 'package:burger_sauce/templates/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/search",
  routes: <RouteBase>[
    // index付きのStatefulShellRouteを使う
    StatefulShellRoute.indexedStack(
        // Scaffoldなど描画を固定したい部分のWidgetを返す
        builder: (context, state, navigationShell) {
          return AppLayout(navigationShell: navigationShell);
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
                  );
                },
                routes: [
                  GoRoute(
                    name: 'pokemonDicDetail',
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
            )
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
        ]),
    // GoRoute(
    //   path: '/pokemon',
    //   redirect: (context, state) {
    //     if (state.matchedLocation.startsWith('/pokemon/dictionary')) {
    //       return '/pokemon/dictionary/${state.pathParameters['pokemonId']!}';
    //     }
    //     if (state.matchedLocation.startsWith('/pokemon/battle')) {
    //       return '/pokemon/battle/${state.pathParameters['battleId']!}';
    //     }

    //     return null;
    //   },
    //   routes: <RouteBase>[

    // GoRoute(
    //   name: 'pokemonBattleDetail',
    //   path: 'battle/:battleId',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return BattleDataPokemon(
    //         battleId: state.pathParameters['battleId']!);
    //   },
    // ),
    //   ],
    // ),
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

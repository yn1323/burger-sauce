import 'package:burger_sauce/pages/search/battle_data/pokemon.dart';
import 'package:burger_sauce/templates/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyScaffold();
      },
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: 'details',
      //     builder: (BuildContext context, GoRouterState state) {
      //       return const DetailsScreen();
      //     },
      //   ),
      // ],
    ),
    GoRoute(
      name: 'searchBattleData',
      path: '/search/battle_data/:id',
      builder: (BuildContext context, GoRouterState state) {
        return BattleDataPokemon(id: state.pathParameters['id']!);
      },
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

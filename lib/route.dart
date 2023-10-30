import 'package:burger_sauce/pages/search/battle_data/page.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/page.dart';
import 'package:burger_sauce/templates/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyScaffold();
      },
      routes: <RouteBase>[
        GoRoute(
            name: 'searchBattleData',
            path: 'search/battle_data/:id',
            builder: (BuildContext context, GoRouterState state) {
              return BattleDataPokemon(id: state.pathParameters['id']!);
            },
            routes: [
              GoRoute(
                name: 'searchBattleDataPokemon',
                path: ':pokemonId',
                builder: (BuildContext context, GoRouterState state) {
                  return PokemonDetail(id: state.pathParameters['pokemonId']!);
                },
              ),
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

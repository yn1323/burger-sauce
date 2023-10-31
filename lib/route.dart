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
          name: 'searchPokemon',
          path: 'search/pokemon/:pokemonId',
          builder: (BuildContext context, GoRouterState state) {
            return PokemonDetail(pokemonId: state.pathParameters['pokemonId']!);
          },
        ),
        GoRoute(
          name: 'searchBattlePokemon',
          path: 'search/battle/:battleId',
          builder: (BuildContext context, GoRouterState state) {
            return BattleDataPokemon(
                battleId: state.pathParameters['battleId']!);
          },
        ),
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

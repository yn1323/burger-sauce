import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/models/status.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.data.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.req.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.var.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/poke_main_view.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/real_status_table.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/status_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class PokemonDetail extends HookWidget {
  final String pokemonId;

  const PokemonDetail({
    Key? key,
    required this.pokemonId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = useQuery<GOnePokemonDataData, GOnePokemonDataVars>(
      GOnePokemonDataReq(
        (b) => b
          ..vars.id = pokemonId
          ..fetchPolicy = fetchCacheAndNetwork,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(result.data?.pokemon?.name ?? ''),
      ),
      body: Builder(
        builder: (context) {
          if (result.isLoadingOrError()) {
            return result.suspensePart();
          }
          if (result.data!.pokemon == null) {
            return const Text('null');
          }

          final pokemon = result.data!.pokemon!;
          final abilities = pokemon.abilities;
          final moves = pokemon.moves;
          final types = pokemon.types;
          final evolutionFrom = pokemon.evolutionFrom;
          final evolutionTo = pokemon.evolutionTo;

          final status = Status(
            statusH: pokemon.statusH,
            statusA: pokemon.statusA,
            statusB: pokemon.statusB,
            statusC: pokemon.statusC,
            statusD: pokemon.statusD,
            statusS: pokemon.statusS,
          );

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  PokeMainView(types: types, pokemon: pokemon),
                  const Gap(10),
                  StatusList(status: status),
                  const Gap(10),
                  RealStatusTable(
                    status: status,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/components/fragments/type_image.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.data.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.req.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.var.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/status_list.dart';
import 'package:burger_sauce/route.dart';
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
                  SizedBox(
                    height: 160,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Spacer(),
                              TypeImage(
                                typeImageUrl1: types[0].textImageUrl,
                                typeImageUrl2: types.length > 1
                                    ? types[1].textImageUrl
                                    : '',
                              ),
                              const Spacer(),
                              pokemon.evolutionFrom.isNotEmpty
                                  ? GestureDetector(
                                      onTap: () {
                                        router.pushNamed(
                                          'searchPokemon',
                                          pathParameters: {
                                            'pokemonId': pokemon
                                                .evolutionFrom[0].pokemon.id
                                          },
                                        );
                                      },
                                      child: PokemonImage(
                                        height: 64,
                                        width: 64,
                                        showSkeleton: false,
                                        ballSkeleton: false,
                                        label: pokemon
                                            .evolutionFrom[0].pokemon.name,
                                        labelSize: 12,
                                        imageUrl: pokemon
                                            .evolutionFrom[0].pokemon.imageUrl,
                                      ),
                                    )
                                  : const Spacer()
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: PokemonImage(imageUrl: pokemon.imageLargeUrl),
                        ),
                        Expanded(
                          flex: 1,
                          child: pokemon.evolutionTo.isNotEmpty
                              ? SingleChildScrollView(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        if (pokemon.evolutionTo.length == 1)
                                          const Spacer(),
                                        ...pokemon.evolutionTo
                                            .map((e) => GestureDetector(
                                                  onTap: () {
                                                    router.pushNamed(
                                                      'searchPokemon',
                                                      pathParameters: {
                                                        'pokemonId':
                                                            e.pokemon.id
                                                      },
                                                    );
                                                  },
                                                  child: PokemonImage(
                                                    height: 64,
                                                    width: 64,
                                                    ballSkeleton: false,
                                                    label: e.pokemon.name,
                                                    labelSize: 12,
                                                    imageUrl:
                                                        e.pokemon.imageUrl,
                                                    showSkeleton: false,
                                                  ),
                                                ))
                                            .toList()
                                      ]),
                                )
                              : const Text(""), // Spacerだとエラーになるため
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  StatusList(status: status)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

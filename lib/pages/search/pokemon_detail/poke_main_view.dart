import 'package:built_collection/built_collection.dart';
import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/components/fragments/type_image.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PokeMainView extends StatelessWidget {
  const PokeMainView({
    super.key,
    required this.types,
    required this.pokemon,
  });

  final BuiltList<GOnePokemonDataData_pokemon_types> types;
  final GOnePokemonDataData_pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
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
                  typeImageUrl2: types.length > 1 ? types[1].textImageUrl : '',
                ),
                const Spacer(),
                pokemon.evolutionFrom.isNotEmpty
                    ? GestureDetector(
                        onTap: () {
                          context.push(
                              '/search/dictionary/${pokemon.evolutionFrom[0].pokemon.id}');
                        },
                        child: PokemonImage(
                          height: 64,
                          width: 64,
                          showSkeleton: false,
                          ballSkeleton: false,
                          label: nameWithForm(
                            name: pokemon.evolutionFrom[0].pokemon.name,
                            form: pokemon.evolutionFrom[0].pokemon.form,
                          ),
                          labelSize: 12,
                          imageUrl: pokemon.evolutionFrom[0].pokemon.imageUrl,
                        ),
                      )
                    : const Spacer()
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: PokemonImage(
              imageUrl: pokemon.imageLargeUrl,
              height: 128,
              width: 128,
            ),
          ),
          Expanded(
            flex: 1,
            child: pokemon.evolutionTo.isNotEmpty
                ? pokemon.evolutionTo.length >= 2
                    ? SingleChildScrollView(
                        child: EvolutionToPokemons(pokemon: pokemon),
                      )
                    : EvolutionToPokemons(pokemon: pokemon)
                : const Text(""), // Spacerだとエラーになるため
          ),
        ],
      ),
    );
  }
}

class EvolutionToPokemons extends StatelessWidget {
  const EvolutionToPokemons({
    super.key,
    required this.pokemon,
  });

  final GOnePokemonDataData_pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      if (pokemon.evolutionTo.length == 1) const Spacer(),
      ...pokemon.evolutionTo
          .map((e) => GestureDetector(
                onTap: () {
                  context.push('/search/dictionary/${e.pokemon.id}');
                },
                child: PokemonImage(
                  height: 64,
                  width: 64,
                  ballSkeleton: false,
                  label: nameWithForm(
                    name: e.pokemon.name,
                    form: e.pokemon.form,
                  ),
                  labelSize: 12,
                  imageUrl: e.pokemon.imageUrl,
                  showSkeleton: false,
                ),
              ))
          .toList()
    ]);
  }
}

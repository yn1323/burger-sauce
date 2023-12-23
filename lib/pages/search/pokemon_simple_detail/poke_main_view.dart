import 'package:built_collection/built_collection.dart';
import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/components/fragments/type_image.dart';
import 'package:burger_sauce/pages/search/pokemon_simple_detail/__generated__/onePokemonSimple.data.gql.dart';
import 'package:flutter/material.dart';

class PokeMainView extends StatelessWidget {
  const PokeMainView({
    super.key,
    required this.types,
    required this.pokemon,
  });

  final BuiltList<GOnePokemonSimpleDataData_pokemon_types> types;
  final GOnePokemonSimpleDataData_pokemon pokemon;

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
                const Spacer()
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
          const Spacer()
        ],
      ),
    );
  }
}

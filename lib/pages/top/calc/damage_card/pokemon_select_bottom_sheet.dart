import 'package:burger_sauce/components/base/common_search_bar.dart';
import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PokemonSelectBottomSheet extends HookWidget {
  const PokemonSelectBottomSheet({
    Key? key,
    required this.onChange,
    required this.pokemons,
  }) : super(key: key);

  final Function(String id) onChange;
  final List<GDamageCalcSummaryData_pokemons> pokemons;

  @override
  Widget build(BuildContext context) {
    final searchWord = useState('');

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CommonSearchBar(
            hintText: '検索',
            onChange: (String word) => searchWord.value = word,
            onDelete: () => searchWord.value = '',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: GridView.count(
              crossAxisCount: 6,
              children: pokemons
                  .where((e) => e.name.contains(hiraToKata(searchWord.value)))
                  .map(
                    (pokemon) => InkWell(
                      onTap: () => onChange(pokemon.id),
                      child: PokemonImage(
                        height: 30,
                        width: 30,
                        ballSkeleton: false,
                        imageUrl: pokemon.imageUrl,
                        showSkeleton: false,
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

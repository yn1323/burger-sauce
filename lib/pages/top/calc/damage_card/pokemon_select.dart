import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/components/base/common_search_bar.dart';
import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/components/styles/button.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class PokemonSelect extends StatelessWidget {
  const PokemonSelect({
    super.key,
    required this.calcStore,
    required this.pokemon,
    required this.onChange,
  });

  final CalcState calcStore;
  final GDamageCalcSummaryData_pokemons pokemon;
  final void Function(String id) onChange;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return PokemonSelectBottomSheet(
              onChange: (String id) => onChange(id),
              pokemons: calcStore.pokemons!,
            );
          },
        );
      },
      style: getCardButtonFormStyle(context),
      child: PokemonImage(
        imageUrl: pokemon.imageUrl,
        height: 64,
        width: 80,
      ),
    );
  }
}

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

    return BottomModalSheetTemplate(
      isScrollable: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
        child: Column(
          children: [
            CommonSearchBar(
              hintText: '検索',
              onChange: (String word) => searchWord.value = word,
              onDelete: () => searchWord.value = '',
            ),
            const Gap(10),
            SizedBox(
              height: MediaQuery.of(context).size.height - 300,
              child: GridView.count(
                crossAxisCount: 6,
                children: pokemons
                    .where((e) => e.name.contains(hiraToKata(searchWord.value)))
                    .map(
                      (pokemon) => InkWell(
                        onTap: () {
                          onChange(pokemon.id);
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PokemonImage(
                            ballSkeleton: false,
                            imageUrl: pokemon.imageUrl,
                            showSkeleton: false,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

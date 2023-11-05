import 'package:built_collection/built_collection.dart';
import 'package:burger_sauce/components/widgets/auto_complete_text_field.dart';
import 'package:burger_sauce/components/widgets/br.dart';
import 'package:burger_sauce/components/widgets/expansion_panel_styled.dart';
import 'package:burger_sauce/components/widgets/view_list_row.dart';
import 'package:burger_sauce/constants/ui.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/search/search_list/__generated__/searchPokemon.data.gql.dart';
import 'package:burger_sauce/pages/search/search_list/search_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchModalSheet extends HookWidget {
  const SearchModalSheet({
    super.key,
    required this.pokemonResult,
    required this.searchCondition,
    required this.pokemonList,
    required this.abilities,
    required this.moves,
    required this.types,
    required this.setCondition,
  });

  final BuiltList<GSearchPokemonData_pokemonSearch> pokemonResult;
  final ValueNotifier<SearchCondition> searchCondition;
  final BuiltList<GSearchPokemonData_pokemonList> pokemonList;
  final BuiltList<GSearchPokemonData_abilities> abilities;
  final BuiltList<GSearchPokemonData_moves> moves;
  final BuiltList<GSearchPokemonData_types> types;
  final Function setCondition;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: ListView(
        children: [
          Container(
              padding: const EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context)),
                    const Text('検索条件', style: TextStyle(fontSize: 18.0)),
                    const Text('')
                  ])),
          ViewListRow(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              child: AutoCompleteTextField(
                initialValue: searchCondition.value.name,
                labelText: 'ポケモン名',
                onSelected: (String name) {
                  setCondition(name: name);
                },
                baseOptions: pokemonList
                    .map(
                      (pokemon) => AutoCompleteOption(
                        label: nameWithForm(
                            name: pokemon.name, form: pokemon.form),
                        imageUrl: pokemon.imageUrl,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          ViewListRow(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              child: AutoCompleteTextField(
                initialValue: searchCondition.value.abilities[0],
                labelText: 'とくせい',
                onSelected: (String name) {
                  setCondition(abilities: [name]);
                },
                baseOptions: abilities
                    .map(
                      (ability) => AutoCompleteOption(label: ability.name),
                    )
                    .toList(),
              ),
            ),
          ),
          ExpansionPanelStyled(
            height: listHeight,
            title: const Text('わざ'),
            children: [
              for (int i = 0; i < searchCondition.value.moves.length; i++)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 80,
                    child: AutoCompleteTextField(
                      initialValue: searchCondition.value.moves[i],
                      labelText: 'わざ${i + 1}',
                      onSelected: (String move) {
                        final List<String> newCondition =
                            List.from(searchCondition.value.moves);
                        newCondition[i] = move;
                        setCondition(moves: newCondition);
                      },
                      baseOptions: moves
                          .map(
                            (e) => AutoCompleteOption(label: e.name),
                          )
                          .toList(),
                    ),
                  ),
                )
            ],
          ),
          const Br(),
          ExpansionPanelStyled(
            height: listHeight,
            title: const Text('タイプ'),
            children: [
              for (int i = 0; i < searchCondition.value.types.length; i++)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 80,
                    child: AutoCompleteTextField(
                      labelText: 'タイプ${i + 1}',
                      onSelected: (String type) {
                        final List<String> newCondition =
                            List.from(searchCondition.value.types);
                        newCondition[i] = type;
                        setCondition(types: newCondition);
                      },
                      baseOptions: types
                          .map(
                            (e) => AutoCompleteOption(
                              label: e.name,
                              imageUrl: e.textImageUrl,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                )
            ],
          ),
          const Br(),
          ViewListRow(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('検索対象'),
                ToggleButtons(
                  onPressed: (index) => {
                    setCondition(options: {
                      "evolvedOnly": index == 0,
                      "condition": "ASC"
                    }),
                    Navigator.pop(context)
                  },
                  isSelected: [
                    searchCondition.value.options["evolvedOnly"],
                    !searchCondition.value.options["evolvedOnly"]
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  constraints: const BoxConstraints(
                    minHeight: 40.0,
                    minWidth: 80.0,
                  ),
                  children: ["進化後のみ", "進化前も含める"].map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(e),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:burger_sauce/components/widgets/auto_complete_text_field.dart';
import 'package:burger_sauce/components/widgets/br.dart';
import 'package:burger_sauce/components/widgets/expansion_panel_styled.dart';
import 'package:burger_sauce/components/widgets/view_list_row.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/constants/ui.dart';
import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.data.gql.dart';
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.req.gql.dart';
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.var.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchCondition {
  final String name;
  final List<String> types;
  final List<String> moves;
  final List<String> abilities;
  final Map<String, dynamic> options;

  SearchCondition({
    this.name = '',
    this.types = const ['', ''],
    this.moves = const ['', '', '', ''],
    this.abilities = const [''],
    this.options = const {"evolvedOnly": true, "condition": "ASC"},
  });

  GPokemonSearchOptionBuilder getOptions() {
    return GPokemonSearchOptionBuilder()
      ..evolvedOnly = options["evolvedOnly"]
      ..condition = options["condition"];
  }
}

class SearchPage extends HookWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final searchCondition = useState(SearchCondition());

    void setCondition({
      String? name,
      List<String>? types,
      List<String>? moves,
      List<String>? abilities,
      Map<String, dynamic>? options,
    }) {
      searchCondition.value = SearchCondition(
        name: name ?? searchCondition.value.name,
        types: types ?? searchCondition.value.types,
        moves: moves ?? searchCondition.value.moves,
        abilities: abilities ?? searchCondition.value.abilities,
        options: options ?? searchCondition.value.options,
      );
    }

    final result = useQuery<GSearchPokemonData, GSearchPokemonVars>(
      GSearchPokemonReq(
        (b) => b
          ..vars.name = searchCondition.value.name
          ..vars.types.addAll(searchCondition.value.types)
          ..vars.moves.addAll(searchCondition.value.moves)
          ..vars.abilities.addAll(searchCondition.value.abilities)
          ..vars.options = searchCondition.value.getOptions()
          ..fetchPolicy = fetchCacheFirst,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("検索"),
        actions: [
          IconButton(
            onPressed: () {
              // SearchConditionのnameをエンペに変更したい
              searchCondition.value = SearchCondition(
                name: 'エンペ',
              );
              result.refetch();

              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                      height: MediaQuery.of(context).size.height - 100,
                      child: ListView(
                        children: const [Text('aaa')],
                      ));
                },
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          if (result.isLoadingOrError()) {
            return result.suspensePart();
          }

          final pokemonResult = result.data!.pokemonSearch;
          final pokemonList = result.data!.pokemonList;
          final moves = result.data!.moves;
          final abilities = result.data!.abilities;
          final types = result.data!.types;

          return SizedBox(
            // height: MediaQuery.of(context).size.height - 100,
            child: ListView(
              children: [
                Text('検索結果: ${pokemonResult.length}'),
                ViewListRow(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 80,
                    child: AutoCompleteTextField(
                      labelText: 'ポケモン名',
                      onSelected: (String name) {
                        setCondition(name: name);
                        result.refetch();
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
                      labelText: 'とくせい',
                      onSelected: (String name) {
                        setCondition(abilities: [name]);
                        result.refetch();
                      },
                      baseOptions: abilities
                          .map(
                            (ability) =>
                                AutoCompleteOption(label: ability.name),
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
                            labelText: 'わざ${i + 1}',
                            onSelected: (String move) {
                              final List<String> newCondition =
                                  List.from(searchCondition.value.moves);
                              newCondition[i] = move;
                              setCondition(moves: newCondition);

                              result.refetch();
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
                              result.refetch();
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
              ],
            ),
          );
        },
      ),
    );
  }
}

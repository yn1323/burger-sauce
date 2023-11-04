import 'package:burger_sauce/components/widgets/auto_complete_text_field.dart';
import 'package:burger_sauce/constants/client.dart';
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
    this.types = const [],
    this.moves = const [],
    this.abilities = const [],
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
    final nextCondition = useState(SearchCondition());

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

          return SizedBox(
              // height: MediaQuery.of(context).size.height - 100,
              child: ListView(
            children: [
              Text('検索結果: ${pokemonResult.length}'),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  child: AutoCompleteTextField(
                      onSelected: (String hoge) {
                        print('onSelected: $hoge');
                        searchCondition.value = SearchCondition(
                          name: hoge,
                          moves: searchCondition.value.moves,
                          types: searchCondition.value.types,
                          abilities: searchCondition.value.abilities,
                          options: searchCondition.value.options,
                        );
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
                          .toList()),
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}

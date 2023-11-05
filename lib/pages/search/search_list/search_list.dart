import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/components/widgets/view_list_row.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/search/search_list/__generated__/searchPokemon.data.gql.dart';
import 'package:burger_sauce/pages/search/search_list/__generated__/searchPokemon.req.gql.dart';
import 'package:burger_sauce/pages/search/search_list/__generated__/searchPokemon.var.gql.dart';
import 'package:burger_sauce/pages/search/search_list/search_modal_sheet.dart';
import 'package:burger_sauce/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

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

class SearchList extends HookWidget {
  final String? move;
  final String? ability;

  const SearchList({Key? key, this.move = '', this.ability = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final searchCondition = useState(SearchCondition(
      moves: [move ?? '', '', '', ''],
      abilities: [ability ?? ''],
    ));

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
      result.refetch();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("検索"),
        actions: [
          if (result.data != null && result.data!.moves.isNotEmpty)
            IconButton(
              onPressed: () {
                final pokemonResult = result.data!.pokemonSearch;
                final pokemonList = result.data!.pokemonList;
                final moves = result.data!.moves;
                final abilities = result.data!.abilities;
                final types = result.data!.types;

                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SearchModalSheet(
                      pokemonResult: pokemonResult,
                      searchCondition: searchCondition,
                      pokemonList: pokemonList,
                      abilities: abilities,
                      moves: moves,
                      types: types,
                      setCondition: setCondition,
                    );
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

          if (pokemonResult.isEmpty) {
            return const Center(child: Text("該当するポケモンが見つかりませんでした。"));
          }

          return ListView.builder(
            itemCount: pokemonResult.length,
            itemBuilder: (context, index) {
              final pokemon = pokemonResult[index];
              return InkWell(
                onTap: () {
                  router.goNamed(
                    'searchPokemon',
                    pathParameters: {'pokemonId': pokemon.id},
                  );
                },
                child: ViewListRow(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                    child: Row(
                      children: [
                        PokemonImage(
                          imageUrl: pokemon.imageUrl,
                          width: 100,
                          height: 100,
                          ballSkeleton: false,
                          showSkeleton: false,
                        ),
                        const Gap(10),
                        Center(
                          child: Text(
                            nameWithForm(
                                name: pokemon.name, form: pokemon.form),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

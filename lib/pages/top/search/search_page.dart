import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/components/widgets/view_list_row.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.data.gql.dart';
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.req.gql.dart';
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.var.gql.dart';
import 'package:burger_sauce/pages/top/search/search_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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

  bool hasCondition() {
    return name.isNotEmpty ||
        types.any((element) => element.isNotEmpty) ||
        moves.any((element) => element.isNotEmpty) ||
        abilities.any((element) => element.isNotEmpty);
  }

  bool hasNameCondition() {
    return name.isNotEmpty;
  }

  bool hasTypeCondition() {
    return types.any((element) => element.isNotEmpty);
  }

  bool hasMoveCondition() {
    return moves.any((element) => element.isNotEmpty);
  }

  bool hasAbilityCondition() {
    return abilities.any((element) => element.isNotEmpty);
  }

  String getSearchBarText() {
    return [
      name,
      ...abilities.where((e) => e.isNotEmpty),
      ...moves.where((e) => e.isNotEmpty),
      ...types.where((e) => e.isNotEmpty)
    ].join(' ');
  }
}

class SearchPage extends HookWidget {
  final String? move;
  final String? ability;
  final String? name;

  const SearchPage(
      {Key? key, this.move = '', this.ability = '', this.name = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final scrollController = useScrollController();
    final searchCondition = useState(SearchCondition(
      name: name ?? '',
      moves: [move ?? '', '', '', ''],
      abilities: [ability ?? ''],
    ));

    // 詳細ページからの再検索でクエパラがあるときに再レンダリングさせる
    useEffect(() {
      searchCondition.value = SearchCondition(
        name: name ?? '',
        moves: [move ?? '', '', '', ''],
        abilities: [ability ?? ''],
      );
      return null;
    }, [name, move, ability]);

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

    void scrollToTop() {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          0.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    }

    void onReset() {
      final condition = SearchCondition();
      setCondition(
        name: condition.name,
        abilities: condition.abilities,
        moves: condition.moves,
        types: condition.types,
        options: condition.options,
      );
      context.go('/search');
      scrollToTop();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("検索"),
      ),
      body: Builder(
        builder: (context) {
          if (result.isLoadingOrError()) {
            return result.suspensePart();
          }

          final pokemonResult = result.data!.pokemonSearch;

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black87,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 22),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                    ),
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
                            onReset: onReset,
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.search),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Center(
                            child: Text(
                                overflow: TextOverflow.ellipsis,
                                searchCondition.value.hasCondition()
                                    ? searchCondition.value.getSearchBarText()
                                    : '検索条件を設定する'),
                          ),
                        ),
                        searchCondition.value.hasCondition()
                            ? SizedBox(
                                height: 18,
                                width: 18,
                                child: IconButton(
                                  padding: const EdgeInsets.all(0.0),
                                  iconSize: 18,
                                  onPressed: () {
                                    onReset();
                                  },
                                  icon: const Icon(
                                    Icons.clear,
                                  ),
                                ),
                              )
                            : const Text('')
                      ],
                    )),
              ),
              pokemonResult.isEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Center(child: Text("該当するポケモンが見つかりませんでした。")),
                    )
                  : Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: pokemonResult.length,
                        itemBuilder: (context, index) {
                          final pokemon = pokemonResult[index];
                          return InkWell(
                            onTap: () {
                              context.go('/search/dictionary/${pokemon.id}');
                            },
                            child: ViewListRow(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 4, 20, 4),
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
                                            name: pokemon.name,
                                            form: pokemon.form),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}

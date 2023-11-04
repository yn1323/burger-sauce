import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart';
import 'package:burger_sauce/helpers/query.dart';
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

              // showModalBottomSheet(
              //   context: context,
              //   builder: (BuildContext context) {
              //     return const Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: <Widget>[
              //         SizedBox(
              //           height: 200,
              //           child: Text('moge'),
              //         )
              //       ],
              //     );
              //   },
              // );
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

          final pokemon = result.data!.pokemonSearch;

          return Text(pokemon[0].name);
        },
      ),
    );
  }
}

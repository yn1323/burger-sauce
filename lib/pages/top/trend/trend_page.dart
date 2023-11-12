import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/trend/__generated__/latestBattleData.data.gql.dart';
import 'package:burger_sauce/pages/top/trend/__generated__/latestBattleData.req.gql.dart';
import 'package:burger_sauce/pages/top/trend/__generated__/latestBattleData.var.gql.dart';
import 'package:burger_sauce/pages/top/trend/battle_data_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PokemonIndex {
  PokemonIndex({
    required this.id,
    required this.rank,
    required this.form,
    required this.name,
    required this.imageUrl,
  });

  String id;
  int rank;
  String form;
  String name;
  String imageUrl;
}

class TrendPage extends HookWidget {
  const TrendPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final searchBarController = useTextEditingController();
    final searchWord = useState('');
    final res = useRef<List<PokemonIndex>>([]);

    final result =
        useQuery<GLatestBattleDataIndexData, GLatestBattleDataIndexVars>(
      GLatestBattleDataIndexReq(
        (b) => b..fetchPolicy = fetchCacheAndNetwork,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'レートバトルデータ',
        ),
      ),
      body: Builder(
        builder: (context) {
          if (result.isLoadingOrError()) {
            return result.suspensePart();
          }

          final pokemons = result.data!.battleDatasLatest;

          res.value = pokemons
              .map(
                (e) => PokemonIndex(
                  id: e.id,
                  form: e.pokemon.form,
                  name: e.pokemon.name,
                  rank: e.rank,
                  imageUrl: e.pokemon.imageUrl,
                ),
              )
              .toList();

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                  hintText: 'ポケモン名で検索',
                  elevation: const MaterialStatePropertyAll(1),
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  controller: searchBarController,
                  onChanged: (String word) {
                    searchWord.value = word;
                  },
                  leading: const Icon(Icons.search),
                  trailing: <Widget>[
                    if (searchWord.value.isNotEmpty)
                      IconButton(
                        onPressed: () {
                          searchWord.value = '';
                          searchBarController.text = '';
                        },
                        icon: const Icon(Icons.clear),
                      )
                  ],
                ),
              ),
              Expanded(
                child: BattleDataList(
                  pokemons: res.value
                      .where(
                          (e) => e.name.contains(hiraToKata(searchWord.value)))
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:burger_sauce/components/base/common_search_bar.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/helpers/time.dart';
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
    final searchWord = useState('');

    final result =
        useQuery<GLatestBattleDataIndexData, GLatestBattleDataIndexVars>(
      GLatestBattleDataIndexReq(
        (b) => b..fetchPolicy = fetchCacheAndNetwork,
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Builder(builder: (context) {
              if (result.isLoadingOrError()) {
                return const Text('レートバトルデータ');
              } else {
                final capturedAt = result.data!.battleDatasLatest?.capturedAt;
                final dateText = isoToStringDateTime(capturedAt!.value, ' M/d');
                return Text('レートバトルデータ ($dateText更新)');
              }
            }),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonSearchBar(
                  hintText: 'ポケモン名で検索',
                  onChange: (String word) {
                    searchWord.value = word;
                  },
                  onDelete: () {
                    searchWord.value = '';
                  },
                ),
              ),
            ),
          ),
          Builder(
            builder: (context) {
              if (result.isLoadingOrError()) {
                return SliverFillRemaining(
                  child: result.suspensePart(),
                );
              }

              final pokemons = result.data!.battleDatasLatest?.battleDatas;

              final pokemonIndexList = pokemons!
                  .map(
                    (e) => PokemonIndex(
                      id: e.id,
                      form: e.pokemon.form,
                      name: e.pokemon.name,
                      rank: e.rank,
                      imageUrl: e.pokemon.imageUrl,
                    ),
                  )
                  .where((e) => e.name.contains(hiraToKata(searchWord.value)))
                  .toList();

              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final pokemon = pokemonIndexList[index];
                    return BattleDataList(pokemon: pokemon);
                  },
                  childCount: pokemonIndexList.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

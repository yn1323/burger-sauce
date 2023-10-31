import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/constants/widgets/properties.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/pages/top/trend/__generated__/schema.data.gql.dart';
import 'package:burger_sauce/pages/top/trend/__generated__/schema.req.gql.dart';
import 'package:burger_sauce/pages/top/trend/__generated__/schema.var.gql.dart';
import 'package:burger_sauce/pages/top/trend/battle_data_index.dart';
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
    final res = useRef<List<PokemonIndex>>([]);

    final result =
        useQuery<GLatestBattleDataIndexData, GLatestBattleDataIndexVars>(
      GLatestBattleDataIndexReq(
        (b) => b..fetchPolicy = fetchCacheAndNetwork,
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'レートバトルデータ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: templateOpacity,
        elevation: 0,
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

          return BattleDataIndex(pokemons: res.value);
        },
      ),
    );
  }
}

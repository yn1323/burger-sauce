import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.data.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.req.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.var.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/battle_rank_tab.dart';
import 'package:burger_sauce/route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class BattleDataPokemon extends HookWidget {
  final String battleId;

  const BattleDataPokemon({
    Key? key,
    required this.battleId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = useQuery<GOneBattleDataData, GOneBattleDataVars>(
      GOneBattleDataReq(
        (b) => b
          ..vars.id = battleId
          ..fetchPolicy = fetchCacheAndNetwork,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          combineNameWithForm(
            name: result.data?.battleData?.pokemon.name ?? '',
            form: result.data?.battleData?.pokemon.form ?? '',
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          if (result.isLoadingOrError()) {
            return result.suspensePart();
          }
          if (result.data!.battleData == null) {
            return const Text('データが見つかりませんでした。');
          }

          final data = result.data!;
          final pokemon = data.battleData!.pokemon;
          final battleAbilities = data.battleData!.battleDataAbility;
          final battleMoves = data.battleData!.battleDataMove;
          final battleItems = data.battleData!.battleDataItem;
          final battleNatures = data.battleData!.battleDataNature;
          final battleTerastals = data.battleData!.battleDataTerastal;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  PokemonImage(imageUrl: pokemon.imageLargeUrl),
                  const Gap(10),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // デバッグ時にURLが戻らないように
                          kReleaseMode
                              ? router.pushNamed('searchPokemon',
                                  pathParameters: {'pokemonId': pokemon.id})
                              : router.goNamed('searchPokemon',
                                  pathParameters: {'pokemonId': pokemon.id});
                        },
                        child: const Text('詳細情報'),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Expanded(
                      child: BattleRankTab(
                    battleAbilities: battleAbilities,
                    battleMoves: battleMoves,
                    battleItems: battleItems,
                    battleNatures: battleNatures,
                    battleTerastals: battleTerastals,
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

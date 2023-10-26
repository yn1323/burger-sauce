import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.data.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.req.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.var.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/battle_rank_tab.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class BattleDataPokemon extends HookWidget {
  final String id;
  final client = GetIt.I<TypedLink>();

  BattleDataPokemon({
    Key? key,
    required this.id,
  }) : super(key: key);

  String getPokemonName(GOneBattleDataData_battleData_pokemon? pokemon) {
    if (pokemon == null) return '';
    if (pokemon.form.isEmpty) {
      return pokemon.name;
    } else {
      return '${pokemon.name}(${pokemon.form})';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('バトル詳細情報'),
      ),
      body: Operation<GOneBattleDataData, GOneBattleDataVars>(
        operationRequest: GOneBattleDataReq((b) => b
          ..vars.id = id
          ..fetchPolicy = fetchCacheFirst),
        builder: (context, response, error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasErrors) {
            return Center(child: Text(error.toString()));
          }

          final data = response.data;

          if (data == null || data.battleData == null) {
            return const Text('null');
          }

          final pokemon = data.battleData?.pokemon;
          final battleAbilities = data.battleData?.battleDataAbility;
          final battleMoves = data.battleData?.battleDataMove;
          final battleItems = data.battleData?.battleDataItem;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text(getPokemonName(pokemon),
                      style: const TextStyle(fontSize: 20)),
                  const Gap(10),
                  CachedNetworkImage(
                    imageUrl: pokemon?.imageLargeUrl ?? '',
                    width: 180,
                    height: 180,
                    fadeOutDuration: const Duration(milliseconds: 300),
                    placeholder: (context, url) =>
                        const Skeleton(ballSkeleton: true),
                  ),
                  const Gap(10),
                  Expanded(
                      child: BattleRankTab(
                    battleAbilities: battleAbilities,
                    battleMoves: battleMoves,
                    battleItems: battleItems,
                  ))
                ],
              ),
            ),
          );
        },
        client: client,
      ),
    );
  }
}

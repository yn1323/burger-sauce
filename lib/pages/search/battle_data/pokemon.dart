import 'package:burger_sauce/components/fragments/skeleton.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.data.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.req.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.var.gql.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('バトル詳細情報'),
      ),
      body: Operation<GOneBattleDataData, GOneBattleDataVars>(
        operationRequest: GOneBattleDataReq((b) => b..vars.id = id),
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
          final abilities = data.battleData?.battleDataAbility ?? [];
          final moves = data.battleData?.battleDataMove ?? [];
          final items = data.battleData?.battleDataItem ?? [];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text(pokemon?.name ?? '',
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
                  Row(
                    children: [
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: const [
                            Text(
                              'タイプ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
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

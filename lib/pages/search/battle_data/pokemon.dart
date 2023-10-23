import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.data.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.req.gql.dart';
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.var.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

class BattleDataPokemon extends HookWidget {
  final String id;
  final client = GetIt.I<TypedLink>();

  BattleDataPokemon({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Operation<GOneBattleDataData, GOneBattleDataVars>(
        operationRequest: GOneBattleDataReq((b) => b..vars.id = id),
        builder: (context, response, error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasErrors) {
            return Center(child: Text(error.toString()));
          }

          final pokemons = response.data;

          if (pokemons == null) return const Text('null');

          return Text(pokemons.toString());
        },
        client: client,
      ),
    );
  }
}

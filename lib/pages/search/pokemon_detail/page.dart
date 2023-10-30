import 'package:burger_sauce/components/features/images/skeleton.dart';
import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.data.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.req.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.var.gql.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/status_list.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class PokemonDetail extends HookWidget {
  final String id;
  final client = GetIt.I<TypedLink>();

  PokemonDetail({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ポケモン情報'),
      ),
      body: Operation<GOnePokemonDataData, GOnePokemonDataVars>(
        operationRequest: GOnePokemonDataReq((b) => b
          ..vars.id = id
          ..fetchPolicy = fetchCacheAndNetwork),
        builder: (context, response, error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasErrors) {
            return Center(child: Text(error.toString()));
          }

          final data = response.data;

          if (data == null || data.pokemon == null) {
            return const Text('null');
          }

          final pokemon = data.pokemon!;
          final abilitites = pokemon.abilities;
          final moves = pokemon.moves;
          final types = pokemon.types;
          final evolutions = pokemon.evolutions;
          final status = Status(
            statusH: pokemon.statusH,
            statusA: pokemon.statusA,
            statusB: pokemon.statusB,
            statusC: pokemon.statusC,
            statusD: pokemon.statusD,
            statusS: pokemon.statusS,
          );

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                      combineNameWithForm(
                          name: pokemon.name, form: pokemon.form),
                      style: const TextStyle(fontSize: 20)),
                  const Gap(10),
                  CachedNetworkImage(
                    imageUrl: pokemon.imageLargeUrl,
                    width: 180,
                    height: 180,
                    fadeOutDuration: const Duration(milliseconds: 300),
                    placeholder: (context, url) =>
                        const Skeleton(ballSkeleton: true),
                  ),
                  const Gap(10),
                  StatusList(status: status)
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

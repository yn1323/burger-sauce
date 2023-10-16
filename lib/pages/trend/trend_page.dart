import 'package:burger_sauce/pages/trend/battle_data/battle_data_index.dart';
import 'package:burger_sauce/pages/trend/schema/__generated__/schema.data.gql.dart';
import 'package:burger_sauce/pages/trend/schema/__generated__/schema.req.gql.dart';
import 'package:burger_sauce/pages/trend/schema/__generated__/schema.var.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

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
  TrendPage({super.key});

  final client = GetIt.I<TypedLink>();

  String _nameWithForm(String name, String form) {
    if (form.isEmpty) {
      return name;
    }
    return '$name($form)';
  }

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final res = useRef<List<PokemonIndex>>([]);

    PokemonIndex findPokemon(String data) {
      final pokemon = res.value
          .firstWhere((e) => data.contains(e.name) && data.contains(e.form));
      return pokemon;
    }

    return Operation<GLatestBattleDataIndexData, GLatestBattleDataIndexVars>(
      operationRequest: GLatestBattleDataIndexReq(),
      builder: (context, response, error) {
        if (response!.loading) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Example'),
            ),
            body: const Text('loading...'),
          );
        }

        if (response.hasErrors) {
          return const Text('error');
        }

        final pokemons = response.data?.battleDatasLatest;

        if (pokemons == null) return const Text('null');

        res.value = pokemons
            .map(
              (e) => PokemonIndex(
                  id: e.id,
                  form: e.pokemon.form,
                  name: e.pokemon.name,
                  rank: e.rank,
                  imageUrl: e.pokemon.imageUrl),
            )
            .toList();

        return Scaffold(
          appBar: EasySearchBar(
            title: const Text('Example'),
            onSearch: (value) {},
            onSuggestionTap: (value) {
              print(value);
            },
            suggestionTextStyle:
                const TextStyle(color: Colors.black, fontSize: 20),
            suggestions: pokemons
                .map((e) => _nameWithForm(e.pokemon.name, e.pokemon.form))
                .toList(),
            suggestionBuilder: (data) => SizedBox(
              height: 40,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  CachedNetworkImage(
                    imageUrl: findPokemon(data).imageUrl,
                    placeholder: (context, url) => const SizedBox(
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Text(data)
                ],
              ),
            ),
          ),
          body: BattleDataIndex(pokemons: res.value),
        );
      },
      client: client,
    );
  }
}

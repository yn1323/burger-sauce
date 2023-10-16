import 'package:burger_sauce/pages/__generated__/pokemons.data.gql.dart';
import 'package:burger_sauce/pages/__generated__/pokemons.req.gql.dart';
import 'package:burger_sauce/pages/__generated__/pokemons.var.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

class SelfPage extends HookWidget {
  const SelfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final client = GetIt.I<TypedLink>();

    return Operation<GPokemonsData, GPokemonsVars>(
      operationRequest: GPokemonsReq(),
      builder: (context, response, error) {
        if (response!.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (response.hasErrors) {
          return Center(child: Text(error.toString()));
        }

        final pokemons = response.data?.pokemons;

        if (pokemons == null) return const Text('null');

        return ListView(
          children: pokemons
              .map((pokemon) => Row(
                    children: [
                      Text(pokemon.name),
                      SizedBox(
                        width: 256,
                        height: 256,
                        child: CachedNetworkImage(
                          imageUrl: pokemon.imageUrl,
                          placeholder: (context, url) => const SizedBox(
                            width: 256,
                            height: 256,
                          ),
                        ),
                      )
                    ],
                  ))
              .toList(),
        );
      },
      client: client,
    );
  }
}

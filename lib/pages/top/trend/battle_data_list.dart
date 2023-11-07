import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/components/widgets/view_list_row.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/trend/trend_page.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class BattleDataList extends HookWidget {
  BattleDataList({Key? key, required this.pokemons}) : super(key: key);
  final client = GetIt.I<TypedLink>();
  final List<PokemonIndex> pokemons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons[index];
              return InkWell(
                onTap: () {
                  context.go('/trend/${pokemon.id}');
                },
                child: ViewListRow(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                    child: Row(
                      children: <Widget>[
                        Text(
                          pokemon.rank == -1 ? '圏外' : pokemon.rank.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Gap(10),
                        PokemonImage(
                          imageUrl: pokemon.imageUrl,
                          width: 100,
                          height: 100,
                          ballSkeleton: false,
                          showSkeleton: false,
                        ),
                        const Gap(10),
                        Center(
                          child: Text(
                            nameWithForm(
                                name: pokemon.name, form: pokemon.form),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

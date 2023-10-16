import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/trend/trend_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

Widget _toggleLayout({Function? onPressed, bool isGrid = true}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      IconButton(
        onPressed: () {
          onPressed!();
        },
        iconSize: 36,
        icon: Icon(Icons.grid_view, color: isGrid ? Colors.blue : Colors.grey),
      ),
      IconButton(
        onPressed: () {
          onPressed!();
        },
        iconSize: 36,
        icon: Icon(Icons.list, color: !isGrid ? Colors.blue : Colors.grey),
      ),
    ],
  );
}

class BattleDataIndex extends HookWidget {
  BattleDataIndex({Key? key, required this.pokemons}) : super(key: key);
  final client = GetIt.I<TypedLink>();
  final List<PokemonIndex> pokemons;

  @override
  Widget build(BuildContext context) {
    final isGrid = useState(false);

    return Center(
      child: Column(
        children: [
          _toggleLayout(
            onPressed: () => isGrid.value = !isGrid.value,
            isGrid: isGrid.value,
          ),
          Expanded(
            child: ListView(
              children: [
                for (final pokemon in pokemons)
                  SizedBox(
                    height: 40,
                    child: ListTile(
                      title: Text(
                        combineNameWithForm(
                            name: pokemon.name, form: pokemon.form),
                      ),
                      leading: CachedNetworkImage(
                        imageUrl: pokemon.imageUrl,
                        fadeInDuration: const Duration(milliseconds: 200),
                        placeholder: (context, url) => const SizedBox(
                          width: 40,
                          height: 40,
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      // trailing: Text(data.pokemon.total.toString()),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

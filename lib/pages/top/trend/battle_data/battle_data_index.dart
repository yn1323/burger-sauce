import 'package:burger_sauce/constants/ui.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/trend/trend_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

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
    // final isGrid = useState(false);

    return Column(
      children: [
        // _toggleLayout(
        //   onPressed: () => isGrid.value = !isGrid.value,
        //   isGrid: isGrid.value,
        // ),
        Expanded(
          child: ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons[index];
              return InkWell(
                onTap: () => {
                  context.goNamed(
                    'searchBattleData',
                    pathParameters: {'id': pokemon.id},
                  )
                },
                child: Container(
                  height: listHeight,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
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
                        CachedNetworkImage(
                          imageUrl: pokemon.imageUrl,
                          width: 100,
                          height: listHeight,
                          fadeInDuration: const Duration(milliseconds: 200),
                          placeholder: (context, url) => const SizedBox(
                            width: 100,
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        const Gap(10),
                        Center(
                          child: Text(
                            combineNameWithForm(
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

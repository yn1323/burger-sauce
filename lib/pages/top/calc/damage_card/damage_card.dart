import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DamageCard extends HookConsumerWidget {
  const DamageCard({Key? key, required this.damageCustomBase})
      : super(key: key);

  final DamageCustomBase damageCustomBase;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calcNotifier = ref.watch(calcProvider.notifier);

    final pokemon = calcNotifier.getPokemon(id: damageCustomBase.pokemonId);

    return Card(
      child: ListTile(
        leading: const FlutterLogo(size: 72.0),
        title: Text(pokemon.name),
        subtitle: Container(
          height: 100,
        ),
      ),
    );
  }
}

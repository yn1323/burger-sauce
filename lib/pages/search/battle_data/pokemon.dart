import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BattleDataPokemon extends HookWidget {
  final String id;

  const BattleDataPokemon({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(id),
    );
  }
}

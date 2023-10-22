import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BattleDataArguments {
  final String id;

  BattleDataArguments({required this.id});

  factory BattleDataArguments.fromMap(Map<dynamic, dynamic> map) {
    return BattleDataArguments(id: map['id']!);
  }
}

class BattleDataPokemon extends HookWidget {
  const BattleDataPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataMap =
        ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    BattleDataArguments args = BattleDataArguments.fromMap(dataMap);

    return SizedBox(
      child: Text(args.id),
    );
  }
}

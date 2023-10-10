import 'package:burger_sauce/pages/__generated__/pokemons.data.gql.dart';
import 'package:burger_sauce/pages/__generated__/pokemons.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

class SettingPage extends HookWidget {
  const SettingPage({Key? key}) : super(key: key);

  void listen() async {
    final client = GetIt.I<TypedLink>();
    final pokemonsReq = GPokemonsReq();

    final List<GPokemonsData> moge = [];
    final res = client.request(pokemonsReq).listen((r) {
      final data = r.data;
      print(data);
    }).onError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    final listerm = listen();

    return Row(children: [
      Text('dあb', style: Theme.of(context).textTheme.headlineMedium),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Press me'),
      ),
    ]);
  }
}

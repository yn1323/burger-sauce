import 'package:burger_sauce/pages/search/search_list/search_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchPage extends HookWidget {
  final String? move;
  final String? ability;
  final String? name;

  const SearchPage(
      {Key? key, this.move = '', this.ability = '', this.name = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchList(ability: ability, move: move, name: name);
  }
}

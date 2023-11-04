import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchCondition extends HookWidget {
  const SearchCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('検索条件'),
      ),
      body: const Center(child: Text('検索条件')),
    );
  }
}

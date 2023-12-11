import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CommonSearchBar extends HookWidget {
  const CommonSearchBar({
    Key? key,
    required this.onChange,
    required this.onDelete,
    this.hintText = "検索",
  }) : super(key: key);

  final String hintText;
  final Function(String) onChange;
  final Function onDelete;

  @override
  Widget build(BuildContext context) {
    final searchBarController = useTextEditingController();
    final searchWord = useState('');

    return SearchBar(
        hintText: hintText,
        elevation: const MaterialStatePropertyAll(1),
        padding: const MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0)),
        controller: searchBarController,
        onChanged: (String word) {
          searchWord.value = word;
          onChange(word);
        },
        leading: const Icon(Icons.search),
        trailing: <Widget>[
          if (searchWord.value.isNotEmpty)
            IconButton(
              onPressed: () {
                searchWord.value = '';
                searchBarController.text = '';
                onDelete();
              },
              icon: const Icon(Icons.clear),
            )
        ]);
  }
}

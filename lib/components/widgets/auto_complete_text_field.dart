import 'dart:async';

import 'package:burger_sauce/components/fragments/pokemon_image.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class AutoCompleteOption {
  const AutoCompleteOption({required this.label, this.imageUrl = ''});
  final String label;
  final String imageUrl;
}

class AutoCompleteTextField extends HookWidget {
  const AutoCompleteTextField({
    Key? key,
    required this.baseOptions,
    required this.onSelected,
    this.placeholder = '',
    this.labelText = '',
    this.showAllByDefault = true,
  }) : super(key: key);

  final List<AutoCompleteOption> baseOptions;
  final void Function(String) onSelected;
  final String placeholder;
  final String labelText;
  final bool showAllByDefault;

  @override
  Widget build(BuildContext context) {
    final options = baseOptions.map((e) => e.label);
    final focusNode = useFocusNode();
    final currentText = useState('');
    final debounceTimer = useState<Timer?>(null);

    useEffect(() {
      void focusListener() {
        if (!focusNode.hasFocus) {
          // Focusが外れたらデバウンスタイマーをキャンセル
          debounceTimer.value?.cancel();
          // そしてonSelectedを呼び出す
          onSelected(currentText.value);
        }
      }

      focusNode.addListener(focusListener);
      return () {
        focusNode.removeListener(focusListener);
        debounceTimer.value?.cancel();
      };
    }, [focusNode]);

    // フォーカス取得が難しいのでonChangeのDebounceで代用
    void onTextChanged(String text) {
      debounceTimer.value?.cancel();
      // 新しいタイマーを開始する
      debounceTimer.value = Timer(const Duration(milliseconds: 2000), () {
        onSelected(text);
      });
      currentText.value = text;
    }

    return Autocomplete(
      optionsBuilder: (TextEditingValue textEditingValue) {
        currentText.value = textEditingValue.text;
        if (textEditingValue.text == '') {
          return showAllByDefault ? options : const Iterable<String>.empty();
        }

        return options.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase()) ||
              option.contains(hiraToKata(textEditingValue.text));
        });
      },
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: placeholder,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                textEditingController.clear();
                currentText.value = '';
                onSelected('');
              },
            ),
          ),
          onChanged: onTextChanged,
          onFieldSubmitted: (String value) {
            debounceTimer.value?.cancel();
            onSelected(value);
          },
        );
      },
      onSelected: (String selection) {
        onSelected(selection);
      },
      optionsViewBuilder: (
        BuildContext context,
        AutocompleteOnSelected<String> onSelected,
        Iterable<String> options,
      ) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 24,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 300,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    final option = options.elementAt(index);
                    final imageUrl = baseOptions
                        .firstWhere((element) => element.label == option)
                        .imageUrl;
                    return Builder(
                      builder: (BuildContext context) {
                        final bool highlight =
                            AutocompleteHighlightedOption.of(context) == index;
                        if (highlight) {
                          SchedulerBinding.instance
                              .addPostFrameCallback((Duration timeStamp) {
                            Scrollable.ensureVisible(context, alignment: 0.5);
                          });
                        }
                        return InkWell(
                          child: Row(
                            children: <Widget>[
                              if (imageUrl.isNotEmpty)
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: PokemonImage(
                                    imageUrl: imageUrl,
                                    width: 56,
                                    height: 56,
                                    ballSkeleton: false,
                                    showSkeleton: false,
                                  ),
                                ),
                              const Gap(10),
                              Container(
                                padding: imageUrl.isEmpty
                                    ? const EdgeInsets.all(16)
                                    : null,
                                child: Text(
                                  option,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            debounceTimer.value?.cancel();
                            onSelected(option);
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

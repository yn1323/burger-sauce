import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/components/base/common_search_bar.dart';
import 'package:burger_sauce/components/fragments/move_type_image.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class MoveSelectBottomSheet extends HookWidget {
  const MoveSelectBottomSheet({
    Key? key,
    required this.moves,
    required this.getMoveType,
  }) : super(key: key);

  final List<GDamageCalcSummaryData_moves> moves;
  final MoveType Function(String) getMoveType;

  @override
  Widget build(BuildContext context) {
    final searchWord = useState('');

    return BottomModalSheetTemplate(
      isScrollable: true,
      title: 'わざ',
      child: Column(
        children: [
          CommonSearchBar(
            hintText: '検索',
            onChange: (String word) => searchWord.value = word,
            onDelete: () => searchWord.value = '',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 300,
            child: ListView(
              children: moves
                  .where((move) => move.name.contains(searchWord.value))
                  .map(
                (e) {
                  final moveType = getMoveType(e.id);
                  return CheckboxListTile(
                    value: true,
                    title: SizedBox(
                      child: Row(
                        children: [
                          MoveTypeImage(
                            attackTypeImageUrl: moveType.attackType.imageUrl,
                            typeImageUrl: moveType.type.textImageUrl,
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e.name,
                                  style: const TextStyle(fontSize: 18.0)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 150,
                                child: Text(
                                  e.detail,
                                  style: const TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: const EdgeInsets.all(0),
                    onChanged: (hoge) {},
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

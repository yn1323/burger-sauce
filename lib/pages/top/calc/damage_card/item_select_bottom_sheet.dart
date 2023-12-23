import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/components/base/image_widget.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class ItemSelectBottomSheet extends HookWidget {
  const ItemSelectBottomSheet({
    Key? key,
    required this.items,
    required this.battleData,
    required this.onChange,
  }) : super(key: key);

  final List<GDamageCalcSummaryData_items> items;
  final GDamageCalcSummaryData_battleDatasLatest_battleDatas? battleData;
  final void Function(String typeId) onChange;

  double getRate(String itemId) {
    if (battleData == null) return 0;

    if (battleData!.battleDataItem.where((e) => e.itemId == itemId).isEmpty) {
      return 0;
    }
    return battleData!.battleDataItem
        .firstWhere((e) => e.itemId == itemId)
        .rate;
  }

  @override
  Widget build(BuildContext context) {
    return BottomModalSheetTemplate(
      isScrollable: true,
      title: 'アイテム',
      child: Expanded(
        child: ListView(
          children: items.map(
            (e) {
              final rate = getRate(e.id);
              return ListTile(
                title: SizedBox(
                  height: 32,
                  child: Row(
                    children: [
                      ImageWidget(imageUrl: e.imageUrl, width: 32),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(e.name,
                                    style: const TextStyle(fontSize: 16.0)),
                                if (rate > 0)
                                  Text(
                                    '[使用率：$rate%]',
                                    style: const TextStyle(fontSize: 14.0),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  onChange(e.id);
                  Navigator.pop(context);
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

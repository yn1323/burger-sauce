import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/components/base/image_widget.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class ItemSelect extends StatelessWidget {
  const ItemSelect({
    super.key,
    required this.battleData,
    required this.calcStore,
    required this.calcNotifier,
    required this.damageCustomBase,
    required this.item,
  });

  final GDamageCalcSummaryData_battleDatasLatest_battleDatas? battleData;
  final CalcState calcStore;
  final Calc calcNotifier;
  final DamageCustomBase damageCustomBase;
  final GDamageCalcSummaryData_items item;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return ItemSelectBottomSheet(
                battleData: battleData,
                items: calcStore.items!,
                onChange: (itemId) => calcNotifier.updateItem(
                      id: damageCustomBase.id,
                      nextItemId: itemId,
                    ));
          },
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: ImageWidget(
        imageUrl: item.imageUrl,
        width: 64,
        height: 32,
      ),
    );
  }
}

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

  List<GDamageCalcSummaryData_items> orderedItems() {
    if (battleData == null) return items;
    final topRatedTypes = battleData!.battleDataItem
        .map((e) => items.firstWhere((item) => item.id == e.itemId))
        .toList();

    final topRatedTypeIds = topRatedTypes.map((e) => e.id).toList();

    final nonRatedTypes = items.where((e) => !topRatedTypeIds.contains(e.id));

    return [...topRatedTypes, ...nonRatedTypes];
  }

  @override
  Widget build(BuildContext context) {
    return BottomModalSheetTemplate(
      isScrollable: true,
      title: 'アイテム',
      child: Expanded(
        child: ListView(
          children: orderedItems().map(
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

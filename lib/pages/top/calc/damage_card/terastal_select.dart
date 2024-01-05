import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/components/base/image_widget.dart';
import 'package:burger_sauce/components/styles/button.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class TerastalSelect extends StatelessWidget {
  const TerastalSelect({
    super.key,
    required this.battleData,
    required this.calcStore,
    required this.calcNotifier,
    required this.damageCustomBase,
    required this.terastal,
  });

  final GDamageCalcSummaryData_battleDatasLatest_battleDatas? battleData;
  final CalcState calcStore;
  final Calc calcNotifier;
  final DamageCustomBase damageCustomBase;
  final GDamageCalcSummaryData_types terastal;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return TerastalSelectBottomSheet(
              battleData: battleData,
              types: calcStore.types!,
              onChange: (typeId) => calcNotifier.updateTerastal(
                id: damageCustomBase.id,
                nextTerastalId: typeId,
              ),
            );
          },
        );
      },
      style: getCardButtonFormStyle(context),
      child: ImageWidget(
        imageUrl: terastal.terastalImageUrl,
        width: 64,
        height: 32,
      ),
    );
  }
}

class TerastalSelectBottomSheet extends HookWidget {
  const TerastalSelectBottomSheet({
    Key? key,
    required this.types,
    required this.battleData,
    required this.onChange,
  }) : super(key: key);

  final List<GDamageCalcSummaryData_types> types;
  final GDamageCalcSummaryData_battleDatasLatest_battleDatas? battleData;
  final void Function(String typeId) onChange;

  double getRate(String typeId) {
    if (battleData == null) return 0;

    if (battleData!.battleDataTerastal
        .where((e) => e.typeId == typeId)
        .isEmpty) {
      return 0;
    }
    return battleData!.battleDataTerastal
        .firstWhere((e) => e.typeId == typeId)
        .rate;
  }

  List<GDamageCalcSummaryData_types> orderedTypes() {
    if (battleData == null) return types;
    final topRatedTypes = battleData!.battleDataTerastal
        .map((e) => types.firstWhere((type) => type.id == e.typeId))
        .toList();

    final topRatedTypeIds = topRatedTypes.map((e) => e.id).toList();

    final nonRatedTypes = types.where((e) => !topRatedTypeIds.contains(e.id));

    return [...topRatedTypes, ...nonRatedTypes];
  }

  @override
  Widget build(BuildContext context) {
    return BottomModalSheetTemplate(
      isScrollable: true,
      title: 'テラスタイプ',
      child: Expanded(
        child: ListView(
          children: orderedTypes().map(
            (e) {
              final rate = getRate(e.id);
              return ListTile(
                title: SizedBox(
                  height: 32,
                  child: Row(
                    children: [
                      ImageWidget(imageUrl: e.terastalImageUrl, width: 32),
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

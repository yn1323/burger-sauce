import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class AbilitySelectBottomSheet extends HookWidget {
  const AbilitySelectBottomSheet({
    Key? key,
    required this.abilities,
    required this.battleData,
    required this.onChange,
  }) : super(key: key);

  final List<GDamageCalcSummaryData_abilities> abilities;
  final GDamageCalcSummaryData_battleDatasLatest_battleDatas? battleData;
  final Function(String) onChange;

  double getRate(String abilityId) {
    if (battleData == null) return 0;

    if (battleData!.battleDataAbility
        .where((e) => e.abilityId == abilityId)
        .isEmpty) {
      return 0;
    }
    return battleData!.battleDataAbility
        .firstWhere((e) => e.abilityId == abilityId)
        .rate;
  }

  @override
  Widget build(BuildContext context) {
    return BottomModalSheetTemplate(
      title: 'とくせい',
      child: Expanded(
        child: ListView(
          children: abilities.map((e) {
            final rate = getRate(e.id);

            return ListTile(
              title: Row(
                children: [
                  Text(e.name, style: const TextStyle(fontSize: 18.0)),
                  const Gap(8.0),
                  Text('(使用率：$rate%)'),
                ],
              ),
              subtitle: Text(e.detail, style: const TextStyle(fontSize: 12.0)),
              onTap: () {
                onChange(e.id);
                Navigator.pop(context);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

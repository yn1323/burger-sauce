import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AbilitySelectBottomSheet extends HookWidget {
  const AbilitySelectBottomSheet({
    Key? key,
    required this.abilities,
    required this.onChange,
  }) : super(key: key);

  final List<GDamageCalcSummaryData_abilities> abilities;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return BottomModalSheetTemplate(
      title: 'とくせい',
      child: Expanded(
        child: ListView(
          children: abilities
              .map(
                (e) => ListTile(
                  title: Text(e.name, style: const TextStyle(fontSize: 18.0)),
                  onTap: () {
                    onChange(e.id);
                    Navigator.pop(context);
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

import 'package:burger_sauce/components/styles/tile.dart';
import 'package:burger_sauce/constants/ui.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DefenseRankConditionSelect extends HookWidget {
  const DefenseRankConditionSelect({
    super.key,
    required this.damageCustomBase,
    required this.calcNotifier,
  });

  final DamageCustomBase damageCustomBase;
  final Calc calcNotifier;

  List<Text> rankLabels() {
    final list = <Text>[];
    final positive = TextStyle(color: colorPositive, fontSize: 11);
    final negative = TextStyle(color: colorNegative, fontSize: 11);
    final rankB = damageCustomBase.status.statusRankB;
    final rankD = damageCustomBase.status.statusRankD;

    if (rankB != 0) {
      list.add(Text('B:${getNumberInString(rankB)}   ',
          style: rankB > 0 ? positive : negative));
    }
    if (rankD != 0) {
      list.add(Text('D:${getNumberInString(rankD)}   ',
          style: rankD > 0 ? positive : negative));
    }

    return list;
  }

  List<Text> conditionLabels() {
    final list = <Text>[];
    const style = TextStyle(fontSize: 11);
    final weather = damageCustomBase.battleCondition.weather;
    final field = damageCustomBase.battleCondition.field;
    final hasReflect = damageCustomBase.battleCondition.hasReflect;
    final hasLightScreen = damageCustomBase.battleCondition.hasLightScreen;
    final extraDamageStealthRock =
        damageCustomBase.battleCondition.extraDamageStealthRock;
    final extraDamageDisguise =
        damageCustomBase.battleCondition.extraDamageDisguise;
    final extraDamageRockyHelmet =
        damageCustomBase.battleCondition.extraDamageRockyHelmet;
    final extraDamageLifeOrb =
        damageCustomBase.battleCondition.extraDamageLifeOrb;

    if (weather.isNotEmpty) {
      final name = weather == "harshSunlight"
          ? "にほんばれ"
          : weather == "rain"
              ? "あめ"
              : weather == "sandstorm"
                  ? "すなあらし"
                  : "あられ";

      list.add(Text('$name   ', style: style));
    }
    if (field.isNotEmpty) {
      final name = field == "electric"
          ? "エレキフィールド"
          : field == "grassy"
              ? "グラスフィールド"
              : field == "misty"
                  ? "ミストフィールド"
                  : "サイコフィールド";

      list.add(Text('$name   ', style: style));
    }
    if (hasReflect) {
      list.add(const Text('リフレクター   ', style: style));
    }
    if (hasLightScreen) {
      list.add(const Text('ひかりのかべ   ', style: style));
    }
    if (extraDamageStealthRock) {
      list.add(const Text('ステルスロック   ', style: style));
    }
    if (extraDamageDisguise) {
      list.add(const Text('ばけのかわ   ', style: style));
    }
    if (extraDamageRockyHelmet) {
      list.add(const Text('ゴツゴツメット   ', style: style));
    }
    if (extraDamageLifeOrb) {
      list.add(const Text('いのちのたま   ', style: style));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    final key = PageStorageKey('${damageCustomBase.id}-defenseRank');

    return ExpansionTile(
      key: key,
      initiallyExpanded: isExpanded.value,
      onExpansionChanged: (expanded) => isExpanded.value = expanded,
      shape: expansionTileShape,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('ランク補正・状態'),
        Wrap(children: [
          const Text(
            '選択中  ',
            style: TextStyle(fontSize: 11),
          ),
          if (rankLabels().isEmpty && conditionLabels().isEmpty)
            const Text(
              'なし',
              style: TextStyle(fontSize: 11),
            ),
          ...rankLabels(),
          ...conditionLabels(),
        ])
      ]),
      children: [
        StatusRankEdit(
            label: 'B',
            rank: damageCustomBase.status.statusRankB,
            onChange: (int nextRank) => calcNotifier.updateRank(
                id: damageCustomBase.id, status: 'B', nextRank: nextRank)),
        StatusRankEdit(
            label: 'D',
            rank: damageCustomBase.status.statusRankD,
            onChange: (int nextRank) => calcNotifier.updateRank(
                id: damageCustomBase.id, status: 'D', nextRank: nextRank)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: '',
                  child: Text('天候：なし'),
                ),
                DropdownMenuItem(
                  value: 'harshSunlight',
                  child: Text('にほんばれ'),
                ),
                DropdownMenuItem(
                  value: 'rain',
                  child: Text('あめ'),
                ),
                DropdownMenuItem(
                  value: 'sandstorm',
                  child: Text('すなあらし'),
                ),
                DropdownMenuItem(
                  value: 'hail',
                  child: Text('あられ'),
                ),
              ],
              value: damageCustomBase.battleCondition.weather,
              onChanged: (value) {
                calcNotifier.updateCondition(
                    id: damageCustomBase.id,
                    battleCondition: "weather",
                    next: value);
              },
            ),
            DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: '',
                  child: Text('フィールド：なし'),
                ),
                DropdownMenuItem(
                  value: 'electric',
                  child: Text('エレキフィールド'),
                ),
                DropdownMenuItem(
                  value: 'grassy',
                  child: Text('グラスフィールド'),
                ),
                DropdownMenuItem(
                  value: 'misty',
                  child: Text('ミストフィールド'),
                ),
                DropdownMenuItem(
                  value: 'psychic',
                  child: Text('サイコフィールド'),
                ),
              ],
              value: damageCustomBase.battleCondition.field,
              onChanged: (value) {
                calcNotifier.updateCondition(
                    id: damageCustomBase.id,
                    battleCondition: "field",
                    next: value);
              },
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(children: [
            ConditionSelect(
              width: 180,
              checked: damageCustomBase.battleCondition.hasReflect,
              label: 'リフレクター',
              onChange: (bool checked) => calcNotifier.updateCondition(
                  id: damageCustomBase.id,
                  battleCondition: "hasReflect",
                  next: checked),
            ),
            ConditionSelect(
              width: 180,
              checked: damageCustomBase.battleCondition.hasLightScreen,
              label: 'ひかりのかべ',
              onChange: (bool checked) => calcNotifier.updateCondition(
                  id: damageCustomBase.id,
                  battleCondition: "hasLightScreen",
                  next: checked),
            ),
          ]),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(children: [
            ConditionSelect(
              width: 190,
              checked: damageCustomBase.battleCondition.extraDamageStealthRock,
              label: 'ステルスロック',
              onChange: (bool checked) => calcNotifier.updateCondition(
                  id: damageCustomBase.id,
                  battleCondition: "extraDamageStealthRock",
                  next: checked),
            ),
            ConditionSelect(
              checked: damageCustomBase.battleCondition.extraDamageDisguise,
              label: 'ばけのかわ',
              onChange: (bool checked) => calcNotifier.updateCondition(
                  id: damageCustomBase.id,
                  battleCondition: "extraDamageDisguise",
                  next: checked),
            ),
            ConditionSelect(
              width: 190,
              checked: damageCustomBase.battleCondition.extraDamageRockyHelmet,
              label: 'ゴツゴツメット',
              onChange: (bool checked) => calcNotifier.updateCondition(
                  id: damageCustomBase.id,
                  battleCondition: "extraDamageRockyHelmet",
                  next: checked),
            ),
            ConditionSelect(
              width: 170,
              checked: damageCustomBase.battleCondition.extraDamageLifeOrb,
              label: 'いのちのたま',
              onChange: (bool checked) => calcNotifier.updateCondition(
                  id: damageCustomBase.id,
                  battleCondition: "extraDamageLifeOrb",
                  next: checked),
            ),
          ]),
        ),
      ],
    );
  }
}

class ConditionSelect extends StatelessWidget {
  const ConditionSelect({
    super.key,
    required this.checked,
    required this.label,
    required this.onChange,
    this.width = 130,
  });

  final bool checked;
  final String label;
  final Function(bool) onChange;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: CheckboxListTile(
        contentPadding: const EdgeInsets.all(0),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(label),
        value: checked,
        onChanged: (checked) => onChange(checked!),
      ),
    );
  }
}

class StatusRankEdit extends StatelessWidget {
  const StatusRankEdit({
    super.key,
    required this.label,
    required this.rank,
    required this.onChange,
  });

  final String label;
  final int rank;
  final Function(int) onChange;

  static const maxRank = 6;
  static const minRank = -6;

  Color? getCorrectStringColor(int number) {
    if (number == 0) return null;
    if (number > 0) return colorPositive;
    return colorNegative;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label：${getNumberInString(rank)}',
            style: TextStyle(
              color: getCorrectStringColor(rank),
            ),
          ),
          Row(
            children: [
              IconButton(
                color: colorPositive,
                icon: const Icon(Icons.add),
                onPressed: rank >= maxRank ? null : () => onChange(rank + 1),
              ),
              IconButton(
                color: colorNegative,
                icon: const Icon(Icons.remove),
                onPressed: rank <= minRank ? null : () => onChange(rank - 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

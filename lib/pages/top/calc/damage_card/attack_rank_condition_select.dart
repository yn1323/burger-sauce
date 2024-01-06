import 'package:burger_sauce/components/styles/tile.dart';
import 'package:burger_sauce/constants/ui.dart';
import 'package:burger_sauce/helpers/string.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AttackRankConditionSelect extends HookWidget {
  const AttackRankConditionSelect({
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
    final rankA = damageCustomBase.status.statusRankA;
    final rankB = damageCustomBase.status.statusRankB;
    final rankC = damageCustomBase.status.statusRankC;

    if (rankA != 0) {
      list.add(Text('A:${getNumberInString(rankA)}   ',
          style: rankA > 0 ? positive : negative));
    }
    if (rankB != 0) {
      list.add(Text('B:${getNumberInString(rankB)}   ',
          style: rankB > 0 ? positive : negative));
    }
    if (rankC != 0) {
      list.add(Text('C:${getNumberInString(rankC)}   ',
          style: rankC > 0 ? positive : negative));
    }

    return list;
  }

  List<Text> conditionLabels() {
    final list = <Text>[];
    const style = TextStyle(fontSize: 11);
    final isBurn = damageCustomBase.battleCondition.isBurn;
    final isCharge = damageCustomBase.battleCondition.isCharge;
    final isCritical = damageCustomBase.battleCondition.isCritical;

    if (isBurn) {
      list.add(const Text('やけど   ', style: style));
    }
    if (isCharge) {
      list.add(const Text('じゅうでん   ', style: style));
    }
    if (isCritical) {
      list.add(const Text('急所   ', style: style));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);

    return ExpansionTile(
      initiallyExpanded: isExpanded.value,
      onExpansionChanged: (expanded) => isExpanded.value = expanded,
      shape: expansionTileShape,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('ランク補正・状態'),
        Wrap(children: [
          if (rankLabels().isNotEmpty || conditionLabels().isNotEmpty)
            const Text(
              '選択中  ',
              style: TextStyle(fontSize: 11),
            ),
          ...rankLabels(),
          ...conditionLabels(),
        ])
      ]),
      children: [
        StatusRankEdit(
            label: 'A',
            rank: damageCustomBase.status.statusRankA,
            onChange: (int nextRank) => calcNotifier.updateRank(
                id: damageCustomBase.id, status: 'A', nextRank: nextRank)),
        StatusRankEdit(
            label: 'B',
            rank: damageCustomBase.status.statusRankB,
            onChange: (int nextRank) => calcNotifier.updateRank(
                id: damageCustomBase.id, status: 'B', nextRank: nextRank)),
        StatusRankEdit(
            label: 'C',
            rank: damageCustomBase.status.statusRankC,
            onChange: (int nextRank) => calcNotifier.updateRank(
                id: damageCustomBase.id, status: 'C', nextRank: nextRank)),
        Wrap(children: [
          ConditionSelect(
            checked: damageCustomBase.battleCondition.isBurn,
            label: 'やけど',
            onChange: (bool checked) => calcNotifier.updateCondition(
                id: damageCustomBase.id,
                battleCondition: "isBurn",
                next: checked),
          ),
          ConditionSelect(
            checked: damageCustomBase.battleCondition.isCharge,
            label: 'じゅうでん',
            onChange: (bool checked) => calcNotifier.updateCondition(
                id: damageCustomBase.id,
                battleCondition: "isCharge",
                next: checked),
          ),
          ConditionSelect(
            checked: damageCustomBase.battleCondition.isCritical,
            label: '急所',
            onChange: (bool checked) => calcNotifier.updateCondition(
                id: damageCustomBase.id,
                battleCondition: "isCritical",
                next: checked),
          ),
        ]),
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

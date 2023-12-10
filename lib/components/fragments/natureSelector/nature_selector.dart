import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Nature {
  const Nature({
    required this.increase,
    required this.decrease,
  });

  final String increase;
  final String decrease;
}

const List<Nature> natures = [
  Nature(increase: '-', decrease: '-'),
  Nature(increase: 'A', decrease: 'B'),
  Nature(increase: 'A', decrease: 'C'),
  Nature(increase: 'A', decrease: 'D'),
  Nature(increase: 'A', decrease: 'S'),
  Nature(increase: 'B', decrease: 'A'),
  Nature(increase: 'B', decrease: 'C'),
  Nature(increase: 'B', decrease: 'D'),
  Nature(increase: 'B', decrease: 'S'),
  Nature(increase: 'C', decrease: 'A'),
  Nature(increase: 'C', decrease: 'B'),
  Nature(increase: 'C', decrease: 'D'),
  Nature(increase: 'C', decrease: 'S'),
  Nature(increase: 'D', decrease: 'A'),
  Nature(increase: 'D', decrease: 'B'),
  Nature(increase: 'D', decrease: 'C'),
  Nature(increase: 'D', decrease: 'S'),
  Nature(increase: 'S', decrease: 'A'),
  Nature(increase: 'S', decrease: 'B'),
  Nature(increase: 'S', decrease: 'C'),
  Nature(increase: 'S', decrease: 'D'),
];

class NatureSelector extends HookConsumerWidget {
  const NatureSelector({
    Key? key,
    this.initialValueIncrease,
    this.initialValueDecrease,
    required this.onChange,
  }) : super(key: key);

  final String? initialValueIncrease;
  final String? initialValueDecrease;
  final Function(Nature) onChange;

  final TextStyle increaseTextStyle = const TextStyle(
    color: Colors.red,
    fontSize: 14,
  );

  final TextStyle decreaseTextStyle = const TextStyle(
    color: Colors.blue,
    fontSize: 14,
  );

  final TextStyle normalTextStyle = const TextStyle(
    fontSize: 14,
  );

  int getInitialNature() {
    if (initialValueIncrease == null || initialValueDecrease == null) {
      return 0;
    }

    for (var i = 0; i < natures.length; i++) {
      if (natures[i].increase == initialValueIncrease &&
          natures[i].decrease == initialValueDecrease) {
        return i;
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = useState(natures[getInitialNature()]);

    return DropdownButton(
      isExpanded: true,
      items: natures.map<DropdownMenuItem<Nature>>((value) {
        return DropdownMenuItem(
          value: value,
          child: Row(
            children: [
              if (value.increase == '-' && value.decrease == '-')
                // ignore: prefer_const_constructors
                Text(
                  'なし',
                  style: normalTextStyle,
                ),
              if (value.increase != '-' && value.decrease != '-')
                // ignore: prefer_const_constructors
                Text(
                  "↑",
                  style: increaseTextStyle,
                ),
              if (value.increase != '-' && value.decrease != '-')
                Text(
                  value.increase,
                  style: increaseTextStyle,
                ),
              const Gap(24),
              if (value.increase != '-' && value.decrease != '-')
                // ignore: prefer_const_constructors
                Text(
                  "↓",
                  style: decreaseTextStyle,
                ),
              if (value.increase != '-' && value.decrease != '-')
                Text(
                  value.decrease,
                  style: decreaseTextStyle,
                ),
            ],
          ),
        );
      }).toList(),
      value: isSelected.value,
      onChanged: (Nature? value) {
        if (value == null) return;
        isSelected.value = value;
        onChange(value);
      },
    );
  }
}

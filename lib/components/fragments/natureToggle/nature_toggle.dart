import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class Nature {
  const Nature({
    required this.increase,
    required this.decrease,
    this.release = false,
  });

  final String increase;
  final String decrease;
  final bool release;
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

List<String> labels = ["A", "B", "C", "D", "S"];

class NatureToggle extends HookWidget {
  const NatureToggle({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.onChange,
  }) : super(key: key);

  final String increase;
  final String decrease;
  final Function(Nature) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('補正↑', style: TextStyle(fontSize: 16)),
      const Gap(4),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: labels
            .map(
              (label) => ElevatedButton(
                onPressed: label == decrease
                    ? null
                    : () {
                        onChange(Nature(
                          increase: label,
                          decrease: decrease,
                          release: label == increase,
                        ));
                      },
                style: label == increase
                    ? ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                      )
                    : null,
                child: Text(label,
                    style: label == increase
                        ? const TextStyle(color: Colors.white)
                        : null),
              ),
            )
            .toList(),
      ),
      const Gap(16),
      const Text('補正↓', style: TextStyle(fontSize: 16)),
      const Gap(4),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: labels
            .map(
              (label) => ElevatedButton(
                onPressed: label == increase
                    ? null
                    : () {
                        onChange(Nature(
                          increase: increase,
                          decrease: label,
                          release: label == decrease,
                        ));
                      },
                style: label == decrease
                    ? ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[400],
                      )
                    : null,
                child: Text(label,
                    style: label == decrease
                        ? const TextStyle(color: Colors.white)
                        : null),
              ),
            )
            .toList(),
      ),
    ]);
  }
}

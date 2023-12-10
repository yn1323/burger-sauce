import 'package:burger_sauce/models/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

int max = 252;
int min = 0;

List<String> statusLabels = ["H", "A", "B", "C", "D", "S"];

class EvSliders extends HookConsumerWidget {
  const EvSliders({Key? key, required this.onChange, required this.status})
      : super(key: key);

  final Status status;
  final void Function({
    required String type,
    required int value,
  }) onChange;

  int getEvSum() {
    return status.evH +
        status.evA +
        status.evB +
        status.evC +
        status.evD +
        status.evS;
  }

  List<int> getCalculatedStatus() {
    final realStatus = status.getCalculatedStatus();
    return [
      realStatus['H']!,
      realStatus['A']!,
      realStatus['B']!,
      realStatus['C']!,
      realStatus['D']!,
      realStatus['S']!,
    ];
  }

  List<int> getEv() {
    return [
      status.evH,
      status.evA,
      status.evB,
      status.evC,
      status.evD,
      status.evS,
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      return null;
    }, [status]);

    final cnt = useState(0);
    void reload() {
      cnt.value = cnt.value + 1;
    }

    return Column(
      children: [
        Text('合計 : ${getEvSum()}',
            style: TextStyle(
              fontSize: 20,
              color: getEvSum() > 510 ? Colors.red : null,
            )),
        const Gap(12),
        ...statusLabels.map((label) {
          final index = statusLabels.indexOf(label);

          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '$label : ${getCalculatedStatus()[index]} (${getEv()[index]})',
                    style: TextStyle(
                      fontSize: 16,
                      color: status.getIncreaseNature() == label
                          ? Colors.red
                          : status.getDecreaseNature() == label
                              ? Colors.blue
                              : null,
                    ),
                  ),
                ),
                EvSlider(
                  value: getEv()[index].toDouble(),
                  onChanged: (value) {
                    onChange(
                      type: label,
                      value: value,
                    );
                    reload();
                  },
                ),
              ],
            ),
          );
        }).toList()
      ],
    );
  }
}

class EvSlider extends HookConsumerWidget {
  const EvSlider({
    Key? key,
    required this.onChanged,
    this.value = 0.0,
  }) : super(key: key);

  final Function(int nextVal) onChanged;
  final double value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void setVal(double nextVal) {
      onChanged(nextVal.toInt());
    }

    return Row(
      children: [
        ElevatedButton(
            onPressed: value == min.toDouble() ? null : () => setVal(value - 4),
            child: const Text("-4")),
        Expanded(
          child: Slider(
            value: value,
            min: min.toDouble(),
            max: max.toDouble(),
            divisions: 63,
            label: value.round().toString(),
            onChanged: setVal,
          ),
        ),
        ElevatedButton(
            onPressed: value == max.toDouble() ? null : () => setVal(value + 4),
            child: const Text("+4")),
      ],
    );
  }
}

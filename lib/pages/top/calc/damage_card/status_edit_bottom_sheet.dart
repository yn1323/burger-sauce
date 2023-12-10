import 'package:burger_sauce/components/fragments/evSliders/ev_sliders.dart';
import 'package:burger_sauce/components/fragments/natureToggle/nature_toggle.dart';
import 'package:burger_sauce/models/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class StatusEditBottomSheet extends HookWidget {
  const StatusEditBottomSheet({
    Key? key,
    required this.initialStatus,
    required this.onChangeNature,
    required this.onChangeEv,
  }) : super(key: key);

  final Status initialStatus;
  final Function(Nature) onChangeNature;
  final Function({required String type, required int value}) onChangeEv;

  @override
  Widget build(BuildContext context) {
    final status = useState(initialStatus);
    final cnt = useState(0);

    return Container(
      // height: MediaQuery.of(context).size.height * 0.8,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          NatureToggle(
            increase: status.value.getIncreaseNature(),
            decrease: status.value.getDecreaseNature(),
            onChange: (nature) {
              onChangeNature(nature);

              status.value.updateNature(
                decrease: nature.decrease,
                increase: nature.increase,
              );
              cnt.value++;
            },
          ),
          const Gap(24),
          EvSliders(
            status: status.value,
            onChange: ({required type, required value}) {
              onChangeEv(type: type, value: value);

              switch (type) {
                case "H":
                  status.value.evH = value;
                  break;
                case "A":
                  status.value.evA = value;
                  break;
                case "B":
                  status.value.evB = value;
                  break;
                case "C":
                  status.value.evC = value;
                  break;
                case "D":
                  status.value.evD = value;
                  break;
                case "S":
                  status.value.evS = value;
                  break;
              }
              cnt.value++;
            },
          ),
        ],
      ),
    );
  }
}

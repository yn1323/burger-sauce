import 'package:burger_sauce/components/base/bottom_modal_sheet_template.dart';
import 'package:burger_sauce/components/fragments/evSliders/ev_sliders.dart';
import 'package:burger_sauce/components/fragments/natureToggle/nature_toggle.dart';
import 'package:burger_sauce/components/styles/button.dart';
import 'package:burger_sauce/models/status.dart';
import 'package:burger_sauce/pages/search/pokemon_detail/status_list.dart';
import 'package:burger_sauce/pages/top/calc/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class StatusEdit extends StatelessWidget {
  const StatusEdit({
    super.key,
    required this.damageCustomBase,
    required this.calcNotifier,
  });

  final DamageCustomBase damageCustomBase;
  final Calc calcNotifier;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getCardButtonFormStyle(context),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return StatusEditBottomSheet(
              initialStatus: damageCustomBase.status,
              onChangeNature: (nature) {
                calcNotifier.updateNature(
                  id: damageCustomBase.id,
                  increase: nature.increase,
                  decrease: nature.decrease,
                );
              },
              onChangeEv: ({required type, required value}) {
                calcNotifier.updateEv(
                    type: type, ev: value, id: damageCustomBase.id);
              },
            );
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: statusLabels
            .map(
              (label) => Expanded(
                flex: 1,
                child: StatusBox(
                  verticalSubStatus: true,
                  label: label,
                  status: damageCustomBase.status.getRealStatus(label: label),
                  subStatus: damageCustomBase.status.getEv(label),
                  isIncrease:
                      damageCustomBase.status.getIsIncreaseNature(label),
                  isDecrease:
                      damageCustomBase.status.getIsDecreaseNature(label),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

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

    return BottomModalSheetTemplate(
      isScrollable: true,
      title: "せいかく・努力値",
      height: MediaQuery.of(context).size.height - 50,
      child: Container(
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
                  release: nature.release,
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
      ),
    );
  }
}

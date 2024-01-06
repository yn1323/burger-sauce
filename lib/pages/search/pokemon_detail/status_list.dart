import 'package:burger_sauce/models/status.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatusBox extends StatelessWidget {
  const StatusBox({
    Key? key,
    required this.label,
    required this.status,
    this.subStatus,
    this.isIncrease,
    this.isDecrease,
    this.verticalSubStatus = false,
  }) : super(key: key);

  final String label;
  final int status;
  final int? subStatus;
  final bool? isIncrease;
  final bool? isDecrease;
  final bool verticalSubStatus;

  Color? textColor() {
    if (isIncrease == null || isDecrease == null) return null;

    if (isIncrease != null && isIncrease!) {
      return Colors.red[300]!;
    } else if (isDecrease != null && isDecrease!) {
      return Colors.blue[300]!;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.black54, width: 1.0)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(6, 4, 6, 6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              label,
                              style: TextStyle(
                                  color: textColor(),
                                  fontWeight:
                                      isIncrease != null && isIncrease! ||
                                              isDecrease != null && isDecrease!
                                          ? FontWeight.bold
                                          : null),
                            ),
                          ),
                          if (isIncrease != null && isIncrease!)
                            Positioned(
                              right: 0,
                              top: 2,
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.red[300],
                                size: 16,
                              ),
                            ),
                          if (isDecrease != null && isDecrease!)
                            Positioned(
                              right: 0,
                              top: 3,
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.blue[300],
                                size: 16,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(2),
                Container(
                  width: 100, // 仮置き
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black38, width: 0.3),
                  ),
                ),
                const Gap(5),
                Text(
                    subStatus != null && !verticalSubStatus
                        ? '$status($subStatus)'
                        : status.toString(),
                    style: const TextStyle(fontSize: 16)),
                if (subStatus != null && verticalSubStatus) Text('($subStatus)')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatusList extends StatelessWidget {
  const StatusList({super.key, required this.status});

  final Status status;
  final List<String> labels = const ['H', 'A', 'B', 'C', 'D', 'S'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: labels
          .map(
            (e) => Expanded(
              flex: 1,
              child: StatusBox(
                label: e,
                status: status.getStatus(e),
              ),
            ),
          )
          .toList(),
    );
  }
}

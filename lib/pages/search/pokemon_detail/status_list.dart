import 'package:burger_sauce/models/status.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatusBox extends StatelessWidget {
  const StatusBox({Key? key, required this.label, required this.status})
      : super(key: key);

  final String label;
  final int status;

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
                Text(label),
                const Gap(2),
                Container(
                  width: 100, // 仮置き
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black38, width: 0.3),
                  ),
                ),
                const Gap(5),
                Text(status.toString(), style: const TextStyle(fontSize: 16)),
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

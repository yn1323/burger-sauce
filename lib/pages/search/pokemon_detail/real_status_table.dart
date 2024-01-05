import 'package:burger_sauce/models/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RealStatusTable extends HookWidget {
  final Status status;
  RealStatusTable({super.key, required this.status});

  final borderStyle = BoxDecoration(
    border: Border.all(
      color: Colors.black12,
      width: 0.5,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final s = status.getStatusPatterns();
    final List<String> list = [
      '',
      '最高',
      '準',
      '無振',
      '下降',
      '最低',
      'HP',
      s['H']?['max'].toString() ?? '',
      s['H']?['semiMax'].toString() ?? '',
      s['H']?['neutral'].toString() ?? '',
      s['H']?['semiMin'].toString() ?? '',
      s['H']?['min'].toString() ?? '',
      'こうげき',
      s['A']?['max'].toString() ?? '',
      s['A']?['semiMax'].toString() ?? '',
      s['A']?['neutral'].toString() ?? '',
      s['A']?['semiMin'].toString() ?? '',
      s['A']?['min'].toString() ?? '',
      'ぼうぎょ',
      s['B']?['max'].toString() ?? '',
      s['B']?['semiMax'].toString() ?? '',
      s['B']?['neutral'].toString() ?? '',
      s['B']?['semiMin'].toString() ?? '',
      s['B']?['min'].toString() ?? '',
      'とくこう',
      s['C']?['max'].toString() ?? '',
      s['C']?['semiMax'].toString() ?? '',
      s['C']?['neutral'].toString() ?? '',
      s['C']?['semiMin'].toString() ?? '',
      s['C']?['min'].toString() ?? '',
      'とくぼう',
      s['D']?['max'].toString() ?? '',
      s['D']?['semiMax'].toString() ?? '',
      s['D']?['neutral'].toString() ?? '',
      s['D']?['semiMin'].toString() ?? '',
      s['D']?['min'].toString() ?? '',
      'すばやさ',
      s['S']?['max'].toString() ?? '',
      s['S']?['semiMax'].toString() ?? '',
      s['S']?['neutral'].toString() ?? '',
      s['S']?['semiMin'].toString() ?? '',
      s['S']?['min'].toString() ?? '',
    ];

    return ExpansionTile(
      title: const Text('実数値'),
      // デフォルトのボーダーを上書き
      shape: const Border(
        top: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
        bottom: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: GridView.count(
              childAspectRatio: (2 / 1),
              crossAxisCount: 6,
              shrinkWrap: true,
              children: List.generate(
                42,
                (index) {
                  return Container(
                    decoration: borderStyle,
                    alignment: Alignment.center,
                    child: GridTile(
                      child: Center(
                        child: Text(
                          list[index],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

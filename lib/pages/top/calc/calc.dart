import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calc.g.dart';

@riverpod
class Calc extends _$Calc {
  @override
  int build() => 0;

  void update(int value) {
    state = value;
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'wakeup.var.gql.g.dart';

abstract class GWakeUpVars implements Built<GWakeUpVars, GWakeUpVarsBuilder> {
  GWakeUpVars._();

  factory GWakeUpVars([Function(GWakeUpVarsBuilder b) updates]) = _$GWakeUpVars;

  static Serializer<GWakeUpVars> get serializer => _$gWakeUpVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWakeUpVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GWakeUpVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWakeUpVars.serializer,
        json,
      );
}

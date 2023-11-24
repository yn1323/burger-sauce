// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'calcDamage.var.gql.g.dart';

abstract class GDamageCalcSummaryVars
    implements Built<GDamageCalcSummaryVars, GDamageCalcSummaryVarsBuilder> {
  GDamageCalcSummaryVars._();

  factory GDamageCalcSummaryVars(
          [Function(GDamageCalcSummaryVarsBuilder b) updates]) =
      _$GDamageCalcSummaryVars;

  static Serializer<GDamageCalcSummaryVars> get serializer =>
      _$gDamageCalcSummaryVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryVars.serializer,
        json,
      );
}

abstract class GDamageCalcDetailVars
    implements Built<GDamageCalcDetailVars, GDamageCalcDetailVarsBuilder> {
  GDamageCalcDetailVars._();

  factory GDamageCalcDetailVars(
          [Function(GDamageCalcDetailVarsBuilder b) updates]) =
      _$GDamageCalcDetailVars;

  String? get id;
  static Serializer<GDamageCalcDetailVars> get serializer =>
      _$gDamageCalcDetailVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcDetailVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcDetailVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcDetailVars.serializer,
        json,
      );
}

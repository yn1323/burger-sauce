// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'latestBattleData.var.gql.g.dart';

abstract class GLatestBattleDataIndexVars
    implements
        Built<GLatestBattleDataIndexVars, GLatestBattleDataIndexVarsBuilder> {
  GLatestBattleDataIndexVars._();

  factory GLatestBattleDataIndexVars(
          [Function(GLatestBattleDataIndexVarsBuilder b) updates]) =
      _$GLatestBattleDataIndexVars;

  static Serializer<GLatestBattleDataIndexVars> get serializer =>
      _$gLatestBattleDataIndexVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLatestBattleDataIndexVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLatestBattleDataIndexVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLatestBattleDataIndexVars.serializer,
        json,
      );
}

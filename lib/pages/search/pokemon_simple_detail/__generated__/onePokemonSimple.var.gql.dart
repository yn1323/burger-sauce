// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'onePokemonSimple.var.gql.g.dart';

abstract class GOnePokemonSimpleDataVars
    implements
        Built<GOnePokemonSimpleDataVars, GOnePokemonSimpleDataVarsBuilder> {
  GOnePokemonSimpleDataVars._();

  factory GOnePokemonSimpleDataVars(
          [Function(GOnePokemonSimpleDataVarsBuilder b) updates]) =
      _$GOnePokemonSimpleDataVars;

  String get id;
  static Serializer<GOnePokemonSimpleDataVars> get serializer =>
      _$gOnePokemonSimpleDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataVars.serializer,
        json,
      );
}

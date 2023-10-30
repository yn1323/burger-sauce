// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'onePokemon.var.gql.g.dart';

abstract class GOnePokemonDataVars
    implements Built<GOnePokemonDataVars, GOnePokemonDataVarsBuilder> {
  GOnePokemonDataVars._();

  factory GOnePokemonDataVars(
      [Function(GOnePokemonDataVarsBuilder b) updates]) = _$GOnePokemonDataVars;

  String get id;
  static Serializer<GOnePokemonDataVars> get serializer =>
      _$gOnePokemonDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataVars.serializer,
        json,
      );
}

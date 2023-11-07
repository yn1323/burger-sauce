// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i2;

part 'searchPokemon.var.gql.g.dart';

abstract class GSearchPokemonVars
    implements Built<GSearchPokemonVars, GSearchPokemonVarsBuilder> {
  GSearchPokemonVars._();

  factory GSearchPokemonVars([Function(GSearchPokemonVarsBuilder b) updates]) =
      _$GSearchPokemonVars;

  String? get name;
  BuiltList<String>? get types;
  BuiltList<String>? get moves;
  BuiltList<String>? get abilities;
  _i1.GPokemonSearchOption? get options;
  static Serializer<GSearchPokemonVars> get serializer =>
      _$gSearchPokemonVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchPokemonVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchPokemonVars.serializer,
        json,
      );
}

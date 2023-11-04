// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'searchPokemon.data.gql.g.dart';

abstract class GSearchPokemonData
    implements Built<GSearchPokemonData, GSearchPokemonDataBuilder> {
  GSearchPokemonData._();

  factory GSearchPokemonData([Function(GSearchPokemonDataBuilder b) updates]) =
      _$GSearchPokemonData;

  static void _initializeBuilder(GSearchPokemonDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GSearchPokemonData_pokemonSearch> get pokemonSearch;
  static Serializer<GSearchPokemonData> get serializer =>
      _$gSearchPokemonDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchPokemonData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchPokemonData.serializer,
        json,
      );
}

abstract class GSearchPokemonData_pokemonSearch
    implements
        Built<GSearchPokemonData_pokemonSearch,
            GSearchPokemonData_pokemonSearchBuilder> {
  GSearchPokemonData_pokemonSearch._();

  factory GSearchPokemonData_pokemonSearch(
          [Function(GSearchPokemonData_pokemonSearchBuilder b) updates]) =
      _$GSearchPokemonData_pokemonSearch;

  static void _initializeBuilder(GSearchPokemonData_pokemonSearchBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get id;
  String get imageUrl;
  static Serializer<GSearchPokemonData_pokemonSearch> get serializer =>
      _$gSearchPokemonDataPokemonSearchSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchPokemonData_pokemonSearch.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonData_pokemonSearch? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchPokemonData_pokemonSearch.serializer,
        json,
      );
}

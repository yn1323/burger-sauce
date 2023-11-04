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
  BuiltList<GSearchPokemonData_types> get types;
  BuiltList<GSearchPokemonData_abilities> get abilities;
  BuiltList<GSearchPokemonData_moves> get moves;
  BuiltList<GSearchPokemonData_pokemonList> get pokemonList;
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

abstract class GSearchPokemonData_types
    implements
        Built<GSearchPokemonData_types, GSearchPokemonData_typesBuilder> {
  GSearchPokemonData_types._();

  factory GSearchPokemonData_types(
          [Function(GSearchPokemonData_typesBuilder b) updates]) =
      _$GSearchPokemonData_types;

  static void _initializeBuilder(GSearchPokemonData_typesBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get textImageUrl;
  static Serializer<GSearchPokemonData_types> get serializer =>
      _$gSearchPokemonDataTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchPokemonData_types.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonData_types? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchPokemonData_types.serializer,
        json,
      );
}

abstract class GSearchPokemonData_abilities
    implements
        Built<GSearchPokemonData_abilities,
            GSearchPokemonData_abilitiesBuilder> {
  GSearchPokemonData_abilities._();

  factory GSearchPokemonData_abilities(
          [Function(GSearchPokemonData_abilitiesBuilder b) updates]) =
      _$GSearchPokemonData_abilities;

  static void _initializeBuilder(GSearchPokemonData_abilitiesBuilder b) =>
      b..G__typename = 'Ability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GSearchPokemonData_abilities> get serializer =>
      _$gSearchPokemonDataAbilitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchPokemonData_abilities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonData_abilities? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchPokemonData_abilities.serializer,
        json,
      );
}

abstract class GSearchPokemonData_moves
    implements
        Built<GSearchPokemonData_moves, GSearchPokemonData_movesBuilder> {
  GSearchPokemonData_moves._();

  factory GSearchPokemonData_moves(
          [Function(GSearchPokemonData_movesBuilder b) updates]) =
      _$GSearchPokemonData_moves;

  static void _initializeBuilder(GSearchPokemonData_movesBuilder b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GSearchPokemonData_moves> get serializer =>
      _$gSearchPokemonDataMovesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchPokemonData_moves.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonData_moves? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchPokemonData_moves.serializer,
        json,
      );
}

abstract class GSearchPokemonData_pokemonList
    implements
        Built<GSearchPokemonData_pokemonList,
            GSearchPokemonData_pokemonListBuilder> {
  GSearchPokemonData_pokemonList._();

  factory GSearchPokemonData_pokemonList(
          [Function(GSearchPokemonData_pokemonListBuilder b) updates]) =
      _$GSearchPokemonData_pokemonList;

  static void _initializeBuilder(GSearchPokemonData_pokemonListBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get imageUrl;
  String get form;
  static Serializer<GSearchPokemonData_pokemonList> get serializer =>
      _$gSearchPokemonDataPokemonListSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchPokemonData_pokemonList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonData_pokemonList? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchPokemonData_pokemonList.serializer,
        json,
      );
}

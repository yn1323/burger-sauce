// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'pokemons.data.gql.g.dart';

abstract class GPokemonsData
    implements Built<GPokemonsData, GPokemonsDataBuilder> {
  GPokemonsData._();

  factory GPokemonsData([Function(GPokemonsDataBuilder b) updates]) =
      _$GPokemonsData;

  static void _initializeBuilder(GPokemonsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPokemonsData_pokemons> get pokemons;
  static Serializer<GPokemonsData> get serializer => _$gPokemonsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPokemonsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonsData.serializer,
        json,
      );
}

abstract class GPokemonsData_pokemons
    implements Built<GPokemonsData_pokemons, GPokemonsData_pokemonsBuilder> {
  GPokemonsData_pokemons._();

  factory GPokemonsData_pokemons(
          [Function(GPokemonsData_pokemonsBuilder b) updates]) =
      _$GPokemonsData_pokemons;

  static void _initializeBuilder(GPokemonsData_pokemonsBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get base64Image;
  BuiltList<GPokemonsData_pokemons_battleData?> get battleData;
  static Serializer<GPokemonsData_pokemons> get serializer =>
      _$gPokemonsDataPokemonsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonsData_pokemons.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPokemonsData_pokemons? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonsData_pokemons.serializer,
        json,
      );
}

abstract class GPokemonsData_pokemons_battleData
    implements
        Built<GPokemonsData_pokemons_battleData,
            GPokemonsData_pokemons_battleDataBuilder> {
  GPokemonsData_pokemons_battleData._();

  factory GPokemonsData_pokemons_battleData(
          [Function(GPokemonsData_pokemons_battleDataBuilder b) updates]) =
      _$GPokemonsData_pokemons_battleData;

  static void _initializeBuilder(GPokemonsData_pokemons_battleDataBuilder b) =>
      b..G__typename = 'BattleData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPokemonsData_pokemons_battleData_battleIndex get battleIndex;
  static Serializer<GPokemonsData_pokemons_battleData> get serializer =>
      _$gPokemonsDataPokemonsBattleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonsData_pokemons_battleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPokemonsData_pokemons_battleData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonsData_pokemons_battleData.serializer,
        json,
      );
}

abstract class GPokemonsData_pokemons_battleData_battleIndex
    implements
        Built<GPokemonsData_pokemons_battleData_battleIndex,
            GPokemonsData_pokemons_battleData_battleIndexBuilder> {
  GPokemonsData_pokemons_battleData_battleIndex._();

  factory GPokemonsData_pokemons_battleData_battleIndex(
      [Function(GPokemonsData_pokemons_battleData_battleIndexBuilder b)
          updates]) = _$GPokemonsData_pokemons_battleData_battleIndex;

  static void _initializeBuilder(
          GPokemonsData_pokemons_battleData_battleIndexBuilder b) =>
      b..G__typename = 'BattleIndex';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GDateTime get capturedAt;
  String get name;
  _i2.GDateTime get startAt;
  static Serializer<GPokemonsData_pokemons_battleData_battleIndex>
      get serializer => _$gPokemonsDataPokemonsBattleDataBattleIndexSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonsData_pokemons_battleData_battleIndex.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPokemonsData_pokemons_battleData_battleIndex? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonsData_pokemons_battleData_battleIndex.serializer,
        json,
      );
}

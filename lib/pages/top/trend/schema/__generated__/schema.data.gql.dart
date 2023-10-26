// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'schema.data.gql.g.dart';

abstract class GLatestBattleDataIndexData
    implements
        Built<GLatestBattleDataIndexData, GLatestBattleDataIndexDataBuilder> {
  GLatestBattleDataIndexData._();

  factory GLatestBattleDataIndexData(
          [Function(GLatestBattleDataIndexDataBuilder b) updates]) =
      _$GLatestBattleDataIndexData;

  static void _initializeBuilder(GLatestBattleDataIndexDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GLatestBattleDataIndexData_battleDatasLatest> get battleDatasLatest;
  static Serializer<GLatestBattleDataIndexData> get serializer =>
      _$gLatestBattleDataIndexDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLatestBattleDataIndexData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLatestBattleDataIndexData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLatestBattleDataIndexData.serializer,
        json,
      );
}

abstract class GLatestBattleDataIndexData_battleDatasLatest
    implements
        Built<GLatestBattleDataIndexData_battleDatasLatest,
            GLatestBattleDataIndexData_battleDatasLatestBuilder> {
  GLatestBattleDataIndexData_battleDatasLatest._();

  factory GLatestBattleDataIndexData_battleDatasLatest(
      [Function(GLatestBattleDataIndexData_battleDatasLatestBuilder b)
          updates]) = _$GLatestBattleDataIndexData_battleDatasLatest;

  static void _initializeBuilder(
          GLatestBattleDataIndexData_battleDatasLatestBuilder b) =>
      b..G__typename = 'BattleData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLatestBattleDataIndexData_battleDatasLatest_pokemon get pokemon;
  int get rank;
  String get id;
  static Serializer<GLatestBattleDataIndexData_battleDatasLatest>
      get serializer => _$gLatestBattleDataIndexDataBattleDatasLatestSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLatestBattleDataIndexData_battleDatasLatest.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLatestBattleDataIndexData_battleDatasLatest? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLatestBattleDataIndexData_battleDatasLatest.serializer,
        json,
      );
}

abstract class GLatestBattleDataIndexData_battleDatasLatest_pokemon
    implements
        Built<GLatestBattleDataIndexData_battleDatasLatest_pokemon,
            GLatestBattleDataIndexData_battleDatasLatest_pokemonBuilder> {
  GLatestBattleDataIndexData_battleDatasLatest_pokemon._();

  factory GLatestBattleDataIndexData_battleDatasLatest_pokemon(
      [Function(GLatestBattleDataIndexData_battleDatasLatest_pokemonBuilder b)
          updates]) = _$GLatestBattleDataIndexData_battleDatasLatest_pokemon;

  static void _initializeBuilder(
          GLatestBattleDataIndexData_battleDatasLatest_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get imageUrl;
  String get form;
  static Serializer<GLatestBattleDataIndexData_battleDatasLatest_pokemon>
      get serializer =>
          _$gLatestBattleDataIndexDataBattleDatasLatestPokemonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLatestBattleDataIndexData_battleDatasLatest_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLatestBattleDataIndexData_battleDatasLatest_pokemon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLatestBattleDataIndexData_battleDatasLatest_pokemon.serializer,
        json,
      );
}

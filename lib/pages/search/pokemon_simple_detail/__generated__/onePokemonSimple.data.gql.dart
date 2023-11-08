// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'onePokemonSimple.data.gql.g.dart';

abstract class GOnePokemonSimpleDataData
    implements
        Built<GOnePokemonSimpleDataData, GOnePokemonSimpleDataDataBuilder> {
  GOnePokemonSimpleDataData._();

  factory GOnePokemonSimpleDataData(
          [Function(GOnePokemonSimpleDataDataBuilder b) updates]) =
      _$GOnePokemonSimpleDataData;

  static void _initializeBuilder(GOnePokemonSimpleDataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnePokemonSimpleDataData_pokemon? get pokemon;
  static Serializer<GOnePokemonSimpleDataData> get serializer =>
      _$gOnePokemonSimpleDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataData.serializer,
        json,
      );
}

abstract class GOnePokemonSimpleDataData_pokemon
    implements
        Built<GOnePokemonSimpleDataData_pokemon,
            GOnePokemonSimpleDataData_pokemonBuilder> {
  GOnePokemonSimpleDataData_pokemon._();

  factory GOnePokemonSimpleDataData_pokemon(
          [Function(GOnePokemonSimpleDataData_pokemonBuilder b) updates]) =
      _$GOnePokemonSimpleDataData_pokemon;

  static void _initializeBuilder(GOnePokemonSimpleDataData_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GOnePokemonSimpleDataData_pokemon_abilities> get abilities;
  BuiltList<GOnePokemonSimpleDataData_pokemon_moves> get moves;
  BuiltList<GOnePokemonSimpleDataData_pokemon_types> get types;
  int get statusA;
  int get statusB;
  int get statusC;
  int get statusD;
  int get statusH;
  int get statusS;
  String get imageLargeUrl;
  String get name;
  String get form;
  static Serializer<GOnePokemonSimpleDataData_pokemon> get serializer =>
      _$gOnePokemonSimpleDataDataPokemonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataData_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataData_pokemon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataData_pokemon.serializer,
        json,
      );
}

abstract class GOnePokemonSimpleDataData_pokemon_abilities
    implements
        Built<GOnePokemonSimpleDataData_pokemon_abilities,
            GOnePokemonSimpleDataData_pokemon_abilitiesBuilder> {
  GOnePokemonSimpleDataData_pokemon_abilities._();

  factory GOnePokemonSimpleDataData_pokemon_abilities(
      [Function(GOnePokemonSimpleDataData_pokemon_abilitiesBuilder b)
          updates]) = _$GOnePokemonSimpleDataData_pokemon_abilities;

  static void _initializeBuilder(
          GOnePokemonSimpleDataData_pokemon_abilitiesBuilder b) =>
      b..G__typename = 'Ability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get detail;
  static Serializer<GOnePokemonSimpleDataData_pokemon_abilities>
      get serializer => _$gOnePokemonSimpleDataDataPokemonAbilitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataData_pokemon_abilities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataData_pokemon_abilities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataData_pokemon_abilities.serializer,
        json,
      );
}

abstract class GOnePokemonSimpleDataData_pokemon_moves
    implements
        Built<GOnePokemonSimpleDataData_pokemon_moves,
            GOnePokemonSimpleDataData_pokemon_movesBuilder> {
  GOnePokemonSimpleDataData_pokemon_moves._();

  factory GOnePokemonSimpleDataData_pokemon_moves(
      [Function(GOnePokemonSimpleDataData_pokemon_movesBuilder b)
          updates]) = _$GOnePokemonSimpleDataData_pokemon_moves;

  static void _initializeBuilder(
          GOnePokemonSimpleDataData_pokemon_movesBuilder b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get power;
  String get name;
  String get detail;
  GOnePokemonSimpleDataData_pokemon_moves_type? get type;
  GOnePokemonSimpleDataData_pokemon_moves_attackType? get attackType;
  static Serializer<GOnePokemonSimpleDataData_pokemon_moves> get serializer =>
      _$gOnePokemonSimpleDataDataPokemonMovesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataData_pokemon_moves.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataData_pokemon_moves? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataData_pokemon_moves.serializer,
        json,
      );
}

abstract class GOnePokemonSimpleDataData_pokemon_moves_type
    implements
        Built<GOnePokemonSimpleDataData_pokemon_moves_type,
            GOnePokemonSimpleDataData_pokemon_moves_typeBuilder> {
  GOnePokemonSimpleDataData_pokemon_moves_type._();

  factory GOnePokemonSimpleDataData_pokemon_moves_type(
      [Function(GOnePokemonSimpleDataData_pokemon_moves_typeBuilder b)
          updates]) = _$GOnePokemonSimpleDataData_pokemon_moves_type;

  static void _initializeBuilder(
          GOnePokemonSimpleDataData_pokemon_moves_typeBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get textImageUrl;
  static Serializer<GOnePokemonSimpleDataData_pokemon_moves_type>
      get serializer => _$gOnePokemonSimpleDataDataPokemonMovesTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataData_pokemon_moves_type.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataData_pokemon_moves_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataData_pokemon_moves_type.serializer,
        json,
      );
}

abstract class GOnePokemonSimpleDataData_pokemon_moves_attackType
    implements
        Built<GOnePokemonSimpleDataData_pokemon_moves_attackType,
            GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder> {
  GOnePokemonSimpleDataData_pokemon_moves_attackType._();

  factory GOnePokemonSimpleDataData_pokemon_moves_attackType(
      [Function(GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder b)
          updates]) = _$GOnePokemonSimpleDataData_pokemon_moves_attackType;

  static void _initializeBuilder(
          GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder b) =>
      b..G__typename = 'AttackType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get imageUrl;
  static Serializer<GOnePokemonSimpleDataData_pokemon_moves_attackType>
      get serializer =>
          _$gOnePokemonSimpleDataDataPokemonMovesAttackTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataData_pokemon_moves_attackType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataData_pokemon_moves_attackType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataData_pokemon_moves_attackType.serializer,
        json,
      );
}

abstract class GOnePokemonSimpleDataData_pokemon_types
    implements
        Built<GOnePokemonSimpleDataData_pokemon_types,
            GOnePokemonSimpleDataData_pokemon_typesBuilder> {
  GOnePokemonSimpleDataData_pokemon_types._();

  factory GOnePokemonSimpleDataData_pokemon_types(
      [Function(GOnePokemonSimpleDataData_pokemon_typesBuilder b)
          updates]) = _$GOnePokemonSimpleDataData_pokemon_types;

  static void _initializeBuilder(
          GOnePokemonSimpleDataData_pokemon_typesBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get textImageUrl;
  String get name;
  static Serializer<GOnePokemonSimpleDataData_pokemon_types> get serializer =>
      _$gOnePokemonSimpleDataDataPokemonTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonSimpleDataData_pokemon_types.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonSimpleDataData_pokemon_types? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonSimpleDataData_pokemon_types.serializer,
        json,
      );
}

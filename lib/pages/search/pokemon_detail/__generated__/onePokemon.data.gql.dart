// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'onePokemon.data.gql.g.dart';

abstract class GOnePokemonDataData
    implements Built<GOnePokemonDataData, GOnePokemonDataDataBuilder> {
  GOnePokemonDataData._();

  factory GOnePokemonDataData(
      [Function(GOnePokemonDataDataBuilder b) updates]) = _$GOnePokemonDataData;

  static void _initializeBuilder(GOnePokemonDataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnePokemonDataData_pokemon? get pokemon;
  static Serializer<GOnePokemonDataData> get serializer =>
      _$gOnePokemonDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon
    implements
        Built<GOnePokemonDataData_pokemon, GOnePokemonDataData_pokemonBuilder> {
  GOnePokemonDataData_pokemon._();

  factory GOnePokemonDataData_pokemon(
          [Function(GOnePokemonDataData_pokemonBuilder b) updates]) =
      _$GOnePokemonDataData_pokemon;

  static void _initializeBuilder(GOnePokemonDataData_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GOnePokemonDataData_pokemon_evolutionTo> get evolutionTo;
  BuiltList<GOnePokemonDataData_pokemon_evolutionFrom> get evolutionFrom;
  BuiltList<GOnePokemonDataData_pokemon_abilities> get abilities;
  BuiltList<GOnePokemonDataData_pokemon_moves> get moves;
  BuiltList<GOnePokemonDataData_pokemon_types> get types;
  int get statusA;
  int get statusB;
  int get statusC;
  int get statusD;
  int get statusH;
  int get statusS;
  String get imageLargeUrl;
  String get name;
  String get form;
  static Serializer<GOnePokemonDataData_pokemon> get serializer =>
      _$gOnePokemonDataDataPokemonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_evolutionTo
    implements
        Built<GOnePokemonDataData_pokemon_evolutionTo,
            GOnePokemonDataData_pokemon_evolutionToBuilder> {
  GOnePokemonDataData_pokemon_evolutionTo._();

  factory GOnePokemonDataData_pokemon_evolutionTo(
      [Function(GOnePokemonDataData_pokemon_evolutionToBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_evolutionTo;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutionToBuilder b) =>
      b..G__typename = 'Evolution';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnePokemonDataData_pokemon_evolutionTo_pokemon get pokemon;
  static Serializer<GOnePokemonDataData_pokemon_evolutionTo> get serializer =>
      _$gOnePokemonDataDataPokemonEvolutionToSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutionTo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutionTo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutionTo.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_evolutionTo_pokemon
    implements
        Built<GOnePokemonDataData_pokemon_evolutionTo_pokemon,
            GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder> {
  GOnePokemonDataData_pokemon_evolutionTo_pokemon._();

  factory GOnePokemonDataData_pokemon_evolutionTo_pokemon(
      [Function(GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_evolutionTo_pokemon;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get form;
  String get imageUrl;
  static Serializer<GOnePokemonDataData_pokemon_evolutionTo_pokemon>
      get serializer =>
          _$gOnePokemonDataDataPokemonEvolutionToPokemonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutionTo_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutionTo_pokemon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutionTo_pokemon.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_evolutionFrom
    implements
        Built<GOnePokemonDataData_pokemon_evolutionFrom,
            GOnePokemonDataData_pokemon_evolutionFromBuilder> {
  GOnePokemonDataData_pokemon_evolutionFrom._();

  factory GOnePokemonDataData_pokemon_evolutionFrom(
      [Function(GOnePokemonDataData_pokemon_evolutionFromBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_evolutionFrom;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutionFromBuilder b) =>
      b..G__typename = 'Evolution';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnePokemonDataData_pokemon_evolutionFrom_pokemon get pokemon;
  static Serializer<GOnePokemonDataData_pokemon_evolutionFrom> get serializer =>
      _$gOnePokemonDataDataPokemonEvolutionFromSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutionFrom.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutionFrom? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutionFrom.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_evolutionFrom_pokemon
    implements
        Built<GOnePokemonDataData_pokemon_evolutionFrom_pokemon,
            GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder> {
  GOnePokemonDataData_pokemon_evolutionFrom_pokemon._();

  factory GOnePokemonDataData_pokemon_evolutionFrom_pokemon(
      [Function(GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get form;
  String get imageUrl;
  static Serializer<GOnePokemonDataData_pokemon_evolutionFrom_pokemon>
      get serializer =>
          _$gOnePokemonDataDataPokemonEvolutionFromPokemonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutionFrom_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutionFrom_pokemon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutionFrom_pokemon.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_abilities
    implements
        Built<GOnePokemonDataData_pokemon_abilities,
            GOnePokemonDataData_pokemon_abilitiesBuilder> {
  GOnePokemonDataData_pokemon_abilities._();

  factory GOnePokemonDataData_pokemon_abilities(
          [Function(GOnePokemonDataData_pokemon_abilitiesBuilder b) updates]) =
      _$GOnePokemonDataData_pokemon_abilities;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_abilitiesBuilder b) =>
      b..G__typename = 'Ability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get detail;
  static Serializer<GOnePokemonDataData_pokemon_abilities> get serializer =>
      _$gOnePokemonDataDataPokemonAbilitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_abilities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_abilities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_abilities.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_moves
    implements
        Built<GOnePokemonDataData_pokemon_moves,
            GOnePokemonDataData_pokemon_movesBuilder> {
  GOnePokemonDataData_pokemon_moves._();

  factory GOnePokemonDataData_pokemon_moves(
          [Function(GOnePokemonDataData_pokemon_movesBuilder b) updates]) =
      _$GOnePokemonDataData_pokemon_moves;

  static void _initializeBuilder(GOnePokemonDataData_pokemon_movesBuilder b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get power;
  String get name;
  String get detail;
  GOnePokemonDataData_pokemon_moves_type? get type;
  GOnePokemonDataData_pokemon_moves_attackType? get attackType;
  static Serializer<GOnePokemonDataData_pokemon_moves> get serializer =>
      _$gOnePokemonDataDataPokemonMovesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_moves.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_moves? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_moves.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_moves_type
    implements
        Built<GOnePokemonDataData_pokemon_moves_type,
            GOnePokemonDataData_pokemon_moves_typeBuilder> {
  GOnePokemonDataData_pokemon_moves_type._();

  factory GOnePokemonDataData_pokemon_moves_type(
          [Function(GOnePokemonDataData_pokemon_moves_typeBuilder b) updates]) =
      _$GOnePokemonDataData_pokemon_moves_type;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_moves_typeBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get textImageUrl;
  static Serializer<GOnePokemonDataData_pokemon_moves_type> get serializer =>
      _$gOnePokemonDataDataPokemonMovesTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_moves_type.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_moves_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_moves_type.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_moves_attackType
    implements
        Built<GOnePokemonDataData_pokemon_moves_attackType,
            GOnePokemonDataData_pokemon_moves_attackTypeBuilder> {
  GOnePokemonDataData_pokemon_moves_attackType._();

  factory GOnePokemonDataData_pokemon_moves_attackType(
      [Function(GOnePokemonDataData_pokemon_moves_attackTypeBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_moves_attackType;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_moves_attackTypeBuilder b) =>
      b..G__typename = 'AttackType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get imageUrl;
  static Serializer<GOnePokemonDataData_pokemon_moves_attackType>
      get serializer => _$gOnePokemonDataDataPokemonMovesAttackTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_moves_attackType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_moves_attackType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_moves_attackType.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_types
    implements
        Built<GOnePokemonDataData_pokemon_types,
            GOnePokemonDataData_pokemon_typesBuilder> {
  GOnePokemonDataData_pokemon_types._();

  factory GOnePokemonDataData_pokemon_types(
          [Function(GOnePokemonDataData_pokemon_typesBuilder b) updates]) =
      _$GOnePokemonDataData_pokemon_types;

  static void _initializeBuilder(GOnePokemonDataData_pokemon_typesBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get textImageUrl;
  String get name;
  static Serializer<GOnePokemonDataData_pokemon_types> get serializer =>
      _$gOnePokemonDataDataPokemonTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_types.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_types? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_types.serializer,
        json,
      );
}

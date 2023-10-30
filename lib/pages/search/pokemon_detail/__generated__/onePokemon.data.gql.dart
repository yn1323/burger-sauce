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
  BuiltList<GOnePokemonDataData_pokemon_evolutions> get evolutions;
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

abstract class GOnePokemonDataData_pokemon_evolutions
    implements
        Built<GOnePokemonDataData_pokemon_evolutions,
            GOnePokemonDataData_pokemon_evolutionsBuilder> {
  GOnePokemonDataData_pokemon_evolutions._();

  factory GOnePokemonDataData_pokemon_evolutions(
          [Function(GOnePokemonDataData_pokemon_evolutionsBuilder b) updates]) =
      _$GOnePokemonDataData_pokemon_evolutions;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutionsBuilder b) =>
      b..G__typename = 'Evolution';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GOnePokemonDataData_pokemon_evolutions_from> get from;
  BuiltList<GOnePokemonDataData_pokemon_evolutions_to> get to;
  static Serializer<GOnePokemonDataData_pokemon_evolutions> get serializer =>
      _$gOnePokemonDataDataPokemonEvolutionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutions.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_evolutions_from
    implements
        Built<GOnePokemonDataData_pokemon_evolutions_from,
            GOnePokemonDataData_pokemon_evolutions_fromBuilder> {
  GOnePokemonDataData_pokemon_evolutions_from._();

  factory GOnePokemonDataData_pokemon_evolutions_from(
      [Function(GOnePokemonDataData_pokemon_evolutions_fromBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_evolutions_from;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutions_fromBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get imageLargeUrl;
  static Serializer<GOnePokemonDataData_pokemon_evolutions_from>
      get serializer => _$gOnePokemonDataDataPokemonEvolutionsFromSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutions_from.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutions_from? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutions_from.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_evolutions_to
    implements
        Built<GOnePokemonDataData_pokemon_evolutions_to,
            GOnePokemonDataData_pokemon_evolutions_toBuilder> {
  GOnePokemonDataData_pokemon_evolutions_to._();

  factory GOnePokemonDataData_pokemon_evolutions_to(
      [Function(GOnePokemonDataData_pokemon_evolutions_toBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_evolutions_to;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutions_toBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get imageUrl;
  BuiltList<GOnePokemonDataData_pokemon_evolutions_to_types> get types;
  static Serializer<GOnePokemonDataData_pokemon_evolutions_to> get serializer =>
      _$gOnePokemonDataDataPokemonEvolutionsToSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutions_to.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutions_to? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutions_to.serializer,
        json,
      );
}

abstract class GOnePokemonDataData_pokemon_evolutions_to_types
    implements
        Built<GOnePokemonDataData_pokemon_evolutions_to_types,
            GOnePokemonDataData_pokemon_evolutions_to_typesBuilder> {
  GOnePokemonDataData_pokemon_evolutions_to_types._();

  factory GOnePokemonDataData_pokemon_evolutions_to_types(
      [Function(GOnePokemonDataData_pokemon_evolutions_to_typesBuilder b)
          updates]) = _$GOnePokemonDataData_pokemon_evolutions_to_types;

  static void _initializeBuilder(
          GOnePokemonDataData_pokemon_evolutions_to_typesBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get textImageUrl;
  static Serializer<GOnePokemonDataData_pokemon_evolutions_to_types>
      get serializer => _$gOnePokemonDataDataPokemonEvolutionsToTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnePokemonDataData_pokemon_evolutions_to_types.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOnePokemonDataData_pokemon_evolutions_to_types? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnePokemonDataData_pokemon_evolutions_to_types.serializer,
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
  String get imageUrl;
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

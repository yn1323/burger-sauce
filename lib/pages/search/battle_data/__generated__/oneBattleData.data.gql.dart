// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'oneBattleData.data.gql.g.dart';

abstract class GOneBattleDataData
    implements Built<GOneBattleDataData, GOneBattleDataDataBuilder> {
  GOneBattleDataData._();

  factory GOneBattleDataData([Function(GOneBattleDataDataBuilder b) updates]) =
      _$GOneBattleDataData;

  static void _initializeBuilder(GOneBattleDataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOneBattleDataData_battleData? get battleData;
  static Serializer<GOneBattleDataData> get serializer =>
      _$gOneBattleDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData
    implements
        Built<GOneBattleDataData_battleData,
            GOneBattleDataData_battleDataBuilder> {
  GOneBattleDataData_battleData._();

  factory GOneBattleDataData_battleData(
          [Function(GOneBattleDataData_battleDataBuilder b) updates]) =
      _$GOneBattleDataData_battleData;

  static void _initializeBuilder(GOneBattleDataData_battleDataBuilder b) =>
      b..G__typename = 'BattleData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOneBattleDataData_battleData_pokemon get pokemon;
  static Serializer<GOneBattleDataData_battleData> get serializer =>
      _$gOneBattleDataDataBattleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_pokemon
    implements
        Built<GOneBattleDataData_battleData_pokemon,
            GOneBattleDataData_battleData_pokemonBuilder> {
  GOneBattleDataData_battleData_pokemon._();

  factory GOneBattleDataData_battleData_pokemon(
          [Function(GOneBattleDataData_battleData_pokemonBuilder b) updates]) =
      _$GOneBattleDataData_battleData_pokemon;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get form;
  String get imageLargeUrl;
  int get statusA;
  int get statusB;
  int get statusC;
  int get statusD;
  int get statusH;
  int get statusS;
  BuiltList<GOneBattleDataData_battleData_pokemon_types?> get types;
  String get url;
  BuiltList<GOneBattleDataData_battleData_pokemon_battleData?> get battleData;
  static Serializer<GOneBattleDataData_battleData_pokemon> get serializer =>
      _$gOneBattleDataDataBattleDataPokemonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_pokemon.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_pokemon_types
    implements
        Built<GOneBattleDataData_battleData_pokemon_types,
            GOneBattleDataData_battleData_pokemon_typesBuilder> {
  GOneBattleDataData_battleData_pokemon_types._();

  factory GOneBattleDataData_battleData_pokemon_types(
      [Function(GOneBattleDataData_battleData_pokemon_typesBuilder b)
          updates]) = _$GOneBattleDataData_battleData_pokemon_types;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_typesBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GOneBattleDataData_battleData_pokemon_types>
      get serializer => _$gOneBattleDataDataBattleDataPokemonTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_types.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_types? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_pokemon_types.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_pokemon_battleData
    implements
        Built<GOneBattleDataData_battleData_pokemon_battleData,
            GOneBattleDataData_battleData_pokemon_battleDataBuilder> {
  GOneBattleDataData_battleData_pokemon_battleData._();

  factory GOneBattleDataData_battleData_pokemon_battleData(
      [Function(GOneBattleDataData_battleData_pokemon_battleDataBuilder b)
          updates]) = _$GOneBattleDataData_battleData_pokemon_battleData;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_battleDataBuilder b) =>
      b..G__typename = 'BattleData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility?>
      get battleDataAbility;
  BuiltList<GOneBattleDataData_battleData_pokemon_battleData_battleDataItem?>
      get battleDataItem;
  BuiltList<GOneBattleDataData_battleData_pokemon_battleData_battleDataMove?>
      get battleDataMove;
  static Serializer<GOneBattleDataData_battleData_pokemon_battleData>
      get serializer =>
          _$gOneBattleDataDataBattleDataPokemonBattleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_battleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_battleData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_pokemon_battleData.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
    implements
        Built<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder> {
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility._();

  factory GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility(
          [Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder
                      b)
              updates]) =
      _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder
              b) =>
      b..G__typename = 'BattleDataAbility';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
      get ability;
  static Serializer<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility>
      get serializer =>
          _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataAbilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
                .serializer,
            json,
          );
}

abstract class GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
    implements
        Built<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder> {
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability._();

  factory GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability(
          [Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder
                      b)
              updates]) =
      _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder
              b) =>
      b..G__typename = 'Ability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get id;
  static Serializer<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability>
      get serializer =>
          _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataAbilityAbilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
                .serializer,
            json,
          );
}

abstract class GOneBattleDataData_battleData_pokemon_battleData_battleDataItem
    implements
        Built<GOneBattleDataData_battleData_pokemon_battleData_battleDataItem,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder> {
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem._();

  factory GOneBattleDataData_battleData_pokemon_battleData_battleDataItem(
          [Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder
                      b)
              updates]) =
      _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder
              b) =>
      b..G__typename = 'BattleDataItem';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  String get id;
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item get Item;
  static Serializer<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataItem>
      get serializer =>
          _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_battleData_battleDataItem
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_battleData_battleDataItem?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem
                .serializer,
            json,
          );
}

abstract class GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
    implements
        Built<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder> {
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item._();

  factory GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item(
          [Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder
                      b)
              updates]) =
      _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder
              b) =>
      b..G__typename = 'Item';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get imageSmallUrl;
  static Serializer<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item>
      get serializer =>
          _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataItemItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
                .serializer,
            json,
          );
}

abstract class GOneBattleDataData_battleData_pokemon_battleData_battleDataMove
    implements
        Built<GOneBattleDataData_battleData_pokemon_battleData_battleDataMove,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder> {
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove._();

  factory GOneBattleDataData_battleData_pokemon_battleData_battleDataMove(
          [Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder
                      b)
              updates]) =
      _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder
              b) =>
      b..G__typename = 'BattleDataMove';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move get move;
  String get id;
  static Serializer<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataMove>
      get serializer =>
          _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataMoveSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_battleData_battleDataMove
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_battleData_battleDataMove?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove
                .serializer,
            json,
          );
}

abstract class GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
    implements
        Built<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder> {
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move._();

  factory GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move(
          [Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder
                      b)
              updates]) =
      _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder
              b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move>
      get serializer =>
          _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataMoveMoveSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
                .serializer,
            json,
          );
}

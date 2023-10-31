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
  int get rank;
  GOneBattleDataData_battleData_pokemon get pokemon;
  BuiltList<GOneBattleDataData_battleData_battleDataAbility>
      get battleDataAbility;
  BuiltList<GOneBattleDataData_battleData_battleDataItem> get battleDataItem;
  BuiltList<GOneBattleDataData_battleData_battleDataMove> get battleDataMove;
  BuiltList<GOneBattleDataData_battleData_battleDataNature>
      get battleDataNature;
  BuiltList<GOneBattleDataData_battleData_battleDataTerastal>
      get battleDataTerastal;
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
  String get id;
  String get imageLargeUrl;
  String get name;
  String get form;
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

abstract class GOneBattleDataData_battleData_battleDataAbility
    implements
        Built<GOneBattleDataData_battleData_battleDataAbility,
            GOneBattleDataData_battleData_battleDataAbilityBuilder> {
  GOneBattleDataData_battleData_battleDataAbility._();

  factory GOneBattleDataData_battleData_battleDataAbility(
      [Function(GOneBattleDataData_battleData_battleDataAbilityBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataAbility;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataAbilityBuilder b) =>
      b..G__typename = 'BattleDataAbility';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  GOneBattleDataData_battleData_battleDataAbility_ability get ability;
  static Serializer<GOneBattleDataData_battleData_battleDataAbility>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataAbilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataAbility.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataAbility? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataAbility.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataAbility_ability
    implements
        Built<GOneBattleDataData_battleData_battleDataAbility_ability,
            GOneBattleDataData_battleData_battleDataAbility_abilityBuilder> {
  GOneBattleDataData_battleData_battleDataAbility_ability._();

  factory GOneBattleDataData_battleData_battleDataAbility_ability(
      [Function(
              GOneBattleDataData_battleData_battleDataAbility_abilityBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataAbility_ability;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataAbility_abilityBuilder b) =>
      b..G__typename = 'Ability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get detail;
  String get id;
  static Serializer<GOneBattleDataData_battleData_battleDataAbility_ability>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataAbilityAbilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataAbility_ability.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataAbility_ability? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataAbility_ability.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataItem
    implements
        Built<GOneBattleDataData_battleData_battleDataItem,
            GOneBattleDataData_battleData_battleDataItemBuilder> {
  GOneBattleDataData_battleData_battleDataItem._();

  factory GOneBattleDataData_battleData_battleDataItem(
      [Function(GOneBattleDataData_battleData_battleDataItemBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataItem;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataItemBuilder b) =>
      b..G__typename = 'BattleDataItem';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  GOneBattleDataData_battleData_battleDataItem_item get item;
  static Serializer<GOneBattleDataData_battleData_battleDataItem>
      get serializer => _$gOneBattleDataDataBattleDataBattleDataItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataItem.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataItem? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataItem.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataItem_item
    implements
        Built<GOneBattleDataData_battleData_battleDataItem_item,
            GOneBattleDataData_battleData_battleDataItem_itemBuilder> {
  GOneBattleDataData_battleData_battleDataItem_item._();

  factory GOneBattleDataData_battleData_battleDataItem_item(
      [Function(GOneBattleDataData_battleData_battleDataItem_itemBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataItem_item;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataItem_itemBuilder b) =>
      b..G__typename = 'Item';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get detail;
  String get imageSmallUrl;
  static Serializer<GOneBattleDataData_battleData_battleDataItem_item>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataItemItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataItem_item.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataItem_item? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataItem_item.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataMove
    implements
        Built<GOneBattleDataData_battleData_battleDataMove,
            GOneBattleDataData_battleData_battleDataMoveBuilder> {
  GOneBattleDataData_battleData_battleDataMove._();

  factory GOneBattleDataData_battleData_battleDataMove(
      [Function(GOneBattleDataData_battleData_battleDataMoveBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataMove;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataMoveBuilder b) =>
      b..G__typename = 'BattleDataMove';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  GOneBattleDataData_battleData_battleDataMove_move get move;
  static Serializer<GOneBattleDataData_battleData_battleDataMove>
      get serializer => _$gOneBattleDataDataBattleDataBattleDataMoveSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataMove.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataMove? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataMove.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataMove_move
    implements
        Built<GOneBattleDataData_battleData_battleDataMove_move,
            GOneBattleDataData_battleData_battleDataMove_moveBuilder> {
  GOneBattleDataData_battleData_battleDataMove_move._();

  factory GOneBattleDataData_battleData_battleDataMove_move(
      [Function(GOneBattleDataData_battleData_battleDataMove_moveBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataMove_move;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataMove_moveBuilder b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get detail;
  int get power;
  GOneBattleDataData_battleData_battleDataMove_move_type? get type;
  GOneBattleDataData_battleData_battleDataMove_move_attackType? get attackType;
  static Serializer<GOneBattleDataData_battleData_battleDataMove_move>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataMoveMoveSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataMove_move.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataMove_move? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataMove_move.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataMove_move_type
    implements
        Built<GOneBattleDataData_battleData_battleDataMove_move_type,
            GOneBattleDataData_battleData_battleDataMove_move_typeBuilder> {
  GOneBattleDataData_battleData_battleDataMove_move_type._();

  factory GOneBattleDataData_battleData_battleDataMove_move_type(
      [Function(GOneBattleDataData_battleData_battleDataMove_move_typeBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataMove_move_type;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataMove_move_typeBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get textImageUrl;
  static Serializer<GOneBattleDataData_battleData_battleDataMove_move_type>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataMoveMoveTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataMove_move_type.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataMove_move_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataMove_move_type.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataMove_move_attackType
    implements
        Built<GOneBattleDataData_battleData_battleDataMove_move_attackType,
            GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder> {
  GOneBattleDataData_battleData_battleDataMove_move_attackType._();

  factory GOneBattleDataData_battleData_battleDataMove_move_attackType(
          [Function(
                  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder
                      b)
              updates]) =
      _$GOneBattleDataData_battleData_battleDataMove_move_attackType;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder
              b) =>
      b..G__typename = 'AttackType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get imageUrl;
  static Serializer<
          GOneBattleDataData_battleData_battleDataMove_move_attackType>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataMoveMoveAttackTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataMove_move_attackType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataMove_move_attackType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataMove_move_attackType.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataNature
    implements
        Built<GOneBattleDataData_battleData_battleDataNature,
            GOneBattleDataData_battleData_battleDataNatureBuilder> {
  GOneBattleDataData_battleData_battleDataNature._();

  factory GOneBattleDataData_battleData_battleDataNature(
      [Function(GOneBattleDataData_battleData_battleDataNatureBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataNature;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataNatureBuilder b) =>
      b..G__typename = 'BattleDataNature';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  GOneBattleDataData_battleData_battleDataNature_nature get nature;
  static Serializer<GOneBattleDataData_battleData_battleDataNature>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataNatureSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataNature.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataNature? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataNature.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataNature_nature
    implements
        Built<GOneBattleDataData_battleData_battleDataNature_nature,
            GOneBattleDataData_battleData_battleDataNature_natureBuilder> {
  GOneBattleDataData_battleData_battleDataNature_nature._();

  factory GOneBattleDataData_battleData_battleDataNature_nature(
      [Function(GOneBattleDataData_battleData_battleDataNature_natureBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataNature_nature;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataNature_natureBuilder b) =>
      b..G__typename = 'Nature';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get increase;
  String get decrease;
  static Serializer<GOneBattleDataData_battleData_battleDataNature_nature>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataNatureNatureSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataNature_nature.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataNature_nature? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataNature_nature.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataTerastal
    implements
        Built<GOneBattleDataData_battleData_battleDataTerastal,
            GOneBattleDataData_battleData_battleDataTerastalBuilder> {
  GOneBattleDataData_battleData_battleDataTerastal._();

  factory GOneBattleDataData_battleData_battleDataTerastal(
      [Function(GOneBattleDataData_battleData_battleDataTerastalBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataTerastal;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataTerastalBuilder b) =>
      b..G__typename = 'BattleDataTerastal';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get rate;
  GOneBattleDataData_battleData_battleDataTerastal_type get type;
  static Serializer<GOneBattleDataData_battleData_battleDataTerastal>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataTerastalSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataTerastal.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataTerastal? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataTerastal.serializer,
        json,
      );
}

abstract class GOneBattleDataData_battleData_battleDataTerastal_type
    implements
        Built<GOneBattleDataData_battleData_battleDataTerastal_type,
            GOneBattleDataData_battleData_battleDataTerastal_typeBuilder> {
  GOneBattleDataData_battleData_battleDataTerastal_type._();

  factory GOneBattleDataData_battleData_battleDataTerastal_type(
      [Function(GOneBattleDataData_battleData_battleDataTerastal_typeBuilder b)
          updates]) = _$GOneBattleDataData_battleData_battleDataTerastal_type;

  static void _initializeBuilder(
          GOneBattleDataData_battleData_battleDataTerastal_typeBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get terastalImageUrl;
  static Serializer<GOneBattleDataData_battleData_battleDataTerastal_type>
      get serializer =>
          _$gOneBattleDataDataBattleDataBattleDataTerastalTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOneBattleDataData_battleData_battleDataTerastal_type.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataData_battleData_battleDataTerastal_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOneBattleDataData_battleData_battleDataTerastal_type.serializer,
        json,
      );
}

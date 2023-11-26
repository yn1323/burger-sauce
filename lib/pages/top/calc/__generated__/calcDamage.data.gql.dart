// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'calcDamage.data.gql.g.dart';

abstract class GDamageCalcSummaryData
    implements Built<GDamageCalcSummaryData, GDamageCalcSummaryDataBuilder> {
  GDamageCalcSummaryData._();

  factory GDamageCalcSummaryData(
          [Function(GDamageCalcSummaryDataBuilder b) updates]) =
      _$GDamageCalcSummaryData;

  static void _initializeBuilder(GDamageCalcSummaryDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDamageCalcSummaryData_battleDatasLatest? get battleDatasLatest;
  BuiltList<GDamageCalcSummaryData_pokemons> get pokemons;
  BuiltList<GDamageCalcSummaryData_abilities> get abilities;
  BuiltList<GDamageCalcSummaryData_moves> get moves;
  BuiltList<GDamageCalcSummaryData_attackTypes> get attackTypes;
  BuiltList<GDamageCalcSummaryData_natures> get natures;
  BuiltList<GDamageCalcSummaryData_types> get types;
  GDamageCalcSummaryData_myDamageCalcIndex? get myDamageCalcIndex;
  static Serializer<GDamageCalcSummaryData> get serializer =>
      _$gDamageCalcSummaryDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_battleDatasLatest
    implements
        Built<GDamageCalcSummaryData_battleDatasLatest,
            GDamageCalcSummaryData_battleDatasLatestBuilder> {
  GDamageCalcSummaryData_battleDatasLatest._();

  factory GDamageCalcSummaryData_battleDatasLatest(
      [Function(GDamageCalcSummaryData_battleDatasLatestBuilder b)
          updates]) = _$GDamageCalcSummaryData_battleDatasLatest;

  static void _initializeBuilder(
          GDamageCalcSummaryData_battleDatasLatestBuilder b) =>
      b..G__typename = 'LatestBattleDataIndex';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GDamageCalcSummaryData_battleDatasLatest_battleDatas>
      get battleDatas;
  static Serializer<GDamageCalcSummaryData_battleDatasLatest> get serializer =>
      _$gDamageCalcSummaryDataBattleDatasLatestSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_battleDatasLatest.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_battleDatasLatest? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_battleDatasLatest.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_battleDatasLatest_battleDatas
    implements
        Built<GDamageCalcSummaryData_battleDatasLatest_battleDatas,
            GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder> {
  GDamageCalcSummaryData_battleDatasLatest_battleDatas._();

  factory GDamageCalcSummaryData_battleDatasLatest_battleDatas(
      [Function(GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder b)
          updates]) = _$GDamageCalcSummaryData_battleDatasLatest_battleDatas;

  static void _initializeBuilder(
          GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder b) =>
      b..G__typename = 'BattleData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get pokemonId;
  BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>
      get battleDataAbility;
  BuiltList<GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>
      get battleDataItem;
  BuiltList<GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>
      get battleDataMove;
  BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>
      get battleDataNature;
  BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>
      get battleDataTerastal;
  static Serializer<GDamageCalcSummaryData_battleDatasLatest_battleDatas>
      get serializer =>
          _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_battleDatasLatest_battleDatas.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_battleDatasLatest_battleDatas? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_battleDatasLatest_battleDatas.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
    implements
        Built<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder> {
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility._();

  factory GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility(
          [Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder
                      b)
              updates]) =
      _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility;

  static void _initializeBuilder(
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder
              b) =>
      b..G__typename = 'BattleDataAbility';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get abilityId;
  static Serializer<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>
      get serializer =>
          _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataAbilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
                .serializer,
            json,
          );
}

abstract class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
    implements
        Built<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder> {
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem._();

  factory GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem(
          [Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder
                      b)
              updates]) =
      _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem;

  static void _initializeBuilder(
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder
              b) =>
      b..G__typename = 'BattleDataItem';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get itemId;
  static Serializer<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>
      get serializer =>
          _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
                .serializer,
            json,
          );
}

abstract class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
    implements
        Built<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder> {
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove._();

  factory GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove(
          [Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder
                      b)
              updates]) =
      _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove;

  static void _initializeBuilder(
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder
              b) =>
      b..G__typename = 'BattleDataMove';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get moveId;
  static Serializer<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>
      get serializer =>
          _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataMoveSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
                .serializer,
            json,
          );
}

abstract class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
    implements
        Built<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder> {
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature._();

  factory GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature(
          [Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder
                      b)
              updates]) =
      _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature;

  static void _initializeBuilder(
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder
              b) =>
      b..G__typename = 'BattleDataNature';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get natureId;
  static Serializer<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>
      get serializer =>
          _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataNatureSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
                .serializer,
            json,
          );
}

abstract class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
    implements
        Built<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder> {
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal._();

  factory GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal(
          [Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder
                      b)
              updates]) =
      _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal;

  static void _initializeBuilder(
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder
              b) =>
      b..G__typename = 'BattleDataTerastal';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get typeId;
  static Serializer<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>
      get serializer =>
          _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataTerastalSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
                .serializer,
            json,
          );
}

abstract class GDamageCalcSummaryData_pokemons
    implements
        Built<GDamageCalcSummaryData_pokemons,
            GDamageCalcSummaryData_pokemonsBuilder> {
  GDamageCalcSummaryData_pokemons._();

  factory GDamageCalcSummaryData_pokemons(
          [Function(GDamageCalcSummaryData_pokemonsBuilder b) updates]) =
      _$GDamageCalcSummaryData_pokemons;

  static void _initializeBuilder(GDamageCalcSummaryData_pokemonsBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get form;
  double get height;
  double get weight;
  String get imageUrl;
  String get name;
  int get statusA;
  int get statusB;
  int get statusC;
  int get statusD;
  int get statusH;
  int get statusS;
  static Serializer<GDamageCalcSummaryData_pokemons> get serializer =>
      _$gDamageCalcSummaryDataPokemonsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_pokemons.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_pokemons? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_pokemons.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_abilities
    implements
        Built<GDamageCalcSummaryData_abilities,
            GDamageCalcSummaryData_abilitiesBuilder> {
  GDamageCalcSummaryData_abilities._();

  factory GDamageCalcSummaryData_abilities(
          [Function(GDamageCalcSummaryData_abilitiesBuilder b) updates]) =
      _$GDamageCalcSummaryData_abilities;

  static void _initializeBuilder(GDamageCalcSummaryData_abilitiesBuilder b) =>
      b..G__typename = 'Ability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get detail;
  static Serializer<GDamageCalcSummaryData_abilities> get serializer =>
      _$gDamageCalcSummaryDataAbilitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_abilities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_abilities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_abilities.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_moves
    implements
        Built<GDamageCalcSummaryData_moves,
            GDamageCalcSummaryData_movesBuilder> {
  GDamageCalcSummaryData_moves._();

  factory GDamageCalcSummaryData_moves(
          [Function(GDamageCalcSummaryData_movesBuilder b) updates]) =
      _$GDamageCalcSummaryData_moves;

  static void _initializeBuilder(GDamageCalcSummaryData_movesBuilder b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get accuracy;
  String? get attackTypeId;
  String get detail;
  String get id;
  bool get isBullet;
  bool get isChangeable;
  bool get isContact;
  bool get isCut;
  bool get isDance;
  bool get isDelay;
  bool get isJaw;
  bool get isMultipleAttack;
  bool get isMustCritical;
  bool get isPowder;
  bool get isQuick;
  bool get isPunch;
  bool get isSound;
  bool get isWave;
  bool get isWind;
  String get name;
  int get power;
  String? get typeId;
  static Serializer<GDamageCalcSummaryData_moves> get serializer =>
      _$gDamageCalcSummaryDataMovesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_moves.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_moves? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_moves.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_attackTypes
    implements
        Built<GDamageCalcSummaryData_attackTypes,
            GDamageCalcSummaryData_attackTypesBuilder> {
  GDamageCalcSummaryData_attackTypes._();

  factory GDamageCalcSummaryData_attackTypes(
          [Function(GDamageCalcSummaryData_attackTypesBuilder b) updates]) =
      _$GDamageCalcSummaryData_attackTypes;

  static void _initializeBuilder(GDamageCalcSummaryData_attackTypesBuilder b) =>
      b..G__typename = 'AttackType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get imageUrl;
  String get name;
  static Serializer<GDamageCalcSummaryData_attackTypes> get serializer =>
      _$gDamageCalcSummaryDataAttackTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_attackTypes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_attackTypes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_attackTypes.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_natures
    implements
        Built<GDamageCalcSummaryData_natures,
            GDamageCalcSummaryData_naturesBuilder> {
  GDamageCalcSummaryData_natures._();

  factory GDamageCalcSummaryData_natures(
          [Function(GDamageCalcSummaryData_naturesBuilder b) updates]) =
      _$GDamageCalcSummaryData_natures;

  static void _initializeBuilder(GDamageCalcSummaryData_naturesBuilder b) =>
      b..G__typename = 'Nature';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get decrease;
  String get increase;
  String get name;
  String get id;
  static Serializer<GDamageCalcSummaryData_natures> get serializer =>
      _$gDamageCalcSummaryDataNaturesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_natures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_natures? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_natures.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_types
    implements
        Built<GDamageCalcSummaryData_types,
            GDamageCalcSummaryData_typesBuilder> {
  GDamageCalcSummaryData_types._();

  factory GDamageCalcSummaryData_types(
          [Function(GDamageCalcSummaryData_typesBuilder b) updates]) =
      _$GDamageCalcSummaryData_types;

  static void _initializeBuilder(GDamageCalcSummaryData_typesBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get imageUrl;
  String get terastalImageUrl;
  String get textImageUrl;
  static Serializer<GDamageCalcSummaryData_types> get serializer =>
      _$gDamageCalcSummaryDataTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_types.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_types? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_types.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_myDamageCalcIndex
    implements
        Built<GDamageCalcSummaryData_myDamageCalcIndex,
            GDamageCalcSummaryData_myDamageCalcIndexBuilder> {
  GDamageCalcSummaryData_myDamageCalcIndex._();

  factory GDamageCalcSummaryData_myDamageCalcIndex(
      [Function(GDamageCalcSummaryData_myDamageCalcIndexBuilder b)
          updates]) = _$GDamageCalcSummaryData_myDamageCalcIndex;

  static void _initializeBuilder(
          GDamageCalcSummaryData_myDamageCalcIndexBuilder b) =>
      b..G__typename = 'MyDamageCalcIndex';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>
      get myDamageCalc;
  static Serializer<GDamageCalcSummaryData_myDamageCalcIndex> get serializer =>
      _$gDamageCalcSummaryDataMyDamageCalcIndexSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_myDamageCalcIndex.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_myDamageCalcIndex? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_myDamageCalcIndex.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc
    implements
        Built<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc,
            GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder> {
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc._();

  factory GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc(
      [Function(GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder b)
          updates]) = _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc;

  static void _initializeBuilder(
          GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder b) =>
      b..G__typename = 'MyDamageCalc';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get client;
  String? get abilityId;
  int get evA;
  int get evB;
  int get evC;
  int get evD;
  int get evH;
  int get evS;
  String get id;
  String? get itemId;
  int get ivA;
  int get ivB;
  int get ivC;
  int get ivD;
  int get ivH;
  int get ivS;
  int get rankA;
  int get rankB;
  int get rankC;
  int get rankD;
  int get rankS;
  String get side;
  String? get terastalId;
  String get pokemonId;
  int get order;
  String get natureId;
  BuiltList<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>
      get moves;
  static Serializer<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>
      get serializer =>
          _$gDamageCalcSummaryDataMyDamageCalcIndexMyDamageCalcSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc.serializer,
        json,
      );
}

abstract class GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves
    implements
        Built<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves,
            GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder> {
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves._();

  factory GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves(
      [Function(
              GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder
                  b)
          updates]) = _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves;

  static void _initializeBuilder(
          GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder
              b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>
      get serializer =>
          _$gDamageCalcSummaryDataMyDamageCalcIndexMyDamageCalcMovesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves.serializer,
        json,
      );
}

abstract class GDamageCalcDetailData
    implements Built<GDamageCalcDetailData, GDamageCalcDetailDataBuilder> {
  GDamageCalcDetailData._();

  factory GDamageCalcDetailData(
          [Function(GDamageCalcDetailDataBuilder b) updates]) =
      _$GDamageCalcDetailData;

  static void _initializeBuilder(GDamageCalcDetailDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDamageCalcDetailData_pokemon? get pokemon;
  static Serializer<GDamageCalcDetailData> get serializer =>
      _$gDamageCalcDetailDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcDetailData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcDetailData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcDetailData.serializer,
        json,
      );
}

abstract class GDamageCalcDetailData_pokemon
    implements
        Built<GDamageCalcDetailData_pokemon,
            GDamageCalcDetailData_pokemonBuilder> {
  GDamageCalcDetailData_pokemon._();

  factory GDamageCalcDetailData_pokemon(
          [Function(GDamageCalcDetailData_pokemonBuilder b) updates]) =
      _$GDamageCalcDetailData_pokemon;

  static void _initializeBuilder(GDamageCalcDetailData_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GDamageCalcDetailData_pokemon_abilities> get abilities;
  BuiltList<GDamageCalcDetailData_pokemon_moves> get moves;
  BuiltList<GDamageCalcDetailData_pokemon_types> get types;
  static Serializer<GDamageCalcDetailData_pokemon> get serializer =>
      _$gDamageCalcDetailDataPokemonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcDetailData_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcDetailData_pokemon? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcDetailData_pokemon.serializer,
        json,
      );
}

abstract class GDamageCalcDetailData_pokemon_abilities
    implements
        Built<GDamageCalcDetailData_pokemon_abilities,
            GDamageCalcDetailData_pokemon_abilitiesBuilder> {
  GDamageCalcDetailData_pokemon_abilities._();

  factory GDamageCalcDetailData_pokemon_abilities(
      [Function(GDamageCalcDetailData_pokemon_abilitiesBuilder b)
          updates]) = _$GDamageCalcDetailData_pokemon_abilities;

  static void _initializeBuilder(
          GDamageCalcDetailData_pokemon_abilitiesBuilder b) =>
      b..G__typename = 'Ability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GDamageCalcDetailData_pokemon_abilities> get serializer =>
      _$gDamageCalcDetailDataPokemonAbilitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcDetailData_pokemon_abilities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcDetailData_pokemon_abilities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcDetailData_pokemon_abilities.serializer,
        json,
      );
}

abstract class GDamageCalcDetailData_pokemon_moves
    implements
        Built<GDamageCalcDetailData_pokemon_moves,
            GDamageCalcDetailData_pokemon_movesBuilder> {
  GDamageCalcDetailData_pokemon_moves._();

  factory GDamageCalcDetailData_pokemon_moves(
          [Function(GDamageCalcDetailData_pokemon_movesBuilder b) updates]) =
      _$GDamageCalcDetailData_pokemon_moves;

  static void _initializeBuilder(
          GDamageCalcDetailData_pokemon_movesBuilder b) =>
      b..G__typename = 'Move';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GDamageCalcDetailData_pokemon_moves> get serializer =>
      _$gDamageCalcDetailDataPokemonMovesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcDetailData_pokemon_moves.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcDetailData_pokemon_moves? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcDetailData_pokemon_moves.serializer,
        json,
      );
}

abstract class GDamageCalcDetailData_pokemon_types
    implements
        Built<GDamageCalcDetailData_pokemon_types,
            GDamageCalcDetailData_pokemon_typesBuilder> {
  GDamageCalcDetailData_pokemon_types._();

  factory GDamageCalcDetailData_pokemon_types(
          [Function(GDamageCalcDetailData_pokemon_typesBuilder b) updates]) =
      _$GDamageCalcDetailData_pokemon_types;

  static void _initializeBuilder(
          GDamageCalcDetailData_pokemon_typesBuilder b) =>
      b..G__typename = 'Type';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GDamageCalcDetailData_pokemon_types> get serializer =>
      _$gDamageCalcDetailDataPokemonTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDamageCalcDetailData_pokemon_types.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcDetailData_pokemon_types? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDamageCalcDetailData_pokemon_types.serializer,
        json,
      );
}

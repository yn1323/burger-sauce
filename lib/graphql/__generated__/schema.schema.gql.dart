// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GBigInt implements Built<GBigInt, GBigIntBuilder> {
  GBigInt._();

  factory GBigInt([String? value]) =>
      _$GBigInt((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GBigInt> get serializer =>
      _i1.DefaultScalarSerializer<GBigInt>(
          (Object serialized) => GBigInt((serialized as String?)));
}

abstract class GCreateAbilityInput
    implements Built<GCreateAbilityInput, GCreateAbilityInputBuilder> {
  GCreateAbilityInput._();

  factory GCreateAbilityInput(
      [Function(GCreateAbilityInputBuilder b) updates]) = _$GCreateAbilityInput;

  String get name;
  String get detail;
  String get battleIndex;
  static Serializer<GCreateAbilityInput> get serializer =>
      _$gCreateAbilityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateAbilityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateAbilityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateAbilityInput.serializer,
        json,
      );
}

abstract class GCreateAttackTypeInput
    implements Built<GCreateAttackTypeInput, GCreateAttackTypeInputBuilder> {
  GCreateAttackTypeInput._();

  factory GCreateAttackTypeInput(
          [Function(GCreateAttackTypeInputBuilder b) updates]) =
      _$GCreateAttackTypeInput;

  String get name;
  String get imageUrl;
  static Serializer<GCreateAttackTypeInput> get serializer =>
      _$gCreateAttackTypeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateAttackTypeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateAttackTypeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateAttackTypeInput.serializer,
        json,
      );
}

abstract class GCreateBattleDataAbilityInput
    implements
        Built<GCreateBattleDataAbilityInput,
            GCreateBattleDataAbilityInputBuilder> {
  GCreateBattleDataAbilityInput._();

  factory GCreateBattleDataAbilityInput(
          [Function(GCreateBattleDataAbilityInputBuilder b) updates]) =
      _$GCreateBattleDataAbilityInput;

  String get abilityId;
  double get rate;
  String get battleDataId;
  static Serializer<GCreateBattleDataAbilityInput> get serializer =>
      _$gCreateBattleDataAbilityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBattleDataAbilityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBattleDataAbilityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBattleDataAbilityInput.serializer,
        json,
      );
}

abstract class GCreateBattleDataInput
    implements Built<GCreateBattleDataInput, GCreateBattleDataInputBuilder> {
  GCreateBattleDataInput._();

  factory GCreateBattleDataInput(
          [Function(GCreateBattleDataInputBuilder b) updates]) =
      _$GCreateBattleDataInput;

  String get battleIndexId;
  String get pokemonId;
  String get no;
  int get rank;
  String? get formId;
  static Serializer<GCreateBattleDataInput> get serializer =>
      _$gCreateBattleDataInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBattleDataInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBattleDataInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBattleDataInput.serializer,
        json,
      );
}

abstract class GCreateBattleDataItemInput
    implements
        Built<GCreateBattleDataItemInput, GCreateBattleDataItemInputBuilder> {
  GCreateBattleDataItemInput._();

  factory GCreateBattleDataItemInput(
          [Function(GCreateBattleDataItemInputBuilder b) updates]) =
      _$GCreateBattleDataItemInput;

  String get itemId;
  double get rate;
  String get battleDataId;
  static Serializer<GCreateBattleDataItemInput> get serializer =>
      _$gCreateBattleDataItemInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBattleDataItemInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBattleDataItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBattleDataItemInput.serializer,
        json,
      );
}

abstract class GCreateBattleDataMoveInput
    implements
        Built<GCreateBattleDataMoveInput, GCreateBattleDataMoveInputBuilder> {
  GCreateBattleDataMoveInput._();

  factory GCreateBattleDataMoveInput(
          [Function(GCreateBattleDataMoveInputBuilder b) updates]) =
      _$GCreateBattleDataMoveInput;

  String get moveId;
  double get rate;
  String get battleDataId;
  static Serializer<GCreateBattleDataMoveInput> get serializer =>
      _$gCreateBattleDataMoveInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBattleDataMoveInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBattleDataMoveInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBattleDataMoveInput.serializer,
        json,
      );
}

abstract class GCreateBattleDataNatureInput
    implements
        Built<GCreateBattleDataNatureInput,
            GCreateBattleDataNatureInputBuilder> {
  GCreateBattleDataNatureInput._();

  factory GCreateBattleDataNatureInput(
          [Function(GCreateBattleDataNatureInputBuilder b) updates]) =
      _$GCreateBattleDataNatureInput;

  String get natureId;
  double get rate;
  String get battleDataId;
  static Serializer<GCreateBattleDataNatureInput> get serializer =>
      _$gCreateBattleDataNatureInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBattleDataNatureInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBattleDataNatureInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBattleDataNatureInput.serializer,
        json,
      );
}

abstract class GCreateBattleDataTerastalInput
    implements
        Built<GCreateBattleDataTerastalInput,
            GCreateBattleDataTerastalInputBuilder> {
  GCreateBattleDataTerastalInput._();

  factory GCreateBattleDataTerastalInput(
          [Function(GCreateBattleDataTerastalInputBuilder b) updates]) =
      _$GCreateBattleDataTerastalInput;

  String get typeId;
  double get rate;
  String get battleDataId;
  static Serializer<GCreateBattleDataTerastalInput> get serializer =>
      _$gCreateBattleDataTerastalInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBattleDataTerastalInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBattleDataTerastalInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBattleDataTerastalInput.serializer,
        json,
      );
}

abstract class GCreateBattleIndexInput
    implements Built<GCreateBattleIndexInput, GCreateBattleIndexInputBuilder> {
  GCreateBattleIndexInput._();

  factory GCreateBattleIndexInput(
          [Function(GCreateBattleIndexInputBuilder b) updates]) =
      _$GCreateBattleIndexInput;

  GDateTime get capturedAt;
  GDateTime get startAt;
  GDateTime get endAt;
  String get name;
  static Serializer<GCreateBattleIndexInput> get serializer =>
      _$gCreateBattleIndexInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBattleIndexInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBattleIndexInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBattleIndexInput.serializer,
        json,
      );
}

abstract class GCreateEvolutionInput
    implements Built<GCreateEvolutionInput, GCreateEvolutionInputBuilder> {
  GCreateEvolutionInput._();

  factory GCreateEvolutionInput(
          [Function(GCreateEvolutionInputBuilder b) updates]) =
      _$GCreateEvolutionInput;

  String get pokemonId;
  static Serializer<GCreateEvolutionInput> get serializer =>
      _$gCreateEvolutionInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateEvolutionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateEvolutionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateEvolutionInput.serializer,
        json,
      );
}

abstract class GCreateFormInput
    implements Built<GCreateFormInput, GCreateFormInputBuilder> {
  GCreateFormInput._();

  factory GCreateFormInput([Function(GCreateFormInputBuilder b) updates]) =
      _$GCreateFormInput;

  String get no;
  String get formType;
  String get formType2;
  String get name;
  static Serializer<GCreateFormInput> get serializer =>
      _$gCreateFormInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateFormInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateFormInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateFormInput.serializer,
        json,
      );
}

abstract class GCreateItemInput
    implements Built<GCreateItemInput, GCreateItemInputBuilder> {
  GCreateItemInput._();

  factory GCreateItemInput([Function(GCreateItemInputBuilder b) updates]) =
      _$GCreateItemInput;

  String get name;
  String get detail;
  String get battleIndex;
  String get type;
  String get base64Image;
  String get imageUrl;
  String get imageSmallUrl;
  String get imageLargeUrl;
  static Serializer<GCreateItemInput> get serializer =>
      _$gCreateItemInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateItemInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateItemInput.serializer,
        json,
      );
}

abstract class GCreateMoveInput
    implements Built<GCreateMoveInput, GCreateMoveInputBuilder> {
  GCreateMoveInput._();

  factory GCreateMoveInput([Function(GCreateMoveInputBuilder b) updates]) =
      _$GCreateMoveInput;

  String get detail;
  String get name;
  String? get typeId;
  String? get attackTypeId;
  int get power;
  int get accuracy;
  int get pp;
  bool get isContact;
  bool get isQuick;
  bool get isDelay;
  bool get isChangeable;
  bool get isMultipleAttack;
  bool get isMustCritical;
  bool get isPunch;
  bool get isSound;
  bool get isPowder;
  bool get isWave;
  bool get isJaw;
  bool get isBullet;
  bool get isDance;
  bool get isWind;
  bool get isCut;
  String get battleIndex;
  String? get myDamageCalcId;
  static Serializer<GCreateMoveInput> get serializer =>
      _$gCreateMoveInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMoveInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMoveInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMoveInput.serializer,
        json,
      );
}

abstract class GCreateMyDamageCalcIndexInput
    implements
        Built<GCreateMyDamageCalcIndexInput,
            GCreateMyDamageCalcIndexInputBuilder> {
  GCreateMyDamageCalcIndexInput._();

  factory GCreateMyDamageCalcIndexInput(
          [Function(GCreateMyDamageCalcIndexInputBuilder b) updates]) =
      _$GCreateMyDamageCalcIndexInput;

  String get userId;
  String get title;
  String get memo;
  bool get favorite;
  static Serializer<GCreateMyDamageCalcIndexInput> get serializer =>
      _$gCreateMyDamageCalcIndexInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyDamageCalcIndexInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyDamageCalcIndexInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyDamageCalcIndexInput.serializer,
        json,
      );
}

abstract class GCreateMyDamageCalcInput
    implements
        Built<GCreateMyDamageCalcInput, GCreateMyDamageCalcInputBuilder> {
  GCreateMyDamageCalcInput._();

  factory GCreateMyDamageCalcInput(
          [Function(GCreateMyDamageCalcInputBuilder b) updates]) =
      _$GCreateMyDamageCalcInput;

  String get client;
  String? get myDamageCalcIndexId;
  String get pokemonId;
  String? get itemId;
  String? get abilityId;
  String get natureId;
  String? get terastalId;
  int get evH;
  int get evA;
  int get evB;
  int get evC;
  int get evD;
  int get evS;
  int get ivH;
  int get ivA;
  int get ivB;
  int get ivC;
  int get ivD;
  int get ivS;
  int get rankA;
  int get rankB;
  int get rankC;
  int get rankD;
  int get rankS;
  String get side;
  int get order;
  static Serializer<GCreateMyDamageCalcInput> get serializer =>
      _$gCreateMyDamageCalcInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyDamageCalcInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyDamageCalcInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyDamageCalcInput.serializer,
        json,
      );
}

abstract class GCreateMyEnemyInput
    implements Built<GCreateMyEnemyInput, GCreateMyEnemyInputBuilder> {
  GCreateMyEnemyInput._();

  factory GCreateMyEnemyInput(
      [Function(GCreateMyEnemyInputBuilder b) updates]) = _$GCreateMyEnemyInput;

  String get name;
  bool get favorite;
  int get evH;
  int get evA;
  int get evB;
  int get evC;
  int get evD;
  int get evS;
  int get ivH;
  int get ivA;
  int get ivB;
  int get ivC;
  int get ivD;
  int get ivS;
  String get memo;
  String get pokemonId;
  String? get itemId;
  String? get abilityId;
  String get natureId;
  String? get terastalId;
  String get userId;
  static Serializer<GCreateMyEnemyInput> get serializer =>
      _$gCreateMyEnemyInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyEnemyInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyEnemyInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyEnemyInput.serializer,
        json,
      );
}

abstract class GCreateMyEnemyTagInput
    implements Built<GCreateMyEnemyTagInput, GCreateMyEnemyTagInputBuilder> {
  GCreateMyEnemyTagInput._();

  factory GCreateMyEnemyTagInput(
          [Function(GCreateMyEnemyTagInputBuilder b) updates]) =
      _$GCreateMyEnemyTagInput;

  String get name;
  bool get favorite;
  String get memo;
  String get userId;
  static Serializer<GCreateMyEnemyTagInput> get serializer =>
      _$gCreateMyEnemyTagInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyEnemyTagInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyEnemyTagInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyEnemyTagInput.serializer,
        json,
      );
}

abstract class GCreateMyPartyInput
    implements Built<GCreateMyPartyInput, GCreateMyPartyInputBuilder> {
  GCreateMyPartyInput._();

  factory GCreateMyPartyInput(
      [Function(GCreateMyPartyInputBuilder b) updates]) = _$GCreateMyPartyInput;

  String get name;
  bool get favorite;
  String get memo;
  String get userId;
  static Serializer<GCreateMyPartyInput> get serializer =>
      _$gCreateMyPartyInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyPartyInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyPartyInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyPartyInput.serializer,
        json,
      );
}

abstract class GCreateMyPartyTagInput
    implements Built<GCreateMyPartyTagInput, GCreateMyPartyTagInputBuilder> {
  GCreateMyPartyTagInput._();

  factory GCreateMyPartyTagInput(
          [Function(GCreateMyPartyTagInputBuilder b) updates]) =
      _$GCreateMyPartyTagInput;

  String get name;
  bool get favorite;
  String get memo;
  String get teamId;
  String get userId;
  static Serializer<GCreateMyPartyTagInput> get serializer =>
      _$gCreateMyPartyTagInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyPartyTagInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyPartyTagInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyPartyTagInput.serializer,
        json,
      );
}

abstract class GCreateMyPokemonConsInput
    implements
        Built<GCreateMyPokemonConsInput, GCreateMyPokemonConsInputBuilder> {
  GCreateMyPokemonConsInput._();

  factory GCreateMyPokemonConsInput(
          [Function(GCreateMyPokemonConsInputBuilder b) updates]) =
      _$GCreateMyPokemonConsInput;

  String get myPokemonId;
  String get myEnemyId;
  static Serializer<GCreateMyPokemonConsInput> get serializer =>
      _$gCreateMyPokemonConsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyPokemonConsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyPokemonConsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyPokemonConsInput.serializer,
        json,
      );
}

abstract class GCreateMyPokemonInput
    implements Built<GCreateMyPokemonInput, GCreateMyPokemonInputBuilder> {
  GCreateMyPokemonInput._();

  factory GCreateMyPokemonInput(
          [Function(GCreateMyPokemonInputBuilder b) updates]) =
      _$GCreateMyPokemonInput;

  String get name;
  bool get favorite;
  int get evH;
  int get evA;
  int get evB;
  int get evC;
  int get evD;
  int get evS;
  int get ivH;
  int get ivA;
  int get ivB;
  int get ivC;
  int get ivD;
  int get ivS;
  String get memo;
  String get pokemonId;
  String? get itemId;
  String? get abilityId;
  String get natureId;
  String? get terastalId;
  String get userId;
  static Serializer<GCreateMyPokemonInput> get serializer =>
      _$gCreateMyPokemonInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyPokemonInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyPokemonInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyPokemonInput.serializer,
        json,
      );
}

abstract class GCreateMyPokemonProsInput
    implements
        Built<GCreateMyPokemonProsInput, GCreateMyPokemonProsInputBuilder> {
  GCreateMyPokemonProsInput._();

  factory GCreateMyPokemonProsInput(
          [Function(GCreateMyPokemonProsInputBuilder b) updates]) =
      _$GCreateMyPokemonProsInput;

  String get myPokemonId;
  String get myEnemyId;
  static Serializer<GCreateMyPokemonProsInput> get serializer =>
      _$gCreateMyPokemonProsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyPokemonProsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyPokemonProsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyPokemonProsInput.serializer,
        json,
      );
}

abstract class GCreateMyPokemonTagInput
    implements
        Built<GCreateMyPokemonTagInput, GCreateMyPokemonTagInputBuilder> {
  GCreateMyPokemonTagInput._();

  factory GCreateMyPokemonTagInput(
          [Function(GCreateMyPokemonTagInputBuilder b) updates]) =
      _$GCreateMyPokemonTagInput;

  String get name;
  bool get favorite;
  String get memo;
  String get userId;
  static Serializer<GCreateMyPokemonTagInput> get serializer =>
      _$gCreateMyPokemonTagInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMyPokemonTagInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMyPokemonTagInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMyPokemonTagInput.serializer,
        json,
      );
}

abstract class GCreateNatureInput
    implements Built<GCreateNatureInput, GCreateNatureInputBuilder> {
  GCreateNatureInput._();

  factory GCreateNatureInput([Function(GCreateNatureInputBuilder b) updates]) =
      _$GCreateNatureInput;

  String get name;
  String get battleIndex;
  String get increase;
  String get decrease;
  static Serializer<GCreateNatureInput> get serializer =>
      _$gCreateNatureInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateNatureInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateNatureInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateNatureInput.serializer,
        json,
      );
}

abstract class GCreatePokemonInput
    implements Built<GCreatePokemonInput, GCreatePokemonInputBuilder> {
  GCreatePokemonInput._();

  factory GCreatePokemonInput(
      [Function(GCreatePokemonInputBuilder b) updates]) = _$GCreatePokemonInput;

  String get name;
  String get form;
  int get no;
  double get height;
  double get weight;
  int get statusH;
  int get statusA;
  int get statusB;
  int get statusC;
  int get statusD;
  int get statusS;
  String get base64Image;
  String get imageUrl;
  String get imageSmallUrl;
  String get imageLargeUrl;
  String get url;
  String get battleIndex;
  String get battleFormIndex;
  static Serializer<GCreatePokemonInput> get serializer =>
      _$gCreatePokemonInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreatePokemonInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePokemonInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreatePokemonInput.serializer,
        json,
      );
}

abstract class GCreateTypeInput
    implements Built<GCreateTypeInput, GCreateTypeInputBuilder> {
  GCreateTypeInput._();

  factory GCreateTypeInput([Function(GCreateTypeInputBuilder b) updates]) =
      _$GCreateTypeInput;

  String get name;
  String get battleIndex;
  String get textImageUrl;
  String get imageUrl;
  String get terastalImageUrl;
  static Serializer<GCreateTypeInput> get serializer =>
      _$gCreateTypeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateTypeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateTypeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateTypeInput.serializer,
        json,
      );
}

abstract class GCreateTypeRelationInput
    implements
        Built<GCreateTypeRelationInput, GCreateTypeRelationInputBuilder> {
  GCreateTypeRelationInput._();

  factory GCreateTypeRelationInput(
          [Function(GCreateTypeRelationInputBuilder b) updates]) =
      _$GCreateTypeRelationInput;

  String get fromId;
  String get toId;
  double get rate;
  static Serializer<GCreateTypeRelationInput> get serializer =>
      _$gCreateTypeRelationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateTypeRelationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateTypeRelationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateTypeRelationInput.serializer,
        json,
      );
}

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get name;
  GDateTime get createdUserAt;
  GDateTime get updatedUserAt;
  GDateTime? get deletedUserAt;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateUserInput.serializer,
        json,
      );
}

abstract class GDate implements Built<GDate, GDateBuilder> {
  GDate._();

  factory GDate([String? value]) =>
      _$GDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDate> get serializer => _i1.DefaultScalarSerializer<GDate>(
      (Object serialized) => GDate((serialized as String?)));
}

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GJSON implements Built<GJSON, GJSONBuilder> {
  GJSON._();

  factory GJSON([String? value]) =>
      _$GJSON((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJSON> get serializer => _i1.DefaultScalarSerializer<GJSON>(
      (Object serialized) => GJSON((serialized as String?)));
}

abstract class GJSONObject implements Built<GJSONObject, GJSONObjectBuilder> {
  GJSONObject._();

  factory GJSONObject([String? value]) =>
      _$GJSONObject((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJSONObject> get serializer =>
      _i1.DefaultScalarSerializer<GJSONObject>(
          (Object serialized) => GJSONObject((serialized as String?)));
}

abstract class GPokemonSearchOption
    implements Built<GPokemonSearchOption, GPokemonSearchOptionBuilder> {
  GPokemonSearchOption._();

  factory GPokemonSearchOption(
          [Function(GPokemonSearchOptionBuilder b) updates]) =
      _$GPokemonSearchOption;

  String? get condition;
  bool? get evolvedOnly;
  static Serializer<GPokemonSearchOption> get serializer =>
      _$gPokemonSearchOptionSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPokemonSearchOption.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPokemonSearchOption? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPokemonSearchOption.serializer,
        json,
      );
}

abstract class GTime implements Built<GTime, GTimeBuilder> {
  GTime._();

  factory GTime([String? value]) =>
      _$GTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GTime> get serializer => _i1.DefaultScalarSerializer<GTime>(
      (Object serialized) => GTime((serialized as String?)));
}

abstract class GUpdateAbilityInput
    implements Built<GUpdateAbilityInput, GUpdateAbilityInputBuilder> {
  GUpdateAbilityInput._();

  factory GUpdateAbilityInput(
      [Function(GUpdateAbilityInputBuilder b) updates]) = _$GUpdateAbilityInput;

  String? get name;
  String? get detail;
  String? get battleIndex;
  static Serializer<GUpdateAbilityInput> get serializer =>
      _$gUpdateAbilityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateAbilityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateAbilityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateAbilityInput.serializer,
        json,
      );
}

abstract class GUpdateAttackTypeInput
    implements Built<GUpdateAttackTypeInput, GUpdateAttackTypeInputBuilder> {
  GUpdateAttackTypeInput._();

  factory GUpdateAttackTypeInput(
          [Function(GUpdateAttackTypeInputBuilder b) updates]) =
      _$GUpdateAttackTypeInput;

  String? get name;
  String? get imageUrl;
  static Serializer<GUpdateAttackTypeInput> get serializer =>
      _$gUpdateAttackTypeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateAttackTypeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateAttackTypeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateAttackTypeInput.serializer,
        json,
      );
}

abstract class GUpdateBattleDataAbilityInput
    implements
        Built<GUpdateBattleDataAbilityInput,
            GUpdateBattleDataAbilityInputBuilder> {
  GUpdateBattleDataAbilityInput._();

  factory GUpdateBattleDataAbilityInput(
          [Function(GUpdateBattleDataAbilityInputBuilder b) updates]) =
      _$GUpdateBattleDataAbilityInput;

  String? get abilityId;
  double? get rate;
  String? get battleDataId;
  static Serializer<GUpdateBattleDataAbilityInput> get serializer =>
      _$gUpdateBattleDataAbilityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBattleDataAbilityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBattleDataAbilityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBattleDataAbilityInput.serializer,
        json,
      );
}

abstract class GUpdateBattleDataInput
    implements Built<GUpdateBattleDataInput, GUpdateBattleDataInputBuilder> {
  GUpdateBattleDataInput._();

  factory GUpdateBattleDataInput(
          [Function(GUpdateBattleDataInputBuilder b) updates]) =
      _$GUpdateBattleDataInput;

  String? get battleIndexId;
  String? get pokemonId;
  String? get no;
  int? get rank;
  String? get formId;
  static Serializer<GUpdateBattleDataInput> get serializer =>
      _$gUpdateBattleDataInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBattleDataInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBattleDataInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBattleDataInput.serializer,
        json,
      );
}

abstract class GUpdateBattleDataItemInput
    implements
        Built<GUpdateBattleDataItemInput, GUpdateBattleDataItemInputBuilder> {
  GUpdateBattleDataItemInput._();

  factory GUpdateBattleDataItemInput(
          [Function(GUpdateBattleDataItemInputBuilder b) updates]) =
      _$GUpdateBattleDataItemInput;

  String? get itemId;
  double? get rate;
  String? get battleDataId;
  static Serializer<GUpdateBattleDataItemInput> get serializer =>
      _$gUpdateBattleDataItemInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBattleDataItemInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBattleDataItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBattleDataItemInput.serializer,
        json,
      );
}

abstract class GUpdateBattleDataMoveInput
    implements
        Built<GUpdateBattleDataMoveInput, GUpdateBattleDataMoveInputBuilder> {
  GUpdateBattleDataMoveInput._();

  factory GUpdateBattleDataMoveInput(
          [Function(GUpdateBattleDataMoveInputBuilder b) updates]) =
      _$GUpdateBattleDataMoveInput;

  String? get moveId;
  double? get rate;
  String? get battleDataId;
  static Serializer<GUpdateBattleDataMoveInput> get serializer =>
      _$gUpdateBattleDataMoveInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBattleDataMoveInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBattleDataMoveInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBattleDataMoveInput.serializer,
        json,
      );
}

abstract class GUpdateBattleDataNatureInput
    implements
        Built<GUpdateBattleDataNatureInput,
            GUpdateBattleDataNatureInputBuilder> {
  GUpdateBattleDataNatureInput._();

  factory GUpdateBattleDataNatureInput(
          [Function(GUpdateBattleDataNatureInputBuilder b) updates]) =
      _$GUpdateBattleDataNatureInput;

  String? get natureId;
  double? get rate;
  String? get battleDataId;
  static Serializer<GUpdateBattleDataNatureInput> get serializer =>
      _$gUpdateBattleDataNatureInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBattleDataNatureInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBattleDataNatureInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBattleDataNatureInput.serializer,
        json,
      );
}

abstract class GUpdateBattleDataTerastalInput
    implements
        Built<GUpdateBattleDataTerastalInput,
            GUpdateBattleDataTerastalInputBuilder> {
  GUpdateBattleDataTerastalInput._();

  factory GUpdateBattleDataTerastalInput(
          [Function(GUpdateBattleDataTerastalInputBuilder b) updates]) =
      _$GUpdateBattleDataTerastalInput;

  String? get typeId;
  double? get rate;
  String? get battleDataId;
  static Serializer<GUpdateBattleDataTerastalInput> get serializer =>
      _$gUpdateBattleDataTerastalInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBattleDataTerastalInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBattleDataTerastalInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBattleDataTerastalInput.serializer,
        json,
      );
}

abstract class GUpdateBattleIndexInput
    implements Built<GUpdateBattleIndexInput, GUpdateBattleIndexInputBuilder> {
  GUpdateBattleIndexInput._();

  factory GUpdateBattleIndexInput(
          [Function(GUpdateBattleIndexInputBuilder b) updates]) =
      _$GUpdateBattleIndexInput;

  GDateTime? get capturedAt;
  GDateTime? get startAt;
  GDateTime? get endAt;
  String? get name;
  static Serializer<GUpdateBattleIndexInput> get serializer =>
      _$gUpdateBattleIndexInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBattleIndexInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBattleIndexInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBattleIndexInput.serializer,
        json,
      );
}

abstract class GUpdateEvolutionInput
    implements Built<GUpdateEvolutionInput, GUpdateEvolutionInputBuilder> {
  GUpdateEvolutionInput._();

  factory GUpdateEvolutionInput(
          [Function(GUpdateEvolutionInputBuilder b) updates]) =
      _$GUpdateEvolutionInput;

  String? get pokemonId;
  static Serializer<GUpdateEvolutionInput> get serializer =>
      _$gUpdateEvolutionInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateEvolutionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateEvolutionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateEvolutionInput.serializer,
        json,
      );
}

abstract class GUpdateFormInput
    implements Built<GUpdateFormInput, GUpdateFormInputBuilder> {
  GUpdateFormInput._();

  factory GUpdateFormInput([Function(GUpdateFormInputBuilder b) updates]) =
      _$GUpdateFormInput;

  String? get no;
  String? get formType;
  String? get formType2;
  String? get name;
  static Serializer<GUpdateFormInput> get serializer =>
      _$gUpdateFormInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateFormInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateFormInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateFormInput.serializer,
        json,
      );
}

abstract class GUpdateItemInput
    implements Built<GUpdateItemInput, GUpdateItemInputBuilder> {
  GUpdateItemInput._();

  factory GUpdateItemInput([Function(GUpdateItemInputBuilder b) updates]) =
      _$GUpdateItemInput;

  String? get name;
  String? get detail;
  String? get battleIndex;
  String? get type;
  String? get base64Image;
  String? get imageUrl;
  String? get imageSmallUrl;
  String? get imageLargeUrl;
  static Serializer<GUpdateItemInput> get serializer =>
      _$gUpdateItemInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateItemInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateItemInput.serializer,
        json,
      );
}

abstract class GUpdateMoveInput
    implements Built<GUpdateMoveInput, GUpdateMoveInputBuilder> {
  GUpdateMoveInput._();

  factory GUpdateMoveInput([Function(GUpdateMoveInputBuilder b) updates]) =
      _$GUpdateMoveInput;

  String? get detail;
  String? get name;
  String? get typeId;
  String? get attackTypeId;
  int? get power;
  int? get accuracy;
  int? get pp;
  bool? get isContact;
  bool? get isQuick;
  bool? get isDelay;
  bool? get isChangeable;
  bool? get isMultipleAttack;
  bool? get isMustCritical;
  bool? get isPunch;
  bool? get isSound;
  bool? get isPowder;
  bool? get isWave;
  bool? get isJaw;
  bool? get isBullet;
  bool? get isDance;
  bool? get isWind;
  bool? get isCut;
  String? get battleIndex;
  String? get myDamageCalcId;
  static Serializer<GUpdateMoveInput> get serializer =>
      _$gUpdateMoveInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMoveInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMoveInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMoveInput.serializer,
        json,
      );
}

abstract class GUpdateMyDamageCalcIndexInput
    implements
        Built<GUpdateMyDamageCalcIndexInput,
            GUpdateMyDamageCalcIndexInputBuilder> {
  GUpdateMyDamageCalcIndexInput._();

  factory GUpdateMyDamageCalcIndexInput(
          [Function(GUpdateMyDamageCalcIndexInputBuilder b) updates]) =
      _$GUpdateMyDamageCalcIndexInput;

  String? get userId;
  String? get title;
  String? get memo;
  bool? get favorite;
  static Serializer<GUpdateMyDamageCalcIndexInput> get serializer =>
      _$gUpdateMyDamageCalcIndexInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyDamageCalcIndexInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyDamageCalcIndexInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyDamageCalcIndexInput.serializer,
        json,
      );
}

abstract class GUpdateMyDamageCalcInput
    implements
        Built<GUpdateMyDamageCalcInput, GUpdateMyDamageCalcInputBuilder> {
  GUpdateMyDamageCalcInput._();

  factory GUpdateMyDamageCalcInput(
          [Function(GUpdateMyDamageCalcInputBuilder b) updates]) =
      _$GUpdateMyDamageCalcInput;

  String? get client;
  String? get myDamageCalcIndexId;
  String? get pokemonId;
  String? get itemId;
  String? get abilityId;
  String? get natureId;
  String? get terastalId;
  int? get evH;
  int? get evA;
  int? get evB;
  int? get evC;
  int? get evD;
  int? get evS;
  int? get ivH;
  int? get ivA;
  int? get ivB;
  int? get ivC;
  int? get ivD;
  int? get ivS;
  int? get rankA;
  int? get rankB;
  int? get rankC;
  int? get rankD;
  int? get rankS;
  String? get side;
  int? get order;
  static Serializer<GUpdateMyDamageCalcInput> get serializer =>
      _$gUpdateMyDamageCalcInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyDamageCalcInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyDamageCalcInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyDamageCalcInput.serializer,
        json,
      );
}

abstract class GUpdateMyEnemyInput
    implements Built<GUpdateMyEnemyInput, GUpdateMyEnemyInputBuilder> {
  GUpdateMyEnemyInput._();

  factory GUpdateMyEnemyInput(
      [Function(GUpdateMyEnemyInputBuilder b) updates]) = _$GUpdateMyEnemyInput;

  String? get name;
  bool? get favorite;
  int? get evH;
  int? get evA;
  int? get evB;
  int? get evC;
  int? get evD;
  int? get evS;
  int? get ivH;
  int? get ivA;
  int? get ivB;
  int? get ivC;
  int? get ivD;
  int? get ivS;
  String? get memo;
  String? get pokemonId;
  String? get itemId;
  String? get abilityId;
  String? get natureId;
  String? get terastalId;
  String? get userId;
  static Serializer<GUpdateMyEnemyInput> get serializer =>
      _$gUpdateMyEnemyInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyEnemyInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyEnemyInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyEnemyInput.serializer,
        json,
      );
}

abstract class GUpdateMyEnemyTagInput
    implements Built<GUpdateMyEnemyTagInput, GUpdateMyEnemyTagInputBuilder> {
  GUpdateMyEnemyTagInput._();

  factory GUpdateMyEnemyTagInput(
          [Function(GUpdateMyEnemyTagInputBuilder b) updates]) =
      _$GUpdateMyEnemyTagInput;

  String? get name;
  bool? get favorite;
  String? get memo;
  String? get userId;
  static Serializer<GUpdateMyEnemyTagInput> get serializer =>
      _$gUpdateMyEnemyTagInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyEnemyTagInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyEnemyTagInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyEnemyTagInput.serializer,
        json,
      );
}

abstract class GUpdateMyPartyInput
    implements Built<GUpdateMyPartyInput, GUpdateMyPartyInputBuilder> {
  GUpdateMyPartyInput._();

  factory GUpdateMyPartyInput(
      [Function(GUpdateMyPartyInputBuilder b) updates]) = _$GUpdateMyPartyInput;

  String? get name;
  bool? get favorite;
  String? get memo;
  String? get userId;
  static Serializer<GUpdateMyPartyInput> get serializer =>
      _$gUpdateMyPartyInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyPartyInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyPartyInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyPartyInput.serializer,
        json,
      );
}

abstract class GUpdateMyPartyTagInput
    implements Built<GUpdateMyPartyTagInput, GUpdateMyPartyTagInputBuilder> {
  GUpdateMyPartyTagInput._();

  factory GUpdateMyPartyTagInput(
          [Function(GUpdateMyPartyTagInputBuilder b) updates]) =
      _$GUpdateMyPartyTagInput;

  String? get name;
  bool? get favorite;
  String? get memo;
  String? get teamId;
  String? get userId;
  static Serializer<GUpdateMyPartyTagInput> get serializer =>
      _$gUpdateMyPartyTagInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyPartyTagInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyPartyTagInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyPartyTagInput.serializer,
        json,
      );
}

abstract class GUpdateMyPokemonConsInput
    implements
        Built<GUpdateMyPokemonConsInput, GUpdateMyPokemonConsInputBuilder> {
  GUpdateMyPokemonConsInput._();

  factory GUpdateMyPokemonConsInput(
          [Function(GUpdateMyPokemonConsInputBuilder b) updates]) =
      _$GUpdateMyPokemonConsInput;

  String? get myPokemonId;
  String? get myEnemyId;
  static Serializer<GUpdateMyPokemonConsInput> get serializer =>
      _$gUpdateMyPokemonConsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyPokemonConsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyPokemonConsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyPokemonConsInput.serializer,
        json,
      );
}

abstract class GUpdateMyPokemonInput
    implements Built<GUpdateMyPokemonInput, GUpdateMyPokemonInputBuilder> {
  GUpdateMyPokemonInput._();

  factory GUpdateMyPokemonInput(
          [Function(GUpdateMyPokemonInputBuilder b) updates]) =
      _$GUpdateMyPokemonInput;

  String? get name;
  bool? get favorite;
  int? get evH;
  int? get evA;
  int? get evB;
  int? get evC;
  int? get evD;
  int? get evS;
  int? get ivH;
  int? get ivA;
  int? get ivB;
  int? get ivC;
  int? get ivD;
  int? get ivS;
  String? get memo;
  String? get pokemonId;
  String? get itemId;
  String? get abilityId;
  String? get natureId;
  String? get terastalId;
  String? get userId;
  static Serializer<GUpdateMyPokemonInput> get serializer =>
      _$gUpdateMyPokemonInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyPokemonInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyPokemonInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyPokemonInput.serializer,
        json,
      );
}

abstract class GUpdateMyPokemonProsInput
    implements
        Built<GUpdateMyPokemonProsInput, GUpdateMyPokemonProsInputBuilder> {
  GUpdateMyPokemonProsInput._();

  factory GUpdateMyPokemonProsInput(
          [Function(GUpdateMyPokemonProsInputBuilder b) updates]) =
      _$GUpdateMyPokemonProsInput;

  String? get myPokemonId;
  String? get myEnemyId;
  static Serializer<GUpdateMyPokemonProsInput> get serializer =>
      _$gUpdateMyPokemonProsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyPokemonProsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyPokemonProsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyPokemonProsInput.serializer,
        json,
      );
}

abstract class GUpdateMyPokemonTagInput
    implements
        Built<GUpdateMyPokemonTagInput, GUpdateMyPokemonTagInputBuilder> {
  GUpdateMyPokemonTagInput._();

  factory GUpdateMyPokemonTagInput(
          [Function(GUpdateMyPokemonTagInputBuilder b) updates]) =
      _$GUpdateMyPokemonTagInput;

  String? get name;
  bool? get favorite;
  String? get memo;
  String? get userId;
  static Serializer<GUpdateMyPokemonTagInput> get serializer =>
      _$gUpdateMyPokemonTagInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateMyPokemonTagInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateMyPokemonTagInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateMyPokemonTagInput.serializer,
        json,
      );
}

abstract class GUpdateNatureInput
    implements Built<GUpdateNatureInput, GUpdateNatureInputBuilder> {
  GUpdateNatureInput._();

  factory GUpdateNatureInput([Function(GUpdateNatureInputBuilder b) updates]) =
      _$GUpdateNatureInput;

  String? get name;
  String? get battleIndex;
  String? get increase;
  String? get decrease;
  static Serializer<GUpdateNatureInput> get serializer =>
      _$gUpdateNatureInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateNatureInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateNatureInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateNatureInput.serializer,
        json,
      );
}

abstract class GUpdatePokemonInput
    implements Built<GUpdatePokemonInput, GUpdatePokemonInputBuilder> {
  GUpdatePokemonInput._();

  factory GUpdatePokemonInput(
      [Function(GUpdatePokemonInputBuilder b) updates]) = _$GUpdatePokemonInput;

  String? get name;
  String? get form;
  int? get no;
  double? get height;
  double? get weight;
  int? get statusH;
  int? get statusA;
  int? get statusB;
  int? get statusC;
  int? get statusD;
  int? get statusS;
  String? get base64Image;
  String? get imageUrl;
  String? get imageSmallUrl;
  String? get imageLargeUrl;
  String? get url;
  String? get battleIndex;
  String? get battleFormIndex;
  static Serializer<GUpdatePokemonInput> get serializer =>
      _$gUpdatePokemonInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdatePokemonInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePokemonInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdatePokemonInput.serializer,
        json,
      );
}

abstract class GUpdateTypeInput
    implements Built<GUpdateTypeInput, GUpdateTypeInputBuilder> {
  GUpdateTypeInput._();

  factory GUpdateTypeInput([Function(GUpdateTypeInputBuilder b) updates]) =
      _$GUpdateTypeInput;

  String? get name;
  String? get battleIndex;
  String? get textImageUrl;
  String? get imageUrl;
  String? get terastalImageUrl;
  static Serializer<GUpdateTypeInput> get serializer =>
      _$gUpdateTypeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateTypeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTypeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateTypeInput.serializer,
        json,
      );
}

abstract class GUpdateTypeRelationInput
    implements
        Built<GUpdateTypeRelationInput, GUpdateTypeRelationInputBuilder> {
  GUpdateTypeRelationInput._();

  factory GUpdateTypeRelationInput(
          [Function(GUpdateTypeRelationInputBuilder b) updates]) =
      _$GUpdateTypeRelationInput;

  String? get fromId;
  String? get toId;
  double? get rate;
  static Serializer<GUpdateTypeRelationInput> get serializer =>
      _$gUpdateTypeRelationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateTypeRelationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTypeRelationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateTypeRelationInput.serializer,
        json,
      );
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String? get name;
  GDateTime? get createdUserAt;
  GDateTime? get updatedUserAt;
  GDateTime? get deletedUserAt;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateUserInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};

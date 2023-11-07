// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oneBattleData.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOneBattleDataData> _$gOneBattleDataDataSerializer =
    new _$GOneBattleDataDataSerializer();
Serializer<GOneBattleDataData_battleData>
    _$gOneBattleDataDataBattleDataSerializer =
    new _$GOneBattleDataData_battleDataSerializer();
Serializer<GOneBattleDataData_battleData_pokemon>
    _$gOneBattleDataDataBattleDataPokemonSerializer =
    new _$GOneBattleDataData_battleData_pokemonSerializer();
Serializer<GOneBattleDataData_battleData_battleDataAbility>
    _$gOneBattleDataDataBattleDataBattleDataAbilitySerializer =
    new _$GOneBattleDataData_battleData_battleDataAbilitySerializer();
Serializer<GOneBattleDataData_battleData_battleDataAbility_ability>
    _$gOneBattleDataDataBattleDataBattleDataAbilityAbilitySerializer =
    new _$GOneBattleDataData_battleData_battleDataAbility_abilitySerializer();
Serializer<GOneBattleDataData_battleData_battleDataItem>
    _$gOneBattleDataDataBattleDataBattleDataItemSerializer =
    new _$GOneBattleDataData_battleData_battleDataItemSerializer();
Serializer<GOneBattleDataData_battleData_battleDataItem_item>
    _$gOneBattleDataDataBattleDataBattleDataItemItemSerializer =
    new _$GOneBattleDataData_battleData_battleDataItem_itemSerializer();
Serializer<GOneBattleDataData_battleData_battleDataMove>
    _$gOneBattleDataDataBattleDataBattleDataMoveSerializer =
    new _$GOneBattleDataData_battleData_battleDataMoveSerializer();
Serializer<GOneBattleDataData_battleData_battleDataMove_move>
    _$gOneBattleDataDataBattleDataBattleDataMoveMoveSerializer =
    new _$GOneBattleDataData_battleData_battleDataMove_moveSerializer();
Serializer<GOneBattleDataData_battleData_battleDataMove_move_type>
    _$gOneBattleDataDataBattleDataBattleDataMoveMoveTypeSerializer =
    new _$GOneBattleDataData_battleData_battleDataMove_move_typeSerializer();
Serializer<GOneBattleDataData_battleData_battleDataMove_move_attackType>
    _$gOneBattleDataDataBattleDataBattleDataMoveMoveAttackTypeSerializer =
    new _$GOneBattleDataData_battleData_battleDataMove_move_attackTypeSerializer();
Serializer<GOneBattleDataData_battleData_battleDataNature>
    _$gOneBattleDataDataBattleDataBattleDataNatureSerializer =
    new _$GOneBattleDataData_battleData_battleDataNatureSerializer();
Serializer<GOneBattleDataData_battleData_battleDataNature_nature>
    _$gOneBattleDataDataBattleDataBattleDataNatureNatureSerializer =
    new _$GOneBattleDataData_battleData_battleDataNature_natureSerializer();
Serializer<GOneBattleDataData_battleData_battleDataTerastal>
    _$gOneBattleDataDataBattleDataBattleDataTerastalSerializer =
    new _$GOneBattleDataData_battleData_battleDataTerastalSerializer();
Serializer<GOneBattleDataData_battleData_battleDataTerastal_type>
    _$gOneBattleDataDataBattleDataBattleDataTerastalTypeSerializer =
    new _$GOneBattleDataData_battleData_battleDataTerastal_typeSerializer();

class _$GOneBattleDataDataSerializer
    implements StructuredSerializer<GOneBattleDataData> {
  @override
  final Iterable<Type> types = const [GOneBattleDataData, _$GOneBattleDataData];
  @override
  final String wireName = 'GOneBattleDataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOneBattleDataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.battleData;
    if (value != null) {
      result
        ..add('battleData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GOneBattleDataData_battleData)));
    }
    return result;
  }

  @override
  GOneBattleDataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'battleData':
          result.battleData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GOneBattleDataData_battleData))!
              as GOneBattleDataData_battleData);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleDataSerializer
    implements StructuredSerializer<GOneBattleDataData_battleData> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData,
    _$GOneBattleDataData_battleData
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOneBattleDataData_battleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(int)),
      'pokemon',
      serializers.serialize(object.pokemon,
          specifiedType: const FullType(GOneBattleDataData_battleData_pokemon)),
      'battleDataAbility',
      serializers.serialize(object.battleDataAbility,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataAbility)
          ])),
      'battleDataItem',
      serializers.serialize(object.battleDataItem,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataItem)
          ])),
      'battleDataMove',
      serializers.serialize(object.battleDataMove,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataMove)
          ])),
      'battleDataNature',
      serializers.serialize(object.battleDataNature,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataNature)
          ])),
      'battleDataTerastal',
      serializers.serialize(object.battleDataTerastal,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataTerastal)
          ])),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataData_battleDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'pokemon':
          result.pokemon.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GOneBattleDataData_battleData_pokemon))!
              as GOneBattleDataData_battleData_pokemon);
          break;
        case 'battleDataAbility':
          result.battleDataAbility.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOneBattleDataData_battleData_battleDataAbility)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataItem':
          result.battleDataItem.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOneBattleDataData_battleData_battleDataItem)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataMove':
          result.battleDataMove.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOneBattleDataData_battleData_battleDataMove)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataNature':
          result.battleDataNature.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOneBattleDataData_battleData_battleDataNature)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataTerastal':
          result.battleDataTerastal.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOneBattleDataData_battleData_battleDataTerastal)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemonSerializer
    implements StructuredSerializer<GOneBattleDataData_battleData_pokemon> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon,
    _$GOneBattleDataData_battleData_pokemon
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_pokemon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOneBattleDataData_battleData_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'imageLargeUrl',
      serializers.serialize(object.imageLargeUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataData_battleData_pokemonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageLargeUrl':
          result.imageLargeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'form':
          result.form = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataAbilitySerializer
    implements
        StructuredSerializer<GOneBattleDataData_battleData_battleDataAbility> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataAbility,
    _$GOneBattleDataData_battleData_battleDataAbility
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_battleDataAbility';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataAbility object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
      'ability',
      serializers.serialize(object.ability,
          specifiedType: const FullType(
              GOneBattleDataData_battleData_battleDataAbility_ability)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataAbility deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataData_battleData_battleDataAbilityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ability':
          result.ability.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_battleDataAbility_ability))!
              as GOneBattleDataData_battleData_battleDataAbility_ability);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataAbility_abilitySerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_battleDataAbility_ability> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataAbility_ability,
    _$GOneBattleDataData_battleData_battleDataAbility_ability
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_battleDataAbility_ability';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataAbility_ability object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'detail',
      serializers.serialize(object.detail,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataAbility_ability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataAbility_abilityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataItemSerializer
    implements
        StructuredSerializer<GOneBattleDataData_battleData_battleDataItem> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataItem,
    _$GOneBattleDataData_battleData_battleDataItem
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_battleDataItem';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
      'item',
      serializers.serialize(object.item,
          specifiedType: const FullType(
              GOneBattleDataData_battleData_battleDataItem_item)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataData_battleData_battleDataItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'item':
          result.item.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_battleDataItem_item))!
              as GOneBattleDataData_battleData_battleDataItem_item);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataItem_itemSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_battleDataItem_item> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataItem_item,
    _$GOneBattleDataData_battleData_battleDataItem_item
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_battleDataItem_item';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataItem_item object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'detail',
      serializers.serialize(object.detail,
          specifiedType: const FullType(String)),
      'imageSmallUrl',
      serializers.serialize(object.imageSmallUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataItem_item deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataItem_itemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageSmallUrl':
          result.imageSmallUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataMoveSerializer
    implements
        StructuredSerializer<GOneBattleDataData_battleData_battleDataMove> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataMove,
    _$GOneBattleDataData_battleData_battleDataMove
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_battleDataMove';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataMove object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
      'move',
      serializers.serialize(object.move,
          specifiedType: const FullType(
              GOneBattleDataData_battleData_battleDataMove_move)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataMove deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataData_battleData_battleDataMoveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'move':
          result.move.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_battleDataMove_move))!
              as GOneBattleDataData_battleData_battleDataMove_move);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataMove_moveSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_battleDataMove_move> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataMove_move,
    _$GOneBattleDataData_battleData_battleDataMove_move
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_battleDataMove_move';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataMove_move object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'detail',
      serializers.serialize(object.detail,
          specifiedType: const FullType(String)),
      'power',
      serializers.serialize(object.power, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GOneBattleDataData_battleData_battleDataMove_move_type)));
    }
    value = object.attackType;
    if (value != null) {
      result
        ..add('attackType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GOneBattleDataData_battleData_battleDataMove_move_attackType)));
    }
    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataMove_moveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'power':
          result.power = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_battleDataMove_move_type))!
              as GOneBattleDataData_battleData_battleDataMove_move_type);
          break;
        case 'attackType':
          result.attackType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_battleDataMove_move_attackType))!
              as GOneBattleDataData_battleData_battleDataMove_move_attackType);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataMove_move_typeSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_battleDataMove_move_type> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataMove_move_type,
    _$GOneBattleDataData_battleData_battleDataMove_move_type
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_battleDataMove_move_type';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataMove_move_type object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'textImageUrl',
      serializers.serialize(object.textImageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move_type deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataMove_move_typeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'textImageUrl':
          result.textImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataMove_move_attackTypeSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_battleDataMove_move_attackType> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataMove_move_attackType,
    _$GOneBattleDataData_battleData_battleDataMove_move_attackType
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_battleDataMove_move_attackType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataMove_move_attackType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move_attackType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataNatureSerializer
    implements
        StructuredSerializer<GOneBattleDataData_battleData_battleDataNature> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataNature,
    _$GOneBattleDataData_battleData_battleDataNature
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_battleDataNature';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataNature object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
      'nature',
      serializers.serialize(object.nature,
          specifiedType: const FullType(
              GOneBattleDataData_battleData_battleDataNature_nature)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataNature deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataData_battleData_battleDataNatureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'nature':
          result.nature.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_battleDataNature_nature))!
              as GOneBattleDataData_battleData_battleDataNature_nature);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataNature_natureSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_battleDataNature_nature> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataNature_nature,
    _$GOneBattleDataData_battleData_battleDataNature_nature
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_battleDataNature_nature';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataNature_nature object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'increase',
      serializers.serialize(object.increase,
          specifiedType: const FullType(String)),
      'decrease',
      serializers.serialize(object.decrease,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataNature_nature deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataNature_natureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'increase':
          result.increase = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'decrease':
          result.decrease = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataTerastalSerializer
    implements
        StructuredSerializer<GOneBattleDataData_battleData_battleDataTerastal> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataTerastal,
    _$GOneBattleDataData_battleData_battleDataTerastal
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_battleDataTerastal';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataTerastal object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(
              GOneBattleDataData_battleData_battleDataTerastal_type)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataTerastal deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataTerastalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_battleDataTerastal_type))!
              as GOneBattleDataData_battleData_battleDataTerastal_type);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_battleDataTerastal_typeSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_battleDataTerastal_type> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_battleDataTerastal_type,
    _$GOneBattleDataData_battleData_battleDataTerastal_type
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_battleDataTerastal_type';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_battleDataTerastal_type object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'terastalImageUrl',
      serializers.serialize(object.terastalImageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_battleDataTerastal_type deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_battleDataTerastal_typeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'terastalImageUrl':
          result.terastalImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData extends GOneBattleDataData {
  @override
  final String G__typename;
  @override
  final GOneBattleDataData_battleData? battleData;

  factory _$GOneBattleDataData(
          [void Function(GOneBattleDataDataBuilder)? updates]) =>
      (new GOneBattleDataDataBuilder()..update(updates))._build();

  _$GOneBattleDataData._({required this.G__typename, this.battleData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOneBattleDataData', 'G__typename');
  }

  @override
  GOneBattleDataData rebuild(
          void Function(GOneBattleDataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataDataBuilder toBuilder() =>
      new GOneBattleDataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData &&
        G__typename == other.G__typename &&
        battleData == other.battleData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, battleData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOneBattleDataData')
          ..add('G__typename', G__typename)
          ..add('battleData', battleData))
        .toString();
  }
}

class GOneBattleDataDataBuilder
    implements Builder<GOneBattleDataData, GOneBattleDataDataBuilder> {
  _$GOneBattleDataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GOneBattleDataData_battleDataBuilder? _battleData;
  GOneBattleDataData_battleDataBuilder get battleData =>
      _$this._battleData ??= new GOneBattleDataData_battleDataBuilder();
  set battleData(GOneBattleDataData_battleDataBuilder? battleData) =>
      _$this._battleData = battleData;

  GOneBattleDataDataBuilder() {
    GOneBattleDataData._initializeBuilder(this);
  }

  GOneBattleDataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _battleData = $v.battleData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData;
  }

  @override
  void update(void Function(GOneBattleDataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData build() => _build();

  _$GOneBattleDataData _build() {
    _$GOneBattleDataData _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GOneBattleDataData', 'G__typename'),
              battleData: _battleData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'battleData';
        _battleData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData extends GOneBattleDataData_battleData {
  @override
  final String G__typename;
  @override
  final int rank;
  @override
  final GOneBattleDataData_battleData_pokemon pokemon;
  @override
  final BuiltList<GOneBattleDataData_battleData_battleDataAbility>
      battleDataAbility;
  @override
  final BuiltList<GOneBattleDataData_battleData_battleDataItem> battleDataItem;
  @override
  final BuiltList<GOneBattleDataData_battleData_battleDataMove> battleDataMove;
  @override
  final BuiltList<GOneBattleDataData_battleData_battleDataNature>
      battleDataNature;
  @override
  final BuiltList<GOneBattleDataData_battleData_battleDataTerastal>
      battleDataTerastal;

  factory _$GOneBattleDataData_battleData(
          [void Function(GOneBattleDataData_battleDataBuilder)? updates]) =>
      (new GOneBattleDataData_battleDataBuilder()..update(updates))._build();

  _$GOneBattleDataData_battleData._(
      {required this.G__typename,
      required this.rank,
      required this.pokemon,
      required this.battleDataAbility,
      required this.battleDataItem,
      required this.battleDataMove,
      required this.battleDataNature,
      required this.battleDataTerastal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOneBattleDataData_battleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rank, r'GOneBattleDataData_battleData', 'rank');
    BuiltValueNullFieldError.checkNotNull(
        pokemon, r'GOneBattleDataData_battleData', 'pokemon');
    BuiltValueNullFieldError.checkNotNull(battleDataAbility,
        r'GOneBattleDataData_battleData', 'battleDataAbility');
    BuiltValueNullFieldError.checkNotNull(
        battleDataItem, r'GOneBattleDataData_battleData', 'battleDataItem');
    BuiltValueNullFieldError.checkNotNull(
        battleDataMove, r'GOneBattleDataData_battleData', 'battleDataMove');
    BuiltValueNullFieldError.checkNotNull(
        battleDataNature, r'GOneBattleDataData_battleData', 'battleDataNature');
    BuiltValueNullFieldError.checkNotNull(battleDataTerastal,
        r'GOneBattleDataData_battleData', 'battleDataTerastal');
  }

  @override
  GOneBattleDataData_battleData rebuild(
          void Function(GOneBattleDataData_battleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleDataBuilder toBuilder() =>
      new GOneBattleDataData_battleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData &&
        G__typename == other.G__typename &&
        rank == other.rank &&
        pokemon == other.pokemon &&
        battleDataAbility == other.battleDataAbility &&
        battleDataItem == other.battleDataItem &&
        battleDataMove == other.battleDataMove &&
        battleDataNature == other.battleDataNature &&
        battleDataTerastal == other.battleDataTerastal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, pokemon.hashCode);
    _$hash = $jc(_$hash, battleDataAbility.hashCode);
    _$hash = $jc(_$hash, battleDataItem.hashCode);
    _$hash = $jc(_$hash, battleDataMove.hashCode);
    _$hash = $jc(_$hash, battleDataNature.hashCode);
    _$hash = $jc(_$hash, battleDataTerastal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOneBattleDataData_battleData')
          ..add('G__typename', G__typename)
          ..add('rank', rank)
          ..add('pokemon', pokemon)
          ..add('battleDataAbility', battleDataAbility)
          ..add('battleDataItem', battleDataItem)
          ..add('battleDataMove', battleDataMove)
          ..add('battleDataNature', battleDataNature)
          ..add('battleDataTerastal', battleDataTerastal))
        .toString();
  }
}

class GOneBattleDataData_battleDataBuilder
    implements
        Builder<GOneBattleDataData_battleData,
            GOneBattleDataData_battleDataBuilder> {
  _$GOneBattleDataData_battleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  GOneBattleDataData_battleData_pokemonBuilder? _pokemon;
  GOneBattleDataData_battleData_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GOneBattleDataData_battleData_pokemonBuilder();
  set pokemon(GOneBattleDataData_battleData_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  ListBuilder<GOneBattleDataData_battleData_battleDataAbility>?
      _battleDataAbility;
  ListBuilder<GOneBattleDataData_battleData_battleDataAbility>
      get battleDataAbility => _$this._battleDataAbility ??=
          new ListBuilder<GOneBattleDataData_battleData_battleDataAbility>();
  set battleDataAbility(
          ListBuilder<GOneBattleDataData_battleData_battleDataAbility>?
              battleDataAbility) =>
      _$this._battleDataAbility = battleDataAbility;

  ListBuilder<GOneBattleDataData_battleData_battleDataItem>? _battleDataItem;
  ListBuilder<GOneBattleDataData_battleData_battleDataItem>
      get battleDataItem => _$this._battleDataItem ??=
          new ListBuilder<GOneBattleDataData_battleData_battleDataItem>();
  set battleDataItem(
          ListBuilder<GOneBattleDataData_battleData_battleDataItem>?
              battleDataItem) =>
      _$this._battleDataItem = battleDataItem;

  ListBuilder<GOneBattleDataData_battleData_battleDataMove>? _battleDataMove;
  ListBuilder<GOneBattleDataData_battleData_battleDataMove>
      get battleDataMove => _$this._battleDataMove ??=
          new ListBuilder<GOneBattleDataData_battleData_battleDataMove>();
  set battleDataMove(
          ListBuilder<GOneBattleDataData_battleData_battleDataMove>?
              battleDataMove) =>
      _$this._battleDataMove = battleDataMove;

  ListBuilder<GOneBattleDataData_battleData_battleDataNature>?
      _battleDataNature;
  ListBuilder<GOneBattleDataData_battleData_battleDataNature>
      get battleDataNature => _$this._battleDataNature ??=
          new ListBuilder<GOneBattleDataData_battleData_battleDataNature>();
  set battleDataNature(
          ListBuilder<GOneBattleDataData_battleData_battleDataNature>?
              battleDataNature) =>
      _$this._battleDataNature = battleDataNature;

  ListBuilder<GOneBattleDataData_battleData_battleDataTerastal>?
      _battleDataTerastal;
  ListBuilder<GOneBattleDataData_battleData_battleDataTerastal>
      get battleDataTerastal => _$this._battleDataTerastal ??=
          new ListBuilder<GOneBattleDataData_battleData_battleDataTerastal>();
  set battleDataTerastal(
          ListBuilder<GOneBattleDataData_battleData_battleDataTerastal>?
              battleDataTerastal) =>
      _$this._battleDataTerastal = battleDataTerastal;

  GOneBattleDataData_battleDataBuilder() {
    GOneBattleDataData_battleData._initializeBuilder(this);
  }

  GOneBattleDataData_battleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rank = $v.rank;
      _pokemon = $v.pokemon.toBuilder();
      _battleDataAbility = $v.battleDataAbility.toBuilder();
      _battleDataItem = $v.battleDataItem.toBuilder();
      _battleDataMove = $v.battleDataMove.toBuilder();
      _battleDataNature = $v.battleDataNature.toBuilder();
      _battleDataTerastal = $v.battleDataTerastal.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData;
  }

  @override
  void update(void Function(GOneBattleDataData_battleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData build() => _build();

  _$GOneBattleDataData_battleData _build() {
    _$GOneBattleDataData_battleData _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GOneBattleDataData_battleData', 'G__typename'),
              rank: BuiltValueNullFieldError.checkNotNull(
                  rank, r'GOneBattleDataData_battleData', 'rank'),
              pokemon: pokemon.build(),
              battleDataAbility: battleDataAbility.build(),
              battleDataItem: battleDataItem.build(),
              battleDataMove: battleDataMove.build(),
              battleDataNature: battleDataNature.build(),
              battleDataTerastal: battleDataTerastal.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        pokemon.build();
        _$failedField = 'battleDataAbility';
        battleDataAbility.build();
        _$failedField = 'battleDataItem';
        battleDataItem.build();
        _$failedField = 'battleDataMove';
        battleDataMove.build();
        _$failedField = 'battleDataNature';
        battleDataNature.build();
        _$failedField = 'battleDataTerastal';
        battleDataTerastal.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon
    extends GOneBattleDataData_battleData_pokemon {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String imageLargeUrl;
  @override
  final String name;
  @override
  final String form;

  factory _$GOneBattleDataData_battleData_pokemon(
          [void Function(GOneBattleDataData_battleData_pokemonBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemonBuilder()..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon._(
      {required this.G__typename,
      required this.id,
      required this.imageLargeUrl,
      required this.name,
      required this.form})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOneBattleDataData_battleData_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GOneBattleDataData_battleData_pokemon', 'id');
    BuiltValueNullFieldError.checkNotNull(imageLargeUrl,
        r'GOneBattleDataData_battleData_pokemon', 'imageLargeUrl');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOneBattleDataData_battleData_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GOneBattleDataData_battleData_pokemon', 'form');
  }

  @override
  GOneBattleDataData_battleData_pokemon rebuild(
          void Function(GOneBattleDataData_battleData_pokemonBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemonBuilder toBuilder() =>
      new GOneBattleDataData_battleData_pokemonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_pokemon &&
        G__typename == other.G__typename &&
        id == other.id &&
        imageLargeUrl == other.imageLargeUrl &&
        name == other.name &&
        form == other.form;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageLargeUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('imageLargeUrl', imageLargeUrl)
          ..add('name', name)
          ..add('form', form))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemonBuilder
    implements
        Builder<GOneBattleDataData_battleData_pokemon,
            GOneBattleDataData_battleData_pokemonBuilder> {
  _$GOneBattleDataData_battleData_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _imageLargeUrl;
  String? get imageLargeUrl => _$this._imageLargeUrl;
  set imageLargeUrl(String? imageLargeUrl) =>
      _$this._imageLargeUrl = imageLargeUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  GOneBattleDataData_battleData_pokemonBuilder() {
    GOneBattleDataData_battleData_pokemon._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _imageLargeUrl = $v.imageLargeUrl;
      _name = $v.name;
      _form = $v.form;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_pokemon;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_pokemonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon build() => _build();

  _$GOneBattleDataData_battleData_pokemon _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_pokemon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOneBattleDataData_battleData_pokemon', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GOneBattleDataData_battleData_pokemon', 'id'),
            imageLargeUrl: BuiltValueNullFieldError.checkNotNull(imageLargeUrl,
                r'GOneBattleDataData_battleData_pokemon', 'imageLargeUrl'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GOneBattleDataData_battleData_pokemon', 'name'),
            form: BuiltValueNullFieldError.checkNotNull(
                form, r'GOneBattleDataData_battleData_pokemon', 'form'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataAbility
    extends GOneBattleDataData_battleData_battleDataAbility {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final GOneBattleDataData_battleData_battleDataAbility_ability ability;

  factory _$GOneBattleDataData_battleData_battleDataAbility(
          [void Function(
                  GOneBattleDataData_battleData_battleDataAbilityBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataAbilityBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataAbility._(
      {required this.G__typename, required this.rate, required this.ability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_battleDataAbility', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'GOneBattleDataData_battleData_battleDataAbility', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        ability, r'GOneBattleDataData_battleData_battleDataAbility', 'ability');
  }

  @override
  GOneBattleDataData_battleData_battleDataAbility rebuild(
          void Function(GOneBattleDataData_battleData_battleDataAbilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataAbilityBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataAbilityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataAbility &&
        G__typename == other.G__typename &&
        rate == other.rate &&
        ability == other.ability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, ability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataAbility')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('ability', ability))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataAbilityBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataAbility,
            GOneBattleDataData_battleData_battleDataAbilityBuilder> {
  _$GOneBattleDataData_battleData_battleDataAbility? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GOneBattleDataData_battleData_battleDataAbility_abilityBuilder? _ability;
  GOneBattleDataData_battleData_battleDataAbility_abilityBuilder get ability =>
      _$this._ability ??=
          new GOneBattleDataData_battleData_battleDataAbility_abilityBuilder();
  set ability(
          GOneBattleDataData_battleData_battleDataAbility_abilityBuilder?
              ability) =>
      _$this._ability = ability;

  GOneBattleDataData_battleData_battleDataAbilityBuilder() {
    GOneBattleDataData_battleData_battleDataAbility._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataAbilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rate = $v.rate;
      _ability = $v.ability.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataAbility other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataAbility;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_battleDataAbilityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataAbility build() => _build();

  _$GOneBattleDataData_battleData_battleDataAbility _build() {
    _$GOneBattleDataData_battleData_battleDataAbility _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_battleDataAbility._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_battleDataAbility',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(rate,
                  r'GOneBattleDataData_battleData_battleDataAbility', 'rate'),
              ability: ability.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ability';
        ability.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_battleDataAbility',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataAbility_ability
    extends GOneBattleDataData_battleData_battleDataAbility_ability {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String detail;
  @override
  final String id;

  factory _$GOneBattleDataData_battleData_battleDataAbility_ability(
          [void Function(
                  GOneBattleDataData_battleData_battleDataAbility_abilityBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataAbility_abilityBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataAbility_ability._(
      {required this.G__typename,
      required this.name,
      required this.detail,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_battleDataAbility_ability',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        r'GOneBattleDataData_battleData_battleDataAbility_ability', 'name');
    BuiltValueNullFieldError.checkNotNull(detail,
        r'GOneBattleDataData_battleData_battleDataAbility_ability', 'detail');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GOneBattleDataData_battleData_battleDataAbility_ability', 'id');
  }

  @override
  GOneBattleDataData_battleData_battleDataAbility_ability rebuild(
          void Function(
                  GOneBattleDataData_battleData_battleDataAbility_abilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataAbility_abilityBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataAbility_abilityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataAbility_ability &&
        G__typename == other.G__typename &&
        name == other.name &&
        detail == other.detail &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataAbility_ability')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('detail', detail)
          ..add('id', id))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataAbility_abilityBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataAbility_ability,
            GOneBattleDataData_battleData_battleDataAbility_abilityBuilder> {
  _$GOneBattleDataData_battleData_battleDataAbility_ability? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOneBattleDataData_battleData_battleDataAbility_abilityBuilder() {
    GOneBattleDataData_battleData_battleDataAbility_ability._initializeBuilder(
        this);
  }

  GOneBattleDataData_battleData_battleDataAbility_abilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _detail = $v.detail;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataAbility_ability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataAbility_ability;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_battleDataAbility_abilityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataAbility_ability build() => _build();

  _$GOneBattleDataData_battleData_battleDataAbility_ability _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_battleDataAbility_ability._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_battleDataAbility_ability',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GOneBattleDataData_battleData_battleDataAbility_ability',
                'name'),
            detail: BuiltValueNullFieldError.checkNotNull(
                detail,
                r'GOneBattleDataData_battleData_battleDataAbility_ability',
                'detail'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GOneBattleDataData_battleData_battleDataAbility_ability',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataItem
    extends GOneBattleDataData_battleData_battleDataItem {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final GOneBattleDataData_battleData_battleDataItem_item item;

  factory _$GOneBattleDataData_battleData_battleDataItem(
          [void Function(GOneBattleDataData_battleData_battleDataItemBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataItemBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataItem._(
      {required this.G__typename, required this.rate, required this.item})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_battleDataItem', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'GOneBattleDataData_battleData_battleDataItem', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        item, r'GOneBattleDataData_battleData_battleDataItem', 'item');
  }

  @override
  GOneBattleDataData_battleData_battleDataItem rebuild(
          void Function(GOneBattleDataData_battleData_battleDataItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataItemBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataItem &&
        G__typename == other.G__typename &&
        rate == other.rate &&
        item == other.item;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataItem')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('item', item))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataItemBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataItem,
            GOneBattleDataData_battleData_battleDataItemBuilder> {
  _$GOneBattleDataData_battleData_battleDataItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GOneBattleDataData_battleData_battleDataItem_itemBuilder? _item;
  GOneBattleDataData_battleData_battleDataItem_itemBuilder get item =>
      _$this._item ??=
          new GOneBattleDataData_battleData_battleDataItem_itemBuilder();
  set item(GOneBattleDataData_battleData_battleDataItem_itemBuilder? item) =>
      _$this._item = item;

  GOneBattleDataData_battleData_battleDataItemBuilder() {
    GOneBattleDataData_battleData_battleDataItem._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rate = $v.rate;
      _item = $v.item.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataItem;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_battleDataItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataItem build() => _build();

  _$GOneBattleDataData_battleData_battleDataItem _build() {
    _$GOneBattleDataData_battleData_battleDataItem _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_battleDataItem._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_battleDataItem',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(rate,
                  r'GOneBattleDataData_battleData_battleDataItem', 'rate'),
              item: item.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_battleDataItem',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataItem_item
    extends GOneBattleDataData_battleData_battleDataItem_item {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String detail;
  @override
  final String imageSmallUrl;

  factory _$GOneBattleDataData_battleData_battleDataItem_item(
          [void Function(
                  GOneBattleDataData_battleData_battleDataItem_itemBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataItem_itemBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataItem_item._(
      {required this.G__typename,
      required this.name,
      required this.detail,
      required this.imageSmallUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_battleDataItem_item', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOneBattleDataData_battleData_battleDataItem_item', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GOneBattleDataData_battleData_battleDataItem_item', 'detail');
    BuiltValueNullFieldError.checkNotNull(imageSmallUrl,
        r'GOneBattleDataData_battleData_battleDataItem_item', 'imageSmallUrl');
  }

  @override
  GOneBattleDataData_battleData_battleDataItem_item rebuild(
          void Function(
                  GOneBattleDataData_battleData_battleDataItem_itemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataItem_itemBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataItem_itemBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataItem_item &&
        G__typename == other.G__typename &&
        name == other.name &&
        detail == other.detail &&
        imageSmallUrl == other.imageSmallUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, imageSmallUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataItem_item')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('detail', detail)
          ..add('imageSmallUrl', imageSmallUrl))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataItem_itemBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataItem_item,
            GOneBattleDataData_battleData_battleDataItem_itemBuilder> {
  _$GOneBattleDataData_battleData_battleDataItem_item? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _imageSmallUrl;
  String? get imageSmallUrl => _$this._imageSmallUrl;
  set imageSmallUrl(String? imageSmallUrl) =>
      _$this._imageSmallUrl = imageSmallUrl;

  GOneBattleDataData_battleData_battleDataItem_itemBuilder() {
    GOneBattleDataData_battleData_battleDataItem_item._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataItem_itemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _detail = $v.detail;
      _imageSmallUrl = $v.imageSmallUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataItem_item other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataItem_item;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_battleDataItem_itemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataItem_item build() => _build();

  _$GOneBattleDataData_battleData_battleDataItem_item _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_battleDataItem_item._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_battleDataItem_item',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                r'GOneBattleDataData_battleData_battleDataItem_item', 'name'),
            detail: BuiltValueNullFieldError.checkNotNull(detail,
                r'GOneBattleDataData_battleData_battleDataItem_item', 'detail'),
            imageSmallUrl: BuiltValueNullFieldError.checkNotNull(
                imageSmallUrl,
                r'GOneBattleDataData_battleData_battleDataItem_item',
                'imageSmallUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataMove
    extends GOneBattleDataData_battleData_battleDataMove {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final GOneBattleDataData_battleData_battleDataMove_move move;

  factory _$GOneBattleDataData_battleData_battleDataMove(
          [void Function(GOneBattleDataData_battleData_battleDataMoveBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataMoveBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataMove._(
      {required this.G__typename, required this.rate, required this.move})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_battleDataMove', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'GOneBattleDataData_battleData_battleDataMove', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        move, r'GOneBattleDataData_battleData_battleDataMove', 'move');
  }

  @override
  GOneBattleDataData_battleData_battleDataMove rebuild(
          void Function(GOneBattleDataData_battleData_battleDataMoveBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataMoveBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataMoveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataMove &&
        G__typename == other.G__typename &&
        rate == other.rate &&
        move == other.move;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, move.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataMove')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('move', move))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataMoveBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataMove,
            GOneBattleDataData_battleData_battleDataMoveBuilder> {
  _$GOneBattleDataData_battleData_battleDataMove? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GOneBattleDataData_battleData_battleDataMove_moveBuilder? _move;
  GOneBattleDataData_battleData_battleDataMove_moveBuilder get move =>
      _$this._move ??=
          new GOneBattleDataData_battleData_battleDataMove_moveBuilder();
  set move(GOneBattleDataData_battleData_battleDataMove_moveBuilder? move) =>
      _$this._move = move;

  GOneBattleDataData_battleData_battleDataMoveBuilder() {
    GOneBattleDataData_battleData_battleDataMove._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataMoveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rate = $v.rate;
      _move = $v.move.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataMove other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataMove;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_battleDataMoveBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataMove build() => _build();

  _$GOneBattleDataData_battleData_battleDataMove _build() {
    _$GOneBattleDataData_battleData_battleDataMove _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_battleDataMove._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_battleDataMove',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(rate,
                  r'GOneBattleDataData_battleData_battleDataMove', 'rate'),
              move: move.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'move';
        move.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_battleDataMove',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataMove_move
    extends GOneBattleDataData_battleData_battleDataMove_move {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String detail;
  @override
  final int power;
  @override
  final GOneBattleDataData_battleData_battleDataMove_move_type? type;
  @override
  final GOneBattleDataData_battleData_battleDataMove_move_attackType?
      attackType;

  factory _$GOneBattleDataData_battleData_battleDataMove_move(
          [void Function(
                  GOneBattleDataData_battleData_battleDataMove_moveBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataMove_moveBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataMove_move._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.detail,
      required this.power,
      this.type,
      this.attackType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_battleDataMove_move', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GOneBattleDataData_battleData_battleDataMove_move', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOneBattleDataData_battleData_battleDataMove_move', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GOneBattleDataData_battleData_battleDataMove_move', 'detail');
    BuiltValueNullFieldError.checkNotNull(
        power, r'GOneBattleDataData_battleData_battleDataMove_move', 'power');
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move rebuild(
          void Function(
                  GOneBattleDataData_battleData_battleDataMove_moveBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataMove_moveBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataMove_moveBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataMove_move &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        detail == other.detail &&
        power == other.power &&
        type == other.type &&
        attackType == other.attackType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, attackType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataMove_move')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('detail', detail)
          ..add('power', power)
          ..add('type', type)
          ..add('attackType', attackType))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataMove_moveBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataMove_move,
            GOneBattleDataData_battleData_battleDataMove_moveBuilder> {
  _$GOneBattleDataData_battleData_battleDataMove_move? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  int? _power;
  int? get power => _$this._power;
  set power(int? power) => _$this._power = power;

  GOneBattleDataData_battleData_battleDataMove_move_typeBuilder? _type;
  GOneBattleDataData_battleData_battleDataMove_move_typeBuilder get type =>
      _$this._type ??=
          new GOneBattleDataData_battleData_battleDataMove_move_typeBuilder();
  set type(
          GOneBattleDataData_battleData_battleDataMove_move_typeBuilder?
              type) =>
      _$this._type = type;

  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder?
      _attackType;
  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder
      get attackType => _$this._attackType ??=
          new GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder();
  set attackType(
          GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder?
              attackType) =>
      _$this._attackType = attackType;

  GOneBattleDataData_battleData_battleDataMove_moveBuilder() {
    GOneBattleDataData_battleData_battleDataMove_move._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataMove_moveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _detail = $v.detail;
      _power = $v.power;
      _type = $v.type?.toBuilder();
      _attackType = $v.attackType?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataMove_move other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataMove_move;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_battleDataMove_moveBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move build() => _build();

  _$GOneBattleDataData_battleData_battleDataMove_move _build() {
    _$GOneBattleDataData_battleData_battleDataMove_move _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_battleDataMove_move._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_battleDataMove_move',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GOneBattleDataData_battleData_battleDataMove_move', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'GOneBattleDataData_battleData_battleDataMove_move', 'name'),
              detail: BuiltValueNullFieldError.checkNotNull(
                  detail,
                  r'GOneBattleDataData_battleData_battleDataMove_move',
                  'detail'),
              power: BuiltValueNullFieldError.checkNotNull(
                  power,
                  r'GOneBattleDataData_battleData_battleDataMove_move',
                  'power'),
              type: _type?.build(),
              attackType: _attackType?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type';
        _type?.build();
        _$failedField = 'attackType';
        _attackType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_battleDataMove_move',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataMove_move_type
    extends GOneBattleDataData_battleData_battleDataMove_move_type {
  @override
  final String G__typename;
  @override
  final String textImageUrl;

  factory _$GOneBattleDataData_battleData_battleDataMove_move_type(
          [void Function(
                  GOneBattleDataData_battleData_battleDataMove_move_typeBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataMove_move_typeBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataMove_move_type._(
      {required this.G__typename, required this.textImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_battleDataMove_move_type',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        textImageUrl,
        r'GOneBattleDataData_battleData_battleDataMove_move_type',
        'textImageUrl');
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move_type rebuild(
          void Function(
                  GOneBattleDataData_battleData_battleDataMove_move_typeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataMove_move_typeBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataMove_move_typeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataMove_move_type &&
        G__typename == other.G__typename &&
        textImageUrl == other.textImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, textImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataMove_move_type')
          ..add('G__typename', G__typename)
          ..add('textImageUrl', textImageUrl))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataMove_move_typeBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataMove_move_type,
            GOneBattleDataData_battleData_battleDataMove_move_typeBuilder> {
  _$GOneBattleDataData_battleData_battleDataMove_move_type? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _textImageUrl;
  String? get textImageUrl => _$this._textImageUrl;
  set textImageUrl(String? textImageUrl) => _$this._textImageUrl = textImageUrl;

  GOneBattleDataData_battleData_battleDataMove_move_typeBuilder() {
    GOneBattleDataData_battleData_battleDataMove_move_type._initializeBuilder(
        this);
  }

  GOneBattleDataData_battleData_battleDataMove_move_typeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _textImageUrl = $v.textImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataMove_move_type other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataMove_move_type;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_battleDataMove_move_typeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move_type build() => _build();

  _$GOneBattleDataData_battleData_battleDataMove_move_type _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_battleDataMove_move_type._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_battleDataMove_move_type',
                'G__typename'),
            textImageUrl: BuiltValueNullFieldError.checkNotNull(
                textImageUrl,
                r'GOneBattleDataData_battleData_battleDataMove_move_type',
                'textImageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataMove_move_attackType
    extends GOneBattleDataData_battleData_battleDataMove_move_attackType {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String imageUrl;

  factory _$GOneBattleDataData_battleData_battleDataMove_move_attackType(
          [void Function(
                  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataMove_move_attackType._(
      {required this.G__typename, required this.name, required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_battleDataMove_move_attackType',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GOneBattleDataData_battleData_battleDataMove_move_attackType',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl,
        r'GOneBattleDataData_battleData_battleDataMove_move_attackType',
        'imageUrl');
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move_attackType rebuild(
          void Function(
                  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder
      toBuilder() =>
          new GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GOneBattleDataData_battleData_battleDataMove_move_attackType &&
        G__typename == other.G__typename &&
        name == other.name &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataMove_move_attackType')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataMove_move_attackType,
            GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder> {
  _$GOneBattleDataData_battleData_battleDataMove_move_attackType? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder() {
    GOneBattleDataData_battleData_battleDataMove_move_attackType
        ._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GOneBattleDataData_battleData_battleDataMove_move_attackType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GOneBattleDataData_battleData_battleDataMove_move_attackType;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_battleDataMove_move_attackTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataMove_move_attackType build() =>
      _build();

  _$GOneBattleDataData_battleData_battleDataMove_move_attackType _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_battleDataMove_move_attackType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_battleDataMove_move_attackType',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GOneBattleDataData_battleData_battleDataMove_move_attackType',
                'name'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl,
                r'GOneBattleDataData_battleData_battleDataMove_move_attackType',
                'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataNature
    extends GOneBattleDataData_battleData_battleDataNature {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final GOneBattleDataData_battleData_battleDataNature_nature nature;

  factory _$GOneBattleDataData_battleData_battleDataNature(
          [void Function(GOneBattleDataData_battleData_battleDataNatureBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataNatureBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataNature._(
      {required this.G__typename, required this.rate, required this.nature})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_battleDataNature', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'GOneBattleDataData_battleData_battleDataNature', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        nature, r'GOneBattleDataData_battleData_battleDataNature', 'nature');
  }

  @override
  GOneBattleDataData_battleData_battleDataNature rebuild(
          void Function(GOneBattleDataData_battleData_battleDataNatureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataNatureBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataNatureBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataNature &&
        G__typename == other.G__typename &&
        rate == other.rate &&
        nature == other.nature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, nature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataNature')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('nature', nature))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataNatureBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataNature,
            GOneBattleDataData_battleData_battleDataNatureBuilder> {
  _$GOneBattleDataData_battleData_battleDataNature? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GOneBattleDataData_battleData_battleDataNature_natureBuilder? _nature;
  GOneBattleDataData_battleData_battleDataNature_natureBuilder get nature =>
      _$this._nature ??=
          new GOneBattleDataData_battleData_battleDataNature_natureBuilder();
  set nature(
          GOneBattleDataData_battleData_battleDataNature_natureBuilder?
              nature) =>
      _$this._nature = nature;

  GOneBattleDataData_battleData_battleDataNatureBuilder() {
    GOneBattleDataData_battleData_battleDataNature._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataNatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rate = $v.rate;
      _nature = $v.nature.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataNature other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataNature;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_battleDataNatureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataNature build() => _build();

  _$GOneBattleDataData_battleData_battleDataNature _build() {
    _$GOneBattleDataData_battleData_battleDataNature _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_battleDataNature._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_battleDataNature',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(rate,
                  r'GOneBattleDataData_battleData_battleDataNature', 'rate'),
              nature: nature.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nature';
        nature.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_battleDataNature',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataNature_nature
    extends GOneBattleDataData_battleData_battleDataNature_nature {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String increase;
  @override
  final String decrease;

  factory _$GOneBattleDataData_battleData_battleDataNature_nature(
          [void Function(
                  GOneBattleDataData_battleData_battleDataNature_natureBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataNature_natureBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataNature_nature._(
      {required this.G__typename,
      required this.name,
      required this.increase,
      required this.decrease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_battleDataNature_nature',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOneBattleDataData_battleData_battleDataNature_nature', 'name');
    BuiltValueNullFieldError.checkNotNull(increase,
        r'GOneBattleDataData_battleData_battleDataNature_nature', 'increase');
    BuiltValueNullFieldError.checkNotNull(decrease,
        r'GOneBattleDataData_battleData_battleDataNature_nature', 'decrease');
  }

  @override
  GOneBattleDataData_battleData_battleDataNature_nature rebuild(
          void Function(
                  GOneBattleDataData_battleData_battleDataNature_natureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataNature_natureBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataNature_natureBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataNature_nature &&
        G__typename == other.G__typename &&
        name == other.name &&
        increase == other.increase &&
        decrease == other.decrease;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, increase.hashCode);
    _$hash = $jc(_$hash, decrease.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataNature_nature')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('increase', increase)
          ..add('decrease', decrease))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataNature_natureBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataNature_nature,
            GOneBattleDataData_battleData_battleDataNature_natureBuilder> {
  _$GOneBattleDataData_battleData_battleDataNature_nature? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _increase;
  String? get increase => _$this._increase;
  set increase(String? increase) => _$this._increase = increase;

  String? _decrease;
  String? get decrease => _$this._decrease;
  set decrease(String? decrease) => _$this._decrease = decrease;

  GOneBattleDataData_battleData_battleDataNature_natureBuilder() {
    GOneBattleDataData_battleData_battleDataNature_nature._initializeBuilder(
        this);
  }

  GOneBattleDataData_battleData_battleDataNature_natureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _increase = $v.increase;
      _decrease = $v.decrease;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataNature_nature other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataNature_nature;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_battleDataNature_natureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataNature_nature build() => _build();

  _$GOneBattleDataData_battleData_battleDataNature_nature _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_battleDataNature_nature._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_battleDataNature_nature',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GOneBattleDataData_battleData_battleDataNature_nature',
                'name'),
            increase: BuiltValueNullFieldError.checkNotNull(
                increase,
                r'GOneBattleDataData_battleData_battleDataNature_nature',
                'increase'),
            decrease: BuiltValueNullFieldError.checkNotNull(
                decrease,
                r'GOneBattleDataData_battleData_battleDataNature_nature',
                'decrease'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataTerastal
    extends GOneBattleDataData_battleData_battleDataTerastal {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final GOneBattleDataData_battleData_battleDataTerastal_type type;

  factory _$GOneBattleDataData_battleData_battleDataTerastal(
          [void Function(
                  GOneBattleDataData_battleData_battleDataTerastalBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataTerastalBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataTerastal._(
      {required this.G__typename, required this.rate, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_battleDataTerastal', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'GOneBattleDataData_battleData_battleDataTerastal', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GOneBattleDataData_battleData_battleDataTerastal', 'type');
  }

  @override
  GOneBattleDataData_battleData_battleDataTerastal rebuild(
          void Function(GOneBattleDataData_battleData_battleDataTerastalBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataTerastalBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataTerastalBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataTerastal &&
        G__typename == other.G__typename &&
        rate == other.rate &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataTerastal')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('type', type))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataTerastalBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataTerastal,
            GOneBattleDataData_battleData_battleDataTerastalBuilder> {
  _$GOneBattleDataData_battleData_battleDataTerastal? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GOneBattleDataData_battleData_battleDataTerastal_typeBuilder? _type;
  GOneBattleDataData_battleData_battleDataTerastal_typeBuilder get type =>
      _$this._type ??=
          new GOneBattleDataData_battleData_battleDataTerastal_typeBuilder();
  set type(
          GOneBattleDataData_battleData_battleDataTerastal_typeBuilder? type) =>
      _$this._type = type;

  GOneBattleDataData_battleData_battleDataTerastalBuilder() {
    GOneBattleDataData_battleData_battleDataTerastal._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_battleDataTerastalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rate = $v.rate;
      _type = $v.type.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataTerastal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataTerastal;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_battleDataTerastalBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataTerastal build() => _build();

  _$GOneBattleDataData_battleData_battleDataTerastal _build() {
    _$GOneBattleDataData_battleData_battleDataTerastal _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_battleDataTerastal._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_battleDataTerastal',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(rate,
                  r'GOneBattleDataData_battleData_battleDataTerastal', 'rate'),
              type: type.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type';
        type.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_battleDataTerastal',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_battleDataTerastal_type
    extends GOneBattleDataData_battleData_battleDataTerastal_type {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String terastalImageUrl;

  factory _$GOneBattleDataData_battleData_battleDataTerastal_type(
          [void Function(
                  GOneBattleDataData_battleData_battleDataTerastal_typeBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_battleDataTerastal_typeBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_battleDataTerastal_type._(
      {required this.G__typename,
      required this.name,
      required this.terastalImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_battleDataTerastal_type',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOneBattleDataData_battleData_battleDataTerastal_type', 'name');
    BuiltValueNullFieldError.checkNotNull(
        terastalImageUrl,
        r'GOneBattleDataData_battleData_battleDataTerastal_type',
        'terastalImageUrl');
  }

  @override
  GOneBattleDataData_battleData_battleDataTerastal_type rebuild(
          void Function(
                  GOneBattleDataData_battleData_battleDataTerastal_typeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_battleDataTerastal_typeBuilder toBuilder() =>
      new GOneBattleDataData_battleData_battleDataTerastal_typeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_battleDataTerastal_type &&
        G__typename == other.G__typename &&
        name == other.name &&
        terastalImageUrl == other.terastalImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, terastalImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_battleDataTerastal_type')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('terastalImageUrl', terastalImageUrl))
        .toString();
  }
}

class GOneBattleDataData_battleData_battleDataTerastal_typeBuilder
    implements
        Builder<GOneBattleDataData_battleData_battleDataTerastal_type,
            GOneBattleDataData_battleData_battleDataTerastal_typeBuilder> {
  _$GOneBattleDataData_battleData_battleDataTerastal_type? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _terastalImageUrl;
  String? get terastalImageUrl => _$this._terastalImageUrl;
  set terastalImageUrl(String? terastalImageUrl) =>
      _$this._terastalImageUrl = terastalImageUrl;

  GOneBattleDataData_battleData_battleDataTerastal_typeBuilder() {
    GOneBattleDataData_battleData_battleDataTerastal_type._initializeBuilder(
        this);
  }

  GOneBattleDataData_battleData_battleDataTerastal_typeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _terastalImageUrl = $v.terastalImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_battleDataTerastal_type other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_battleDataTerastal_type;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_battleDataTerastal_typeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_battleDataTerastal_type build() => _build();

  _$GOneBattleDataData_battleData_battleDataTerastal_type _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_battleDataTerastal_type._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_battleDataTerastal_type',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GOneBattleDataData_battleData_battleDataTerastal_type',
                'name'),
            terastalImageUrl: BuiltValueNullFieldError.checkNotNull(
                terastalImageUrl,
                r'GOneBattleDataData_battleData_battleDataTerastal_type',
                'terastalImageUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

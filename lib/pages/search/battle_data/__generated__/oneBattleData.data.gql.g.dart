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
Serializer<GOneBattleDataData_battleData_pokemon_types>
    _$gOneBattleDataDataBattleDataPokemonTypesSerializer =
    new _$GOneBattleDataData_battleData_pokemon_typesSerializer();
Serializer<GOneBattleDataData_battleData_pokemon_battleData>
    _$gOneBattleDataDataBattleDataPokemonBattleDataSerializer =
    new _$GOneBattleDataData_battleData_pokemon_battleDataSerializer();
Serializer<GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility>
    _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataAbilitySerializer =
    new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilitySerializer();
Serializer<
        GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability>
    _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataAbilityAbilitySerializer =
    new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilitySerializer();
Serializer<GOneBattleDataData_battleData_pokemon_battleData_battleDataItem>
    _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataItemSerializer =
    new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItemSerializer();
Serializer<GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item>
    _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataItemItemSerializer =
    new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemSerializer();
Serializer<GOneBattleDataData_battleData_pokemon_battleData_battleDataMove>
    _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataMoveSerializer =
    new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveSerializer();
Serializer<GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move>
    _$gOneBattleDataDataBattleDataPokemonBattleDataBattleDataMoveMoveSerializer =
    new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveSerializer();

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
      'pokemon',
      serializers.serialize(object.pokemon,
          specifiedType: const FullType(GOneBattleDataData_battleData_pokemon)),
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
        case 'pokemon':
          result.pokemon.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GOneBattleDataData_battleData_pokemon))!
              as GOneBattleDataData_battleData_pokemon);
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
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
      'imageLargeUrl',
      serializers.serialize(object.imageLargeUrl,
          specifiedType: const FullType(String)),
      'statusA',
      serializers.serialize(object.statusA, specifiedType: const FullType(int)),
      'statusB',
      serializers.serialize(object.statusB, specifiedType: const FullType(int)),
      'statusC',
      serializers.serialize(object.statusC, specifiedType: const FullType(int)),
      'statusD',
      serializers.serialize(object.statusD, specifiedType: const FullType(int)),
      'statusH',
      serializers.serialize(object.statusH, specifiedType: const FullType(int)),
      'statusS',
      serializers.serialize(object.statusS, specifiedType: const FullType(int)),
      'types',
      serializers.serialize(object.types,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(GOneBattleDataData_battleData_pokemon_types)
          ])),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'battleData',
      serializers.serialize(object.battleData,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(
                GOneBattleDataData_battleData_pokemon_battleData)
          ])),
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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'form':
          result.form = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageLargeUrl':
          result.imageLargeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statusA':
          result.statusA = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'statusB':
          result.statusB = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'statusC':
          result.statusC = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'statusD':
          result.statusD = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'statusH':
          result.statusH = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'statusS':
          result.statusS = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GOneBattleDataData_battleData_pokemon_types)
              ]))! as BuiltList<Object?>);
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'battleData':
          result.battleData.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GOneBattleDataData_battleData_pokemon_battleData)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemon_typesSerializer
    implements
        StructuredSerializer<GOneBattleDataData_battleData_pokemon_types> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_types,
    _$GOneBattleDataData_battleData_pokemon_types
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_pokemon_types';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_pokemon_types object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_types deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataData_battleData_pokemon_typesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleDataSerializer
    implements
        StructuredSerializer<GOneBattleDataData_battleData_pokemon_battleData> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_battleData,
    _$GOneBattleDataData_battleData_pokemon_battleData
  ];
  @override
  final String wireName = 'GOneBattleDataData_battleData_pokemon_battleData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_pokemon_battleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'battleDataAbility',
      serializers.serialize(object.battleDataAbility,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(
                GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility)
          ])),
      'battleDataItem',
      serializers.serialize(object.battleDataItem,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(
                GOneBattleDataData_battleData_pokemon_battleData_battleDataItem)
          ])),
      'battleDataMove',
      serializers.serialize(object.battleDataMove,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(
                GOneBattleDataData_battleData_pokemon_battleData_battleDataMove)
          ])),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_pokemon_battleDataBuilder();

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
        case 'battleDataAbility':
          result.battleDataAbility.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataItem':
          result.battleDataItem.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GOneBattleDataData_battleData_pokemon_battleData_battleDataItem)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataMove':
          result.battleDataMove.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GOneBattleDataData_battleData_pokemon_battleData_battleDataMove)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilitySerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility,
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility object,
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
              GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder();

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
                      GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability))!
              as GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilitySerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability,
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItemSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_battleData_battleDataItem,
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_pokemon_battleData_battleDataItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'Item',
      serializers.serialize(object.Item,
          specifiedType: const FullType(
              GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Item':
          result.Item.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item))!
              as GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item);
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item,
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'imageSmallUrl',
      serializers.serialize(object.imageSmallUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder();

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
        case 'imageSmallUrl':
          result.imageSmallUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_battleData_battleDataMove,
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOneBattleDataData_battleData_pokemon_battleData_battleDataMove object,
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
              GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder();

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
                      GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move))!
              as GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move);
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

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveSerializer
    implements
        StructuredSerializer<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move> {
  @override
  final Iterable<Type> types = const [
    GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move,
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
  ];
  @override
  final String wireName =
      'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder();

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
  final GOneBattleDataData_battleData_pokemon pokemon;

  factory _$GOneBattleDataData_battleData(
          [void Function(GOneBattleDataData_battleDataBuilder)? updates]) =>
      (new GOneBattleDataData_battleDataBuilder()..update(updates))._build();

  _$GOneBattleDataData_battleData._(
      {required this.G__typename, required this.pokemon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOneBattleDataData_battleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemon, r'GOneBattleDataData_battleData', 'pokemon');
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
        pokemon == other.pokemon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pokemon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOneBattleDataData_battleData')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
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

  GOneBattleDataData_battleData_pokemonBuilder? _pokemon;
  GOneBattleDataData_battleData_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GOneBattleDataData_battleData_pokemonBuilder();
  set pokemon(GOneBattleDataData_battleData_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GOneBattleDataData_battleDataBuilder() {
    GOneBattleDataData_battleData._initializeBuilder(this);
  }

  GOneBattleDataData_battleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon.toBuilder();
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
              pokemon: pokemon.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        pokemon.build();
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
  final String name;
  @override
  final String form;
  @override
  final String imageLargeUrl;
  @override
  final int statusA;
  @override
  final int statusB;
  @override
  final int statusC;
  @override
  final int statusD;
  @override
  final int statusH;
  @override
  final int statusS;
  @override
  final BuiltList<GOneBattleDataData_battleData_pokemon_types?> types;
  @override
  final String url;
  @override
  final BuiltList<GOneBattleDataData_battleData_pokemon_battleData?> battleData;

  factory _$GOneBattleDataData_battleData_pokemon(
          [void Function(GOneBattleDataData_battleData_pokemonBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemonBuilder()..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon._(
      {required this.G__typename,
      required this.name,
      required this.form,
      required this.imageLargeUrl,
      required this.statusA,
      required this.statusB,
      required this.statusC,
      required this.statusD,
      required this.statusH,
      required this.statusS,
      required this.types,
      required this.url,
      required this.battleData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOneBattleDataData_battleData_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOneBattleDataData_battleData_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GOneBattleDataData_battleData_pokemon', 'form');
    BuiltValueNullFieldError.checkNotNull(imageLargeUrl,
        r'GOneBattleDataData_battleData_pokemon', 'imageLargeUrl');
    BuiltValueNullFieldError.checkNotNull(
        statusA, r'GOneBattleDataData_battleData_pokemon', 'statusA');
    BuiltValueNullFieldError.checkNotNull(
        statusB, r'GOneBattleDataData_battleData_pokemon', 'statusB');
    BuiltValueNullFieldError.checkNotNull(
        statusC, r'GOneBattleDataData_battleData_pokemon', 'statusC');
    BuiltValueNullFieldError.checkNotNull(
        statusD, r'GOneBattleDataData_battleData_pokemon', 'statusD');
    BuiltValueNullFieldError.checkNotNull(
        statusH, r'GOneBattleDataData_battleData_pokemon', 'statusH');
    BuiltValueNullFieldError.checkNotNull(
        statusS, r'GOneBattleDataData_battleData_pokemon', 'statusS');
    BuiltValueNullFieldError.checkNotNull(
        types, r'GOneBattleDataData_battleData_pokemon', 'types');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GOneBattleDataData_battleData_pokemon', 'url');
    BuiltValueNullFieldError.checkNotNull(
        battleData, r'GOneBattleDataData_battleData_pokemon', 'battleData');
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
        name == other.name &&
        form == other.form &&
        imageLargeUrl == other.imageLargeUrl &&
        statusA == other.statusA &&
        statusB == other.statusB &&
        statusC == other.statusC &&
        statusD == other.statusD &&
        statusH == other.statusH &&
        statusS == other.statusS &&
        types == other.types &&
        url == other.url &&
        battleData == other.battleData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jc(_$hash, imageLargeUrl.hashCode);
    _$hash = $jc(_$hash, statusA.hashCode);
    _$hash = $jc(_$hash, statusB.hashCode);
    _$hash = $jc(_$hash, statusC.hashCode);
    _$hash = $jc(_$hash, statusD.hashCode);
    _$hash = $jc(_$hash, statusH.hashCode);
    _$hash = $jc(_$hash, statusS.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, battleData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('form', form)
          ..add('imageLargeUrl', imageLargeUrl)
          ..add('statusA', statusA)
          ..add('statusB', statusB)
          ..add('statusC', statusC)
          ..add('statusD', statusD)
          ..add('statusH', statusH)
          ..add('statusS', statusS)
          ..add('types', types)
          ..add('url', url)
          ..add('battleData', battleData))
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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  String? _imageLargeUrl;
  String? get imageLargeUrl => _$this._imageLargeUrl;
  set imageLargeUrl(String? imageLargeUrl) =>
      _$this._imageLargeUrl = imageLargeUrl;

  int? _statusA;
  int? get statusA => _$this._statusA;
  set statusA(int? statusA) => _$this._statusA = statusA;

  int? _statusB;
  int? get statusB => _$this._statusB;
  set statusB(int? statusB) => _$this._statusB = statusB;

  int? _statusC;
  int? get statusC => _$this._statusC;
  set statusC(int? statusC) => _$this._statusC = statusC;

  int? _statusD;
  int? get statusD => _$this._statusD;
  set statusD(int? statusD) => _$this._statusD = statusD;

  int? _statusH;
  int? get statusH => _$this._statusH;
  set statusH(int? statusH) => _$this._statusH = statusH;

  int? _statusS;
  int? get statusS => _$this._statusS;
  set statusS(int? statusS) => _$this._statusS = statusS;

  ListBuilder<GOneBattleDataData_battleData_pokemon_types?>? _types;
  ListBuilder<GOneBattleDataData_battleData_pokemon_types?> get types =>
      _$this._types ??=
          new ListBuilder<GOneBattleDataData_battleData_pokemon_types?>();
  set types(ListBuilder<GOneBattleDataData_battleData_pokemon_types?>? types) =>
      _$this._types = types;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ListBuilder<GOneBattleDataData_battleData_pokemon_battleData?>? _battleData;
  ListBuilder<GOneBattleDataData_battleData_pokemon_battleData?>
      get battleData => _$this._battleData ??=
          new ListBuilder<GOneBattleDataData_battleData_pokemon_battleData?>();
  set battleData(
          ListBuilder<GOneBattleDataData_battleData_pokemon_battleData?>?
              battleData) =>
      _$this._battleData = battleData;

  GOneBattleDataData_battleData_pokemonBuilder() {
    GOneBattleDataData_battleData_pokemon._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _form = $v.form;
      _imageLargeUrl = $v.imageLargeUrl;
      _statusA = $v.statusA;
      _statusB = $v.statusB;
      _statusC = $v.statusC;
      _statusD = $v.statusD;
      _statusH = $v.statusH;
      _statusS = $v.statusS;
      _types = $v.types.toBuilder();
      _url = $v.url;
      _battleData = $v.battleData.toBuilder();
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
    _$GOneBattleDataData_battleData_pokemon _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_pokemon._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GOneBattleDataData_battleData_pokemon', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GOneBattleDataData_battleData_pokemon', 'name'),
              form: BuiltValueNullFieldError.checkNotNull(
                  form, r'GOneBattleDataData_battleData_pokemon', 'form'),
              imageLargeUrl: BuiltValueNullFieldError.checkNotNull(
                  imageLargeUrl,
                  r'GOneBattleDataData_battleData_pokemon',
                  'imageLargeUrl'),
              statusA: BuiltValueNullFieldError.checkNotNull(
                  statusA, r'GOneBattleDataData_battleData_pokemon', 'statusA'),
              statusB: BuiltValueNullFieldError.checkNotNull(
                  statusB, r'GOneBattleDataData_battleData_pokemon', 'statusB'),
              statusC: BuiltValueNullFieldError.checkNotNull(
                  statusC, r'GOneBattleDataData_battleData_pokemon', 'statusC'),
              statusD: BuiltValueNullFieldError.checkNotNull(statusD, r'GOneBattleDataData_battleData_pokemon', 'statusD'),
              statusH: BuiltValueNullFieldError.checkNotNull(statusH, r'GOneBattleDataData_battleData_pokemon', 'statusH'),
              statusS: BuiltValueNullFieldError.checkNotNull(statusS, r'GOneBattleDataData_battleData_pokemon', 'statusS'),
              types: types.build(),
              url: BuiltValueNullFieldError.checkNotNull(url, r'GOneBattleDataData_battleData_pokemon', 'url'),
              battleData: battleData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        types.build();

        _$failedField = 'battleData';
        battleData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_pokemon',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_types
    extends GOneBattleDataData_battleData_pokemon_types {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GOneBattleDataData_battleData_pokemon_types(
          [void Function(GOneBattleDataData_battleData_pokemon_typesBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_typesBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_types._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_pokemon_types', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOneBattleDataData_battleData_pokemon_types', 'name');
  }

  @override
  GOneBattleDataData_battleData_pokemon_types rebuild(
          void Function(GOneBattleDataData_battleData_pokemon_typesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_typesBuilder toBuilder() =>
      new GOneBattleDataData_battleData_pokemon_typesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_pokemon_types &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon_types')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_typesBuilder
    implements
        Builder<GOneBattleDataData_battleData_pokemon_types,
            GOneBattleDataData_battleData_pokemon_typesBuilder> {
  _$GOneBattleDataData_battleData_pokemon_types? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GOneBattleDataData_battleData_pokemon_typesBuilder() {
    GOneBattleDataData_battleData_pokemon_types._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_typesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_pokemon_types other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_pokemon_types;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_pokemon_typesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_types build() => _build();

  _$GOneBattleDataData_battleData_pokemon_types _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_pokemon_types._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOneBattleDataData_battleData_pokemon_types', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GOneBattleDataData_battleData_pokemon_types', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData
    extends GOneBattleDataData_battleData_pokemon_battleData {
  @override
  final String G__typename;
  @override
  final BuiltList<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility?>
      battleDataAbility;
  @override
  final BuiltList<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataItem?>
      battleDataItem;
  @override
  final BuiltList<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataMove?>
      battleDataMove;

  factory _$GOneBattleDataData_battleData_pokemon_battleData(
          [void Function(
                  GOneBattleDataData_battleData_pokemon_battleDataBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_battleDataBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_battleData._(
      {required this.G__typename,
      required this.battleDataAbility,
      required this.battleDataItem,
      required this.battleDataMove})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOneBattleDataData_battleData_pokemon_battleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        battleDataAbility,
        r'GOneBattleDataData_battleData_pokemon_battleData',
        'battleDataAbility');
    BuiltValueNullFieldError.checkNotNull(battleDataItem,
        r'GOneBattleDataData_battleData_pokemon_battleData', 'battleDataItem');
    BuiltValueNullFieldError.checkNotNull(battleDataMove,
        r'GOneBattleDataData_battleData_pokemon_battleData', 'battleDataMove');
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData rebuild(
          void Function(GOneBattleDataData_battleData_pokemon_battleDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_battleDataBuilder toBuilder() =>
      new GOneBattleDataData_battleData_pokemon_battleDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataData_battleData_pokemon_battleData &&
        G__typename == other.G__typename &&
        battleDataAbility == other.battleDataAbility &&
        battleDataItem == other.battleDataItem &&
        battleDataMove == other.battleDataMove;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, battleDataAbility.hashCode);
    _$hash = $jc(_$hash, battleDataItem.hashCode);
    _$hash = $jc(_$hash, battleDataMove.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon_battleData')
          ..add('G__typename', G__typename)
          ..add('battleDataAbility', battleDataAbility)
          ..add('battleDataItem', battleDataItem)
          ..add('battleDataMove', battleDataMove))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_battleDataBuilder
    implements
        Builder<GOneBattleDataData_battleData_pokemon_battleData,
            GOneBattleDataData_battleData_pokemon_battleDataBuilder> {
  _$GOneBattleDataData_battleData_pokemon_battleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility?>?
      _battleDataAbility;
  ListBuilder<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility?>
      get battleDataAbility => _$this._battleDataAbility ??= new ListBuilder<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility?>();
  set battleDataAbility(
          ListBuilder<
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility?>?
              battleDataAbility) =>
      _$this._battleDataAbility = battleDataAbility;

  ListBuilder<GOneBattleDataData_battleData_pokemon_battleData_battleDataItem?>?
      _battleDataItem;
  ListBuilder<GOneBattleDataData_battleData_pokemon_battleData_battleDataItem?>
      get battleDataItem => _$this._battleDataItem ??= new ListBuilder<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataItem?>();
  set battleDataItem(
          ListBuilder<
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem?>?
              battleDataItem) =>
      _$this._battleDataItem = battleDataItem;

  ListBuilder<GOneBattleDataData_battleData_pokemon_battleData_battleDataMove?>?
      _battleDataMove;
  ListBuilder<GOneBattleDataData_battleData_pokemon_battleData_battleDataMove?>
      get battleDataMove => _$this._battleDataMove ??= new ListBuilder<
          GOneBattleDataData_battleData_pokemon_battleData_battleDataMove?>();
  set battleDataMove(
          ListBuilder<
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove?>?
              battleDataMove) =>
      _$this._battleDataMove = battleDataMove;

  GOneBattleDataData_battleData_pokemon_battleDataBuilder() {
    GOneBattleDataData_battleData_pokemon_battleData._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_battleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _battleDataAbility = $v.battleDataAbility.toBuilder();
      _battleDataItem = $v.battleDataItem.toBuilder();
      _battleDataMove = $v.battleDataMove.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataData_battleData_pokemon_battleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataData_battleData_pokemon_battleData;
  }

  @override
  void update(
      void Function(GOneBattleDataData_battleData_pokemon_battleDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData build() => _build();

  _$GOneBattleDataData_battleData_pokemon_battleData _build() {
    _$GOneBattleDataData_battleData_pokemon_battleData _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_pokemon_battleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_pokemon_battleData',
                  'G__typename'),
              battleDataAbility: battleDataAbility.build(),
              battleDataItem: battleDataItem.build(),
              battleDataMove: battleDataMove.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'battleDataAbility';
        battleDataAbility.build();
        _$failedField = 'battleDataItem';
        battleDataItem.build();
        _$failedField = 'battleDataMove';
        battleDataMove.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_pokemon_battleData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
    extends GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
      ability;

  factory _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility(
          [void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility._(
      {required this.G__typename, required this.rate, required this.ability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility',
        'rate');
    BuiltValueNullFieldError.checkNotNull(
        ability,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility',
        'ability');
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility rebuild(
          void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder
      toBuilder() =>
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility &&
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
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('ability', ability))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder
    implements
        Builder<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder> {
  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder?
      _ability;
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder
      get ability => _$this._ability ??=
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder();
  set ability(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder?
              ability) =>
      _$this._ability = ability;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder() {
    GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
        ._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder
      get _$this {
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
  void replace(
      GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_pokemon_battleData_battleDataAbilityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility build() =>
      _build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
      _build() {
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
        _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(
                  rate,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility',
                  'rate'),
              ability: ability.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ability';
        ability.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
    extends GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String id;

  factory _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability(
          [void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability._(
      {required this.G__typename, required this.name, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability',
        'id');
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
      rebuild(
              void Function(
                      GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder
      toBuilder() =>
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability &&
        G__typename == other.G__typename &&
        name == other.name &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('id', id))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder
    implements
        Builder<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder> {
  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder() {
    GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
        ._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_abilityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
      build() => _build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
      _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability',
                'name'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataAbility_ability',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem
    extends GOneBattleDataData_battleData_pokemon_battleData_battleDataItem {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final String id;
  @override
  final GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
      Item;

  factory _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem(
          [void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem._(
      {required this.G__typename,
      required this.rate,
      required this.id,
      required this.Item})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
        'rate');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        Item,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
        'Item');
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem rebuild(
          void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder
      toBuilder() =>
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GOneBattleDataData_battleData_pokemon_battleData_battleDataItem &&
        G__typename == other.G__typename &&
        rate == other.rate &&
        id == other.id &&
        Item == other.Item;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, Item.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('id', id)
          ..add('Item', Item))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder
    implements
        Builder<GOneBattleDataData_battleData_pokemon_battleData_battleDataItem,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder> {
  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder?
      _Item;
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder
      get Item => _$this._Item ??=
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder();
  set Item(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder?
              Item) =>
      _$this._Item = Item;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder() {
    GOneBattleDataData_battleData_pokemon_battleData_battleDataItem
        ._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rate = $v.rate;
      _id = $v.id;
      _Item = $v.Item.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GOneBattleDataData_battleData_pokemon_battleData_battleDataItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_pokemon_battleData_battleDataItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem build() =>
      _build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem _build() {
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(
                  rate,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
                  'rate'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
                  'id'),
              Item: Item.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Item';
        Item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
    extends GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String imageSmallUrl;

  factory _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item(
          [void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item._(
      {required this.G__typename,
      required this.name,
      required this.imageSmallUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        imageSmallUrl,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item',
        'imageSmallUrl');
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item rebuild(
          void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder
      toBuilder() =>
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item &&
        G__typename == other.G__typename &&
        name == other.name &&
        imageSmallUrl == other.imageSmallUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imageSmallUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('imageSmallUrl', imageSmallUrl))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder
    implements
        Builder<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder> {
  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageSmallUrl;
  String? get imageSmallUrl => _$this._imageSmallUrl;
  set imageSmallUrl(String? imageSmallUrl) =>
      _$this._imageSmallUrl = imageSmallUrl;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder() {
    GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
        ._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _imageSmallUrl = $v.imageSmallUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_ItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
      build() => _build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
      _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item',
                'name'),
            imageSmallUrl: BuiltValueNullFieldError.checkNotNull(
                imageSmallUrl,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataItem_Item',
                'imageSmallUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove
    extends GOneBattleDataData_battleData_pokemon_battleData_battleDataMove {
  @override
  final String G__typename;
  @override
  final double rate;
  @override
  final GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
      move;
  @override
  final String id;

  factory _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove(
          [void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove._(
      {required this.G__typename,
      required this.rate,
      required this.move,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
        'rate');
    BuiltValueNullFieldError.checkNotNull(
        move,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
        'move');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
        'id');
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove rebuild(
          void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder
      toBuilder() =>
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GOneBattleDataData_battleData_pokemon_battleData_battleDataMove &&
        G__typename == other.G__typename &&
        rate == other.rate &&
        move == other.move &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, move.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove')
          ..add('G__typename', G__typename)
          ..add('rate', rate)
          ..add('move', move)
          ..add('id', id))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder
    implements
        Builder<GOneBattleDataData_battleData_pokemon_battleData_battleDataMove,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder> {
  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder?
      _move;
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder
      get move => _$this._move ??=
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder();
  set move(
          GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder?
              move) =>
      _$this._move = move;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder() {
    GOneBattleDataData_battleData_pokemon_battleData_battleDataMove
        ._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rate = $v.rate;
      _move = $v.move.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GOneBattleDataData_battleData_pokemon_battleData_battleDataMove other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_pokemon_battleData_battleDataMoveBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove build() =>
      _build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove _build() {
    _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove _$result;
    try {
      _$result = _$v ??
          new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
                  'G__typename'),
              rate: BuiltValueNullFieldError.checkNotNull(
                  rate,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
                  'rate'),
              move: move.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
                  'id'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'move';
        move.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
    extends GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move(
          [void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder)?
              updates]) =>
      (new GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder()
            ..update(updates))
          ._build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move',
        'name');
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move rebuild(
          void Function(
                  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder
      toBuilder() =>
          new GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder
    implements
        Builder<
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move,
            GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder> {
  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder() {
    GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
        ._initializeBuilder(this);
  }

  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move;
  }

  @override
  void update(
      void Function(
              GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_moveBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
      build() => _build();

  _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
      _build() {
    final _$result = _$v ??
        new _$GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GOneBattleDataData_battleData_pokemon_battleData_battleDataMove_move',
                'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

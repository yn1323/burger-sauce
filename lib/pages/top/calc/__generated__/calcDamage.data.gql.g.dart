// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calcDamage.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDamageCalcSummaryData> _$gDamageCalcSummaryDataSerializer =
    new _$GDamageCalcSummaryDataSerializer();
Serializer<GDamageCalcSummaryData_battleDatasLatest>
    _$gDamageCalcSummaryDataBattleDatasLatestSerializer =
    new _$GDamageCalcSummaryData_battleDatasLatestSerializer();
Serializer<GDamageCalcSummaryData_battleDatasLatest_battleDatas>
    _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasSerializer =
    new _$GDamageCalcSummaryData_battleDatasLatest_battleDatasSerializer();
Serializer<
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>
    _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataAbilitySerializer =
    new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilitySerializer();
Serializer<GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>
    _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataItemSerializer =
    new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemSerializer();
Serializer<GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>
    _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataMoveSerializer =
    new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveSerializer();
Serializer<
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>
    _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataNatureSerializer =
    new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureSerializer();
Serializer<
        GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>
    _$gDamageCalcSummaryDataBattleDatasLatestBattleDatasBattleDataTerastalSerializer =
    new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalSerializer();
Serializer<GDamageCalcSummaryData_pokemons>
    _$gDamageCalcSummaryDataPokemonsSerializer =
    new _$GDamageCalcSummaryData_pokemonsSerializer();
Serializer<GDamageCalcSummaryData_abilities>
    _$gDamageCalcSummaryDataAbilitiesSerializer =
    new _$GDamageCalcSummaryData_abilitiesSerializer();
Serializer<GDamageCalcSummaryData_moves>
    _$gDamageCalcSummaryDataMovesSerializer =
    new _$GDamageCalcSummaryData_movesSerializer();
Serializer<GDamageCalcSummaryData_attackTypes>
    _$gDamageCalcSummaryDataAttackTypesSerializer =
    new _$GDamageCalcSummaryData_attackTypesSerializer();
Serializer<GDamageCalcSummaryData_natures>
    _$gDamageCalcSummaryDataNaturesSerializer =
    new _$GDamageCalcSummaryData_naturesSerializer();
Serializer<GDamageCalcSummaryData_items>
    _$gDamageCalcSummaryDataItemsSerializer =
    new _$GDamageCalcSummaryData_itemsSerializer();
Serializer<GDamageCalcSummaryData_types>
    _$gDamageCalcSummaryDataTypesSerializer =
    new _$GDamageCalcSummaryData_typesSerializer();
Serializer<GDamageCalcSummaryData_myDamageCalcIndex>
    _$gDamageCalcSummaryDataMyDamageCalcIndexSerializer =
    new _$GDamageCalcSummaryData_myDamageCalcIndexSerializer();
Serializer<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>
    _$gDamageCalcSummaryDataMyDamageCalcIndexMyDamageCalcSerializer =
    new _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcSerializer();
Serializer<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>
    _$gDamageCalcSummaryDataMyDamageCalcIndexMyDamageCalcMovesSerializer =
    new _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesSerializer();
Serializer<GDamageCalcDetailData> _$gDamageCalcDetailDataSerializer =
    new _$GDamageCalcDetailDataSerializer();
Serializer<GDamageCalcDetailData_pokemon>
    _$gDamageCalcDetailDataPokemonSerializer =
    new _$GDamageCalcDetailData_pokemonSerializer();
Serializer<GDamageCalcDetailData_pokemon_moves>
    _$gDamageCalcDetailDataPokemonMovesSerializer =
    new _$GDamageCalcDetailData_pokemon_movesSerializer();
Serializer<GDamageCalcDetailData_pokemon_types>
    _$gDamageCalcDetailDataPokemonTypesSerializer =
    new _$GDamageCalcDetailData_pokemon_typesSerializer();
Serializer<GDamageCalcDetailData_pokemon_abilities>
    _$gDamageCalcDetailDataPokemonAbilitiesSerializer =
    new _$GDamageCalcDetailData_pokemon_abilitiesSerializer();

class _$GDamageCalcSummaryDataSerializer
    implements StructuredSerializer<GDamageCalcSummaryData> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData,
    _$GDamageCalcSummaryData
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemons',
      serializers.serialize(object.pokemons,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GDamageCalcSummaryData_pokemons)])),
      'abilities',
      serializers.serialize(object.abilities,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GDamageCalcSummaryData_abilities)])),
      'moves',
      serializers.serialize(object.moves,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GDamageCalcSummaryData_moves)])),
      'attackTypes',
      serializers.serialize(object.attackTypes,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GDamageCalcSummaryData_attackTypes)])),
      'natures',
      serializers.serialize(object.natures,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GDamageCalcSummaryData_natures)])),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GDamageCalcSummaryData_items)])),
      'types',
      serializers.serialize(object.types,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GDamageCalcSummaryData_types)])),
    ];
    Object? value;
    value = object.battleDatasLatest;
    if (value != null) {
      result
        ..add('battleDatasLatest')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GDamageCalcSummaryData_battleDatasLatest)));
    }
    value = object.myDamageCalcIndex;
    if (value != null) {
      result
        ..add('myDamageCalcIndex')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GDamageCalcSummaryData_myDamageCalcIndex)));
    }
    return result;
  }

  @override
  GDamageCalcSummaryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryDataBuilder();

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
        case 'battleDatasLatest':
          result.battleDatasLatest.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GDamageCalcSummaryData_battleDatasLatest))!
              as GDamageCalcSummaryData_battleDatasLatest);
          break;
        case 'pokemons':
          result.pokemons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcSummaryData_pokemons)
              ]))! as BuiltList<Object?>);
          break;
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcSummaryData_abilities)
              ]))! as BuiltList<Object?>);
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcSummaryData_moves)
              ]))! as BuiltList<Object?>);
          break;
        case 'attackTypes':
          result.attackTypes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcSummaryData_attackTypes)
              ]))! as BuiltList<Object?>);
          break;
        case 'natures':
          result.natures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcSummaryData_natures)
              ]))! as BuiltList<Object?>);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcSummaryData_items)
              ]))! as BuiltList<Object?>);
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcSummaryData_types)
              ]))! as BuiltList<Object?>);
          break;
        case 'myDamageCalcIndex':
          result.myDamageCalcIndex.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GDamageCalcSummaryData_myDamageCalcIndex))!
              as GDamageCalcSummaryData_myDamageCalcIndex);
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_battleDatasLatestSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_battleDatasLatest> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_battleDatasLatest,
    _$GDamageCalcSummaryData_battleDatasLatest
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_battleDatasLatest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_battleDatasLatest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'battleDatas',
      serializers.serialize(object.battleDatas,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GDamageCalcSummaryData_battleDatasLatest_battleDatas)
          ])),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_battleDatasLatestBuilder();

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
        case 'battleDatas':
          result.battleDatas.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_battleDatasLatest_battleDatas)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatasSerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_battleDatasLatest_battleDatas,
    _$GDamageCalcSummaryData_battleDatasLatest_battleDatas
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_battleDatasLatest_battleDatas';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDamageCalcSummaryData_battleDatasLatest_battleDatas object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemonId',
      serializers.serialize(object.pokemonId,
          specifiedType: const FullType(String)),
      'battleDataAbility',
      serializers.serialize(object.battleDataAbility,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility)
          ])),
      'battleDataItem',
      serializers.serialize(object.battleDataItem,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem)
          ])),
      'battleDataMove',
      serializers.serialize(object.battleDataMove,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove)
          ])),
      'battleDataNature',
      serializers.serialize(object.battleDataNature,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature)
          ])),
      'battleDataTerastal',
      serializers.serialize(object.battleDataTerastal,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal)
          ])),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder();

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
        case 'pokemonId':
          result.pokemonId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'battleDataAbility':
          result.battleDataAbility.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataItem':
          result.battleDataItem.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataMove':
          result.battleDataMove.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataNature':
          result.battleDataNature.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature)
              ]))! as BuiltList<Object?>);
          break;
        case 'battleDataTerastal':
          result.battleDataTerastal.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilitySerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility,
    _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'abilityId',
      serializers.serialize(object.abilityId,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder();

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
        case 'abilityId':
          result.abilityId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemSerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem,
    _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'itemId',
      serializers.serialize(object.itemId,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder();

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
        case 'itemId':
          result.itemId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveSerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove,
    _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'moveId',
      serializers.serialize(object.moveId,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder();

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
        case 'moveId':
          result.moveId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureSerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature,
    _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'natureId',
      serializers.serialize(object.natureId,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder();

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
        case 'natureId':
          result.natureId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalSerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal,
    _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'typeId',
      serializers.serialize(object.typeId,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder();

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
        case 'typeId':
          result.typeId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_pokemonsSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_pokemons> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_pokemons,
    _$GDamageCalcSummaryData_pokemons
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_pokemons';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_pokemons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
      'height',
      serializers.serialize(object.height,
          specifiedType: const FullType(double)),
      'weight',
      serializers.serialize(object.weight,
          specifiedType: const FullType(double)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
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
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_pokemons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_pokemonsBuilder();

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
        case 'form':
          result.form = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_abilitiesSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_abilities> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_abilities,
    _$GDamageCalcSummaryData_abilities
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_abilities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_abilities object,
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
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_abilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_abilitiesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_movesSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_moves> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_moves,
    _$GDamageCalcSummaryData_moves
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_moves';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_moves object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'accuracy',
      serializers.serialize(object.accuracy,
          specifiedType: const FullType(int)),
      'detail',
      serializers.serialize(object.detail,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'isBullet',
      serializers.serialize(object.isBullet,
          specifiedType: const FullType(bool)),
      'isChangeable',
      serializers.serialize(object.isChangeable,
          specifiedType: const FullType(bool)),
      'isContact',
      serializers.serialize(object.isContact,
          specifiedType: const FullType(bool)),
      'isCut',
      serializers.serialize(object.isCut, specifiedType: const FullType(bool)),
      'isDance',
      serializers.serialize(object.isDance,
          specifiedType: const FullType(bool)),
      'isDelay',
      serializers.serialize(object.isDelay,
          specifiedType: const FullType(bool)),
      'isJaw',
      serializers.serialize(object.isJaw, specifiedType: const FullType(bool)),
      'isMultipleAttack',
      serializers.serialize(object.isMultipleAttack,
          specifiedType: const FullType(bool)),
      'isMustCritical',
      serializers.serialize(object.isMustCritical,
          specifiedType: const FullType(bool)),
      'isPowder',
      serializers.serialize(object.isPowder,
          specifiedType: const FullType(bool)),
      'isQuick',
      serializers.serialize(object.isQuick,
          specifiedType: const FullType(bool)),
      'isPunch',
      serializers.serialize(object.isPunch,
          specifiedType: const FullType(bool)),
      'isSound',
      serializers.serialize(object.isSound,
          specifiedType: const FullType(bool)),
      'isWave',
      serializers.serialize(object.isWave, specifiedType: const FullType(bool)),
      'isWind',
      serializers.serialize(object.isWind, specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'power',
      serializers.serialize(object.power, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.attackTypeId;
    if (value != null) {
      result
        ..add('attackTypeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeId;
    if (value != null) {
      result
        ..add('typeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GDamageCalcSummaryData_moves deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_movesBuilder();

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
        case 'accuracy':
          result.accuracy = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'attackTypeId':
          result.attackTypeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isBullet':
          result.isBullet = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isChangeable':
          result.isChangeable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isContact':
          result.isContact = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isCut':
          result.isCut = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isDance':
          result.isDance = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isDelay':
          result.isDelay = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isJaw':
          result.isJaw = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isMultipleAttack':
          result.isMultipleAttack = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isMustCritical':
          result.isMustCritical = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isPowder':
          result.isPowder = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isQuick':
          result.isQuick = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isPunch':
          result.isPunch = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isSound':
          result.isSound = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isWave':
          result.isWave = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isWind':
          result.isWind = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'power':
          result.power = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'typeId':
          result.typeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_attackTypesSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_attackTypes> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_attackTypes,
    _$GDamageCalcSummaryData_attackTypes
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_attackTypes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_attackTypes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_attackTypes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_attackTypesBuilder();

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
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
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

class _$GDamageCalcSummaryData_naturesSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_natures> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_natures,
    _$GDamageCalcSummaryData_natures
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_natures';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_natures object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'decrease',
      serializers.serialize(object.decrease,
          specifiedType: const FullType(String)),
      'increase',
      serializers.serialize(object.increase,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_natures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_naturesBuilder();

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
        case 'decrease':
          result.decrease = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'increase':
          result.increase = serializers.deserialize(value,
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

class _$GDamageCalcSummaryData_itemsSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_items> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_items,
    _$GDamageCalcSummaryData_items
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'detail',
      serializers.serialize(object.detail,
          specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_itemsBuilder();

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
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
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
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_typesSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_types> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_types,
    _$GDamageCalcSummaryData_types
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_types';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_types object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'terastalImageUrl',
      serializers.serialize(object.terastalImageUrl,
          specifiedType: const FullType(String)),
      'textImageUrl',
      serializers.serialize(object.textImageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_types deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_typesBuilder();

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
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'terastalImageUrl':
          result.terastalImageUrl = serializers.deserialize(value,
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

class _$GDamageCalcSummaryData_myDamageCalcIndexSerializer
    implements StructuredSerializer<GDamageCalcSummaryData_myDamageCalcIndex> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_myDamageCalcIndex,
    _$GDamageCalcSummaryData_myDamageCalcIndex
  ];
  @override
  final String wireName = 'GDamageCalcSummaryData_myDamageCalcIndex';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryData_myDamageCalcIndex object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'myDamageCalc',
      serializers.serialize(object.myDamageCalc,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc)
          ])),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryData_myDamageCalcIndexBuilder();

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
        case 'myDamageCalc':
          result.myDamageCalc.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcSerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc,
    _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'client',
      serializers.serialize(object.client,
          specifiedType: const FullType(String)),
      'evA',
      serializers.serialize(object.evA, specifiedType: const FullType(int)),
      'evB',
      serializers.serialize(object.evB, specifiedType: const FullType(int)),
      'evC',
      serializers.serialize(object.evC, specifiedType: const FullType(int)),
      'evD',
      serializers.serialize(object.evD, specifiedType: const FullType(int)),
      'evH',
      serializers.serialize(object.evH, specifiedType: const FullType(int)),
      'evS',
      serializers.serialize(object.evS, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'ivA',
      serializers.serialize(object.ivA, specifiedType: const FullType(int)),
      'ivB',
      serializers.serialize(object.ivB, specifiedType: const FullType(int)),
      'ivC',
      serializers.serialize(object.ivC, specifiedType: const FullType(int)),
      'ivD',
      serializers.serialize(object.ivD, specifiedType: const FullType(int)),
      'ivH',
      serializers.serialize(object.ivH, specifiedType: const FullType(int)),
      'ivS',
      serializers.serialize(object.ivS, specifiedType: const FullType(int)),
      'rankA',
      serializers.serialize(object.rankA, specifiedType: const FullType(int)),
      'rankB',
      serializers.serialize(object.rankB, specifiedType: const FullType(int)),
      'rankC',
      serializers.serialize(object.rankC, specifiedType: const FullType(int)),
      'rankD',
      serializers.serialize(object.rankD, specifiedType: const FullType(int)),
      'rankS',
      serializers.serialize(object.rankS, specifiedType: const FullType(int)),
      'side',
      serializers.serialize(object.side, specifiedType: const FullType(String)),
      'pokemonId',
      serializers.serialize(object.pokemonId,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
      'natureId',
      serializers.serialize(object.natureId,
          specifiedType: const FullType(String)),
      'moves',
      serializers.serialize(object.moves,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves)
          ])),
    ];
    Object? value;
    value = object.abilityId;
    if (value != null) {
      result
        ..add('abilityId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemId;
    if (value != null) {
      result
        ..add('itemId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.terastalId;
    if (value != null) {
      result
        ..add('terastalId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder();

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
        case 'client':
          result.client = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'abilityId':
          result.abilityId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'evA':
          result.evA = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'evB':
          result.evB = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'evC':
          result.evC = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'evD':
          result.evD = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'evH':
          result.evH = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'evS':
          result.evS = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'itemId':
          result.itemId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ivA':
          result.ivA = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'ivB':
          result.ivB = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'ivC':
          result.ivC = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'ivD':
          result.ivD = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'ivH':
          result.ivH = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'ivS':
          result.ivS = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rankA':
          result.rankA = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rankB':
          result.rankB = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rankC':
          result.rankC = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rankD':
          result.rankD = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rankS':
          result.rankS = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'side':
          result.side = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'terastalId':
          result.terastalId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pokemonId':
          result.pokemonId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'natureId':
          result.natureId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesSerializer
    implements
        StructuredSerializer<
            GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves,
    _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves
  ];
  @override
  final String wireName =
      'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GDamageCalcDetailDataSerializer
    implements StructuredSerializer<GDamageCalcDetailData> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcDetailData,
    _$GDamageCalcDetailData
  ];
  @override
  final String wireName = 'GDamageCalcDetailData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcDetailData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pokemon;
    if (value != null) {
      result
        ..add('pokemon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDamageCalcDetailData_pokemon)));
    }
    return result;
  }

  @override
  GDamageCalcDetailData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcDetailDataBuilder();

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
                  specifiedType: const FullType(GDamageCalcDetailData_pokemon))!
              as GDamageCalcDetailData_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcDetailData_pokemonSerializer
    implements StructuredSerializer<GDamageCalcDetailData_pokemon> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcDetailData_pokemon,
    _$GDamageCalcDetailData_pokemon
  ];
  @override
  final String wireName = 'GDamageCalcDetailData_pokemon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcDetailData_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'moves',
      serializers.serialize(object.moves,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GDamageCalcDetailData_pokemon_moves)])),
      'types',
      serializers.serialize(object.types,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GDamageCalcDetailData_pokemon_types)])),
      'abilities',
      serializers.serialize(object.abilities,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GDamageCalcDetailData_pokemon_abilities)])),
    ];

    return result;
  }

  @override
  GDamageCalcDetailData_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcDetailData_pokemonBuilder();

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
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcDetailData_pokemon_moves)
              ]))! as BuiltList<Object?>);
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcDetailData_pokemon_types)
              ]))! as BuiltList<Object?>);
          break;
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GDamageCalcDetailData_pokemon_abilities)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcDetailData_pokemon_movesSerializer
    implements StructuredSerializer<GDamageCalcDetailData_pokemon_moves> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcDetailData_pokemon_moves,
    _$GDamageCalcDetailData_pokemon_moves
  ];
  @override
  final String wireName = 'GDamageCalcDetailData_pokemon_moves';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcDetailData_pokemon_moves object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcDetailData_pokemon_moves deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcDetailData_pokemon_movesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GDamageCalcDetailData_pokemon_typesSerializer
    implements StructuredSerializer<GDamageCalcDetailData_pokemon_types> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcDetailData_pokemon_types,
    _$GDamageCalcDetailData_pokemon_types
  ];
  @override
  final String wireName = 'GDamageCalcDetailData_pokemon_types';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcDetailData_pokemon_types object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcDetailData_pokemon_types deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcDetailData_pokemon_typesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GDamageCalcDetailData_pokemon_abilitiesSerializer
    implements StructuredSerializer<GDamageCalcDetailData_pokemon_abilities> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcDetailData_pokemon_abilities,
    _$GDamageCalcDetailData_pokemon_abilities
  ];
  @override
  final String wireName = 'GDamageCalcDetailData_pokemon_abilities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcDetailData_pokemon_abilities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDamageCalcDetailData_pokemon_abilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcDetailData_pokemon_abilitiesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryData extends GDamageCalcSummaryData {
  @override
  final String G__typename;
  @override
  final GDamageCalcSummaryData_battleDatasLatest? battleDatasLatest;
  @override
  final BuiltList<GDamageCalcSummaryData_pokemons> pokemons;
  @override
  final BuiltList<GDamageCalcSummaryData_abilities> abilities;
  @override
  final BuiltList<GDamageCalcSummaryData_moves> moves;
  @override
  final BuiltList<GDamageCalcSummaryData_attackTypes> attackTypes;
  @override
  final BuiltList<GDamageCalcSummaryData_natures> natures;
  @override
  final BuiltList<GDamageCalcSummaryData_items> items;
  @override
  final BuiltList<GDamageCalcSummaryData_types> types;
  @override
  final GDamageCalcSummaryData_myDamageCalcIndex? myDamageCalcIndex;

  factory _$GDamageCalcSummaryData(
          [void Function(GDamageCalcSummaryDataBuilder)? updates]) =>
      (new GDamageCalcSummaryDataBuilder()..update(updates))._build();

  _$GDamageCalcSummaryData._(
      {required this.G__typename,
      this.battleDatasLatest,
      required this.pokemons,
      required this.abilities,
      required this.moves,
      required this.attackTypes,
      required this.natures,
      required this.items,
      required this.types,
      this.myDamageCalcIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemons, r'GDamageCalcSummaryData', 'pokemons');
    BuiltValueNullFieldError.checkNotNull(
        abilities, r'GDamageCalcSummaryData', 'abilities');
    BuiltValueNullFieldError.checkNotNull(
        moves, r'GDamageCalcSummaryData', 'moves');
    BuiltValueNullFieldError.checkNotNull(
        attackTypes, r'GDamageCalcSummaryData', 'attackTypes');
    BuiltValueNullFieldError.checkNotNull(
        natures, r'GDamageCalcSummaryData', 'natures');
    BuiltValueNullFieldError.checkNotNull(
        items, r'GDamageCalcSummaryData', 'items');
    BuiltValueNullFieldError.checkNotNull(
        types, r'GDamageCalcSummaryData', 'types');
  }

  @override
  GDamageCalcSummaryData rebuild(
          void Function(GDamageCalcSummaryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryDataBuilder toBuilder() =>
      new GDamageCalcSummaryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData &&
        G__typename == other.G__typename &&
        battleDatasLatest == other.battleDatasLatest &&
        pokemons == other.pokemons &&
        abilities == other.abilities &&
        moves == other.moves &&
        attackTypes == other.attackTypes &&
        natures == other.natures &&
        items == other.items &&
        types == other.types &&
        myDamageCalcIndex == other.myDamageCalcIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, battleDatasLatest.hashCode);
    _$hash = $jc(_$hash, pokemons.hashCode);
    _$hash = $jc(_$hash, abilities.hashCode);
    _$hash = $jc(_$hash, moves.hashCode);
    _$hash = $jc(_$hash, attackTypes.hashCode);
    _$hash = $jc(_$hash, natures.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, myDamageCalcIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData')
          ..add('G__typename', G__typename)
          ..add('battleDatasLatest', battleDatasLatest)
          ..add('pokemons', pokemons)
          ..add('abilities', abilities)
          ..add('moves', moves)
          ..add('attackTypes', attackTypes)
          ..add('natures', natures)
          ..add('items', items)
          ..add('types', types)
          ..add('myDamageCalcIndex', myDamageCalcIndex))
        .toString();
  }
}

class GDamageCalcSummaryDataBuilder
    implements Builder<GDamageCalcSummaryData, GDamageCalcSummaryDataBuilder> {
  _$GDamageCalcSummaryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDamageCalcSummaryData_battleDatasLatestBuilder? _battleDatasLatest;
  GDamageCalcSummaryData_battleDatasLatestBuilder get battleDatasLatest =>
      _$this._battleDatasLatest ??=
          new GDamageCalcSummaryData_battleDatasLatestBuilder();
  set battleDatasLatest(
          GDamageCalcSummaryData_battleDatasLatestBuilder? battleDatasLatest) =>
      _$this._battleDatasLatest = battleDatasLatest;

  ListBuilder<GDamageCalcSummaryData_pokemons>? _pokemons;
  ListBuilder<GDamageCalcSummaryData_pokemons> get pokemons =>
      _$this._pokemons ??= new ListBuilder<GDamageCalcSummaryData_pokemons>();
  set pokemons(ListBuilder<GDamageCalcSummaryData_pokemons>? pokemons) =>
      _$this._pokemons = pokemons;

  ListBuilder<GDamageCalcSummaryData_abilities>? _abilities;
  ListBuilder<GDamageCalcSummaryData_abilities> get abilities =>
      _$this._abilities ??= new ListBuilder<GDamageCalcSummaryData_abilities>();
  set abilities(ListBuilder<GDamageCalcSummaryData_abilities>? abilities) =>
      _$this._abilities = abilities;

  ListBuilder<GDamageCalcSummaryData_moves>? _moves;
  ListBuilder<GDamageCalcSummaryData_moves> get moves =>
      _$this._moves ??= new ListBuilder<GDamageCalcSummaryData_moves>();
  set moves(ListBuilder<GDamageCalcSummaryData_moves>? moves) =>
      _$this._moves = moves;

  ListBuilder<GDamageCalcSummaryData_attackTypes>? _attackTypes;
  ListBuilder<GDamageCalcSummaryData_attackTypes> get attackTypes =>
      _$this._attackTypes ??=
          new ListBuilder<GDamageCalcSummaryData_attackTypes>();
  set attackTypes(
          ListBuilder<GDamageCalcSummaryData_attackTypes>? attackTypes) =>
      _$this._attackTypes = attackTypes;

  ListBuilder<GDamageCalcSummaryData_natures>? _natures;
  ListBuilder<GDamageCalcSummaryData_natures> get natures =>
      _$this._natures ??= new ListBuilder<GDamageCalcSummaryData_natures>();
  set natures(ListBuilder<GDamageCalcSummaryData_natures>? natures) =>
      _$this._natures = natures;

  ListBuilder<GDamageCalcSummaryData_items>? _items;
  ListBuilder<GDamageCalcSummaryData_items> get items =>
      _$this._items ??= new ListBuilder<GDamageCalcSummaryData_items>();
  set items(ListBuilder<GDamageCalcSummaryData_items>? items) =>
      _$this._items = items;

  ListBuilder<GDamageCalcSummaryData_types>? _types;
  ListBuilder<GDamageCalcSummaryData_types> get types =>
      _$this._types ??= new ListBuilder<GDamageCalcSummaryData_types>();
  set types(ListBuilder<GDamageCalcSummaryData_types>? types) =>
      _$this._types = types;

  GDamageCalcSummaryData_myDamageCalcIndexBuilder? _myDamageCalcIndex;
  GDamageCalcSummaryData_myDamageCalcIndexBuilder get myDamageCalcIndex =>
      _$this._myDamageCalcIndex ??=
          new GDamageCalcSummaryData_myDamageCalcIndexBuilder();
  set myDamageCalcIndex(
          GDamageCalcSummaryData_myDamageCalcIndexBuilder? myDamageCalcIndex) =>
      _$this._myDamageCalcIndex = myDamageCalcIndex;

  GDamageCalcSummaryDataBuilder() {
    GDamageCalcSummaryData._initializeBuilder(this);
  }

  GDamageCalcSummaryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _battleDatasLatest = $v.battleDatasLatest?.toBuilder();
      _pokemons = $v.pokemons.toBuilder();
      _abilities = $v.abilities.toBuilder();
      _moves = $v.moves.toBuilder();
      _attackTypes = $v.attackTypes.toBuilder();
      _natures = $v.natures.toBuilder();
      _items = $v.items.toBuilder();
      _types = $v.types.toBuilder();
      _myDamageCalcIndex = $v.myDamageCalcIndex?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData;
  }

  @override
  void update(void Function(GDamageCalcSummaryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData build() => _build();

  _$GDamageCalcSummaryData _build() {
    _$GDamageCalcSummaryData _$result;
    try {
      _$result = _$v ??
          new _$GDamageCalcSummaryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDamageCalcSummaryData', 'G__typename'),
              battleDatasLatest: _battleDatasLatest?.build(),
              pokemons: pokemons.build(),
              abilities: abilities.build(),
              moves: moves.build(),
              attackTypes: attackTypes.build(),
              natures: natures.build(),
              items: items.build(),
              types: types.build(),
              myDamageCalcIndex: _myDamageCalcIndex?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'battleDatasLatest';
        _battleDatasLatest?.build();
        _$failedField = 'pokemons';
        pokemons.build();
        _$failedField = 'abilities';
        abilities.build();
        _$failedField = 'moves';
        moves.build();
        _$failedField = 'attackTypes';
        attackTypes.build();
        _$failedField = 'natures';
        natures.build();
        _$failedField = 'items';
        items.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'myDamageCalcIndex';
        _myDamageCalcIndex?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDamageCalcSummaryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest
    extends GDamageCalcSummaryData_battleDatasLatest {
  @override
  final String G__typename;
  @override
  final BuiltList<GDamageCalcSummaryData_battleDatasLatest_battleDatas>
      battleDatas;

  factory _$GDamageCalcSummaryData_battleDatasLatest(
          [void Function(GDamageCalcSummaryData_battleDatasLatestBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_battleDatasLatestBuilder()..update(updates))
          ._build();

  _$GDamageCalcSummaryData_battleDatasLatest._(
      {required this.G__typename, required this.battleDatas})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GDamageCalcSummaryData_battleDatasLatest', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(battleDatas,
        r'GDamageCalcSummaryData_battleDatasLatest', 'battleDatas');
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest rebuild(
          void Function(GDamageCalcSummaryData_battleDatasLatestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_battleDatasLatestBuilder toBuilder() =>
      new GDamageCalcSummaryData_battleDatasLatestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_battleDatasLatest &&
        G__typename == other.G__typename &&
        battleDatas == other.battleDatas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, battleDatas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_battleDatasLatest')
          ..add('G__typename', G__typename)
          ..add('battleDatas', battleDatas))
        .toString();
  }
}

class GDamageCalcSummaryData_battleDatasLatestBuilder
    implements
        Builder<GDamageCalcSummaryData_battleDatasLatest,
            GDamageCalcSummaryData_battleDatasLatestBuilder> {
  _$GDamageCalcSummaryData_battleDatasLatest? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GDamageCalcSummaryData_battleDatasLatest_battleDatas>?
      _battleDatas;
  ListBuilder<GDamageCalcSummaryData_battleDatasLatest_battleDatas>
      get battleDatas => _$this._battleDatas ??= new ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas>();
  set battleDatas(
          ListBuilder<GDamageCalcSummaryData_battleDatasLatest_battleDatas>?
              battleDatas) =>
      _$this._battleDatas = battleDatas;

  GDamageCalcSummaryData_battleDatasLatestBuilder() {
    GDamageCalcSummaryData_battleDatasLatest._initializeBuilder(this);
  }

  GDamageCalcSummaryData_battleDatasLatestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _battleDatas = $v.battleDatas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_battleDatasLatest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_battleDatasLatest;
  }

  @override
  void update(
      void Function(GDamageCalcSummaryData_battleDatasLatestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest build() => _build();

  _$GDamageCalcSummaryData_battleDatasLatest _build() {
    _$GDamageCalcSummaryData_battleDatasLatest _$result;
    try {
      _$result = _$v ??
          new _$GDamageCalcSummaryData_battleDatasLatest._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GDamageCalcSummaryData_battleDatasLatest', 'G__typename'),
              battleDatas: battleDatas.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'battleDatas';
        battleDatas.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDamageCalcSummaryData_battleDatasLatest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas
    extends GDamageCalcSummaryData_battleDatasLatest_battleDatas {
  @override
  final String G__typename;
  @override
  final String pokemonId;
  @override
  final BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>
      battleDataAbility;
  @override
  final BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>
      battleDataItem;
  @override
  final BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>
      battleDataMove;
  @override
  final BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>
      battleDataNature;
  @override
  final BuiltList<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>
      battleDataTerastal;

  factory _$GDamageCalcSummaryData_battleDatasLatest_battleDatas(
          [void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas._(
      {required this.G__typename,
      required this.pokemonId,
      required this.battleDataAbility,
      required this.battleDataItem,
      required this.battleDataMove,
      required this.battleDataNature,
      required this.battleDataTerastal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(pokemonId,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas', 'pokemonId');
    BuiltValueNullFieldError.checkNotNull(
        battleDataAbility,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
        'battleDataAbility');
    BuiltValueNullFieldError.checkNotNull(
        battleDataItem,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
        'battleDataItem');
    BuiltValueNullFieldError.checkNotNull(
        battleDataMove,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
        'battleDataMove');
    BuiltValueNullFieldError.checkNotNull(
        battleDataNature,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
        'battleDataNature');
    BuiltValueNullFieldError.checkNotNull(
        battleDataTerastal,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
        'battleDataTerastal');
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas rebuild(
          void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder toBuilder() =>
      new GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_battleDatasLatest_battleDatas &&
        G__typename == other.G__typename &&
        pokemonId == other.pokemonId &&
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
    _$hash = $jc(_$hash, pokemonId.hashCode);
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
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_battleDatasLatest_battleDatas')
          ..add('G__typename', G__typename)
          ..add('pokemonId', pokemonId)
          ..add('battleDataAbility', battleDataAbility)
          ..add('battleDataItem', battleDataItem)
          ..add('battleDataMove', battleDataMove)
          ..add('battleDataNature', battleDataNature)
          ..add('battleDataTerastal', battleDataTerastal))
        .toString();
  }
}

class GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder
    implements
        Builder<GDamageCalcSummaryData_battleDatasLatest_battleDatas,
            GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder> {
  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _pokemonId;
  String? get pokemonId => _$this._pokemonId;
  set pokemonId(String? pokemonId) => _$this._pokemonId = pokemonId;

  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>?
      _battleDataAbility;
  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>
      get battleDataAbility => _$this._battleDataAbility ??= new ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>();
  set battleDataAbility(
          ListBuilder<
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility>?
              battleDataAbility) =>
      _$this._battleDataAbility = battleDataAbility;

  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>?
      _battleDataItem;
  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>
      get battleDataItem => _$this._battleDataItem ??= new ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>();
  set battleDataItem(
          ListBuilder<
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>?
              battleDataItem) =>
      _$this._battleDataItem = battleDataItem;

  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>?
      _battleDataMove;
  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>
      get battleDataMove => _$this._battleDataMove ??= new ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>();
  set battleDataMove(
          ListBuilder<
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove>?
              battleDataMove) =>
      _$this._battleDataMove = battleDataMove;

  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>?
      _battleDataNature;
  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>
      get battleDataNature => _$this._battleDataNature ??= new ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>();
  set battleDataNature(
          ListBuilder<
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature>?
              battleDataNature) =>
      _$this._battleDataNature = battleDataNature;

  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>?
      _battleDataTerastal;
  ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>
      get battleDataTerastal => _$this._battleDataTerastal ??= new ListBuilder<
          GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>();
  set battleDataTerastal(
          ListBuilder<
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal>?
              battleDataTerastal) =>
      _$this._battleDataTerastal = battleDataTerastal;

  GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder() {
    GDamageCalcSummaryData_battleDatasLatest_battleDatas._initializeBuilder(
        this);
  }

  GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemonId = $v.pokemonId;
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
  void replace(GDamageCalcSummaryData_battleDatasLatest_battleDatas other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_battleDatasLatest_battleDatas;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_battleDatasLatest_battleDatasBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas build() => _build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas _build() {
    _$GDamageCalcSummaryData_battleDatasLatest_battleDatas _$result;
    try {
      _$result = _$v ??
          new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
                  'G__typename'),
              pokemonId: BuiltValueNullFieldError.checkNotNull(
                  pokemonId,
                  r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
                  'pokemonId'),
              battleDataAbility: battleDataAbility.build(),
              battleDataItem: battleDataItem.build(),
              battleDataMove: battleDataMove.build(),
              battleDataNature: battleDataNature.build(),
              battleDataTerastal: battleDataTerastal.build());
    } catch (_) {
      late String _$failedField;
      try {
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
            r'GDamageCalcSummaryData_battleDatasLatest_battleDatas',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
    extends GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility {
  @override
  final String G__typename;
  @override
  final String abilityId;
  @override
  final double rate;

  factory _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility(
          [void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility._(
      {required this.G__typename, required this.abilityId, required this.rate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        abilityId,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility',
        'abilityId');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility',
        'rate');
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility rebuild(
          void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder
      toBuilder() =>
          new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility &&
        G__typename == other.G__typename &&
        abilityId == other.abilityId &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, abilityId.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility')
          ..add('G__typename', G__typename)
          ..add('abilityId', abilityId)
          ..add('rate', rate))
        .toString();
  }
}

class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder
    implements
        Builder<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder> {
  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _abilityId;
  String? get abilityId => _$this._abilityId;
  set abilityId(String? abilityId) => _$this._abilityId = abilityId;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder() {
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
        ._initializeBuilder(this);
  }

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _abilityId = $v.abilityId;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbilityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
      build() => _build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
      _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility',
                'G__typename'),
            abilityId: BuiltValueNullFieldError.checkNotNull(
                abilityId,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility',
                'abilityId'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataAbility',
                'rate'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
    extends GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem {
  @override
  final String G__typename;
  @override
  final String itemId;
  @override
  final double rate;

  factory _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem(
          [void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem._(
      {required this.G__typename, required this.itemId, required this.rate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        itemId,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem',
        'itemId');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem',
        'rate');
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem rebuild(
          void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder
      toBuilder() =>
          new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem &&
        G__typename == other.G__typename &&
        itemId == other.itemId &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem')
          ..add('G__typename', G__typename)
          ..add('itemId', itemId)
          ..add('rate', rate))
        .toString();
  }
}

class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder
    implements
        Builder<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder> {
  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder() {
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
        ._initializeBuilder(this);
  }

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _itemId = $v.itemId;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem build() =>
      _build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
      _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem',
                'G__typename'),
            itemId: BuiltValueNullFieldError.checkNotNull(
                itemId,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem',
                'itemId'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem',
                'rate'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
    extends GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove {
  @override
  final String G__typename;
  @override
  final String moveId;
  @override
  final double rate;

  factory _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove(
          [void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove._(
      {required this.G__typename, required this.moveId, required this.rate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        moveId,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove',
        'moveId');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove',
        'rate');
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove rebuild(
          void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder
      toBuilder() =>
          new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove &&
        G__typename == other.G__typename &&
        moveId == other.moveId &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, moveId.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove')
          ..add('G__typename', G__typename)
          ..add('moveId', moveId)
          ..add('rate', rate))
        .toString();
  }
}

class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder
    implements
        Builder<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder> {
  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _moveId;
  String? get moveId => _$this._moveId;
  set moveId(String? moveId) => _$this._moveId = moveId;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder() {
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
        ._initializeBuilder(this);
  }

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _moveId = $v.moveId;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMoveBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove build() =>
      _build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
      _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove',
                'G__typename'),
            moveId: BuiltValueNullFieldError.checkNotNull(
                moveId,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove',
                'moveId'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataMove',
                'rate'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
    extends GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature {
  @override
  final String G__typename;
  @override
  final String natureId;
  @override
  final double rate;

  factory _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature(
          [void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature._(
      {required this.G__typename, required this.natureId, required this.rate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        natureId,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature',
        'natureId');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature',
        'rate');
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature rebuild(
          void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder
      toBuilder() =>
          new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature &&
        G__typename == other.G__typename &&
        natureId == other.natureId &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, natureId.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature')
          ..add('G__typename', G__typename)
          ..add('natureId', natureId)
          ..add('rate', rate))
        .toString();
  }
}

class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder
    implements
        Builder<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder> {
  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _natureId;
  String? get natureId => _$this._natureId;
  set natureId(String? natureId) => _$this._natureId = natureId;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder() {
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
        ._initializeBuilder(this);
  }

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _natureId = $v.natureId;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNatureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
      build() => _build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
      _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature',
                'G__typename'),
            natureId: BuiltValueNullFieldError.checkNotNull(
                natureId,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature',
                'natureId'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataNature',
                'rate'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
    extends GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal {
  @override
  final String G__typename;
  @override
  final String typeId;
  @override
  final double rate;

  factory _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal(
          [void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal._(
      {required this.G__typename, required this.typeId, required this.rate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        typeId,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal',
        'typeId');
    BuiltValueNullFieldError.checkNotNull(
        rate,
        r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal',
        'rate');
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal rebuild(
          void Function(
                  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder
      toBuilder() =>
          new GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal &&
        G__typename == other.G__typename &&
        typeId == other.typeId &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal')
          ..add('G__typename', G__typename)
          ..add('typeId', typeId)
          ..add('rate', rate))
        .toString();
  }
}

class GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder
    implements
        Builder<
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal,
            GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder> {
  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _typeId;
  String? get typeId => _$this._typeId;
  set typeId(String? typeId) => _$this._typeId = typeId;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder() {
    GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
        ._initializeBuilder(this);
  }

  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _typeId = $v.typeId;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastalBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
      build() => _build();

  _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
      _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal',
                'G__typename'),
            typeId: BuiltValueNullFieldError.checkNotNull(
                typeId,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal',
                'typeId'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate,
                r'GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataTerastal',
                'rate'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_pokemons
    extends GDamageCalcSummaryData_pokemons {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String form;
  @override
  final double height;
  @override
  final double weight;
  @override
  final String imageUrl;
  @override
  final String name;
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

  factory _$GDamageCalcSummaryData_pokemons(
          [void Function(GDamageCalcSummaryData_pokemonsBuilder)? updates]) =>
      (new GDamageCalcSummaryData_pokemonsBuilder()..update(updates))._build();

  _$GDamageCalcSummaryData_pokemons._(
      {required this.G__typename,
      required this.id,
      required this.form,
      required this.height,
      required this.weight,
      required this.imageUrl,
      required this.name,
      required this.statusA,
      required this.statusB,
      required this.statusC,
      required this.statusD,
      required this.statusH,
      required this.statusS})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData_pokemons', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_pokemons', 'id');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GDamageCalcSummaryData_pokemons', 'form');
    BuiltValueNullFieldError.checkNotNull(
        height, r'GDamageCalcSummaryData_pokemons', 'height');
    BuiltValueNullFieldError.checkNotNull(
        weight, r'GDamageCalcSummaryData_pokemons', 'weight');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'GDamageCalcSummaryData_pokemons', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GDamageCalcSummaryData_pokemons', 'name');
    BuiltValueNullFieldError.checkNotNull(
        statusA, r'GDamageCalcSummaryData_pokemons', 'statusA');
    BuiltValueNullFieldError.checkNotNull(
        statusB, r'GDamageCalcSummaryData_pokemons', 'statusB');
    BuiltValueNullFieldError.checkNotNull(
        statusC, r'GDamageCalcSummaryData_pokemons', 'statusC');
    BuiltValueNullFieldError.checkNotNull(
        statusD, r'GDamageCalcSummaryData_pokemons', 'statusD');
    BuiltValueNullFieldError.checkNotNull(
        statusH, r'GDamageCalcSummaryData_pokemons', 'statusH');
    BuiltValueNullFieldError.checkNotNull(
        statusS, r'GDamageCalcSummaryData_pokemons', 'statusS');
  }

  @override
  GDamageCalcSummaryData_pokemons rebuild(
          void Function(GDamageCalcSummaryData_pokemonsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_pokemonsBuilder toBuilder() =>
      new GDamageCalcSummaryData_pokemonsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_pokemons &&
        G__typename == other.G__typename &&
        id == other.id &&
        form == other.form &&
        height == other.height &&
        weight == other.weight &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        statusA == other.statusA &&
        statusB == other.statusB &&
        statusC == other.statusC &&
        statusD == other.statusD &&
        statusH == other.statusH &&
        statusS == other.statusS;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, statusA.hashCode);
    _$hash = $jc(_$hash, statusB.hashCode);
    _$hash = $jc(_$hash, statusC.hashCode);
    _$hash = $jc(_$hash, statusD.hashCode);
    _$hash = $jc(_$hash, statusH.hashCode);
    _$hash = $jc(_$hash, statusS.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData_pokemons')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('form', form)
          ..add('height', height)
          ..add('weight', weight)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('statusA', statusA)
          ..add('statusB', statusB)
          ..add('statusC', statusC)
          ..add('statusD', statusD)
          ..add('statusH', statusH)
          ..add('statusS', statusS))
        .toString();
  }
}

class GDamageCalcSummaryData_pokemonsBuilder
    implements
        Builder<GDamageCalcSummaryData_pokemons,
            GDamageCalcSummaryData_pokemonsBuilder> {
  _$GDamageCalcSummaryData_pokemons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  double? _height;
  double? get height => _$this._height;
  set height(double? height) => _$this._height = height;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  GDamageCalcSummaryData_pokemonsBuilder() {
    GDamageCalcSummaryData_pokemons._initializeBuilder(this);
  }

  GDamageCalcSummaryData_pokemonsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _form = $v.form;
      _height = $v.height;
      _weight = $v.weight;
      _imageUrl = $v.imageUrl;
      _name = $v.name;
      _statusA = $v.statusA;
      _statusB = $v.statusB;
      _statusC = $v.statusC;
      _statusD = $v.statusD;
      _statusH = $v.statusH;
      _statusS = $v.statusS;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_pokemons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_pokemons;
  }

  @override
  void update(void Function(GDamageCalcSummaryData_pokemonsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_pokemons build() => _build();

  _$GDamageCalcSummaryData_pokemons _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_pokemons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDamageCalcSummaryData_pokemons', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcSummaryData_pokemons', 'id'),
            form: BuiltValueNullFieldError.checkNotNull(
                form, r'GDamageCalcSummaryData_pokemons', 'form'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'GDamageCalcSummaryData_pokemons', 'height'),
            weight: BuiltValueNullFieldError.checkNotNull(
                weight, r'GDamageCalcSummaryData_pokemons', 'weight'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'GDamageCalcSummaryData_pokemons', 'imageUrl'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GDamageCalcSummaryData_pokemons', 'name'),
            statusA: BuiltValueNullFieldError.checkNotNull(
                statusA, r'GDamageCalcSummaryData_pokemons', 'statusA'),
            statusB: BuiltValueNullFieldError.checkNotNull(statusB, r'GDamageCalcSummaryData_pokemons', 'statusB'),
            statusC: BuiltValueNullFieldError.checkNotNull(statusC, r'GDamageCalcSummaryData_pokemons', 'statusC'),
            statusD: BuiltValueNullFieldError.checkNotNull(statusD, r'GDamageCalcSummaryData_pokemons', 'statusD'),
            statusH: BuiltValueNullFieldError.checkNotNull(statusH, r'GDamageCalcSummaryData_pokemons', 'statusH'),
            statusS: BuiltValueNullFieldError.checkNotNull(statusS, r'GDamageCalcSummaryData_pokemons', 'statusS'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_abilities
    extends GDamageCalcSummaryData_abilities {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String detail;

  factory _$GDamageCalcSummaryData_abilities(
          [void Function(GDamageCalcSummaryData_abilitiesBuilder)? updates]) =>
      (new GDamageCalcSummaryData_abilitiesBuilder()..update(updates))._build();

  _$GDamageCalcSummaryData_abilities._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.detail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData_abilities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_abilities', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GDamageCalcSummaryData_abilities', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GDamageCalcSummaryData_abilities', 'detail');
  }

  @override
  GDamageCalcSummaryData_abilities rebuild(
          void Function(GDamageCalcSummaryData_abilitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_abilitiesBuilder toBuilder() =>
      new GDamageCalcSummaryData_abilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_abilities &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData_abilities')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('detail', detail))
        .toString();
  }
}

class GDamageCalcSummaryData_abilitiesBuilder
    implements
        Builder<GDamageCalcSummaryData_abilities,
            GDamageCalcSummaryData_abilitiesBuilder> {
  _$GDamageCalcSummaryData_abilities? _$v;

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

  GDamageCalcSummaryData_abilitiesBuilder() {
    GDamageCalcSummaryData_abilities._initializeBuilder(this);
  }

  GDamageCalcSummaryData_abilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _detail = $v.detail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_abilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_abilities;
  }

  @override
  void update(void Function(GDamageCalcSummaryData_abilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_abilities build() => _build();

  _$GDamageCalcSummaryData_abilities _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_abilities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDamageCalcSummaryData_abilities', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcSummaryData_abilities', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GDamageCalcSummaryData_abilities', 'name'),
            detail: BuiltValueNullFieldError.checkNotNull(
                detail, r'GDamageCalcSummaryData_abilities', 'detail'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_moves extends GDamageCalcSummaryData_moves {
  @override
  final String G__typename;
  @override
  final int accuracy;
  @override
  final String? attackTypeId;
  @override
  final String detail;
  @override
  final String id;
  @override
  final bool isBullet;
  @override
  final bool isChangeable;
  @override
  final bool isContact;
  @override
  final bool isCut;
  @override
  final bool isDance;
  @override
  final bool isDelay;
  @override
  final bool isJaw;
  @override
  final bool isMultipleAttack;
  @override
  final bool isMustCritical;
  @override
  final bool isPowder;
  @override
  final bool isQuick;
  @override
  final bool isPunch;
  @override
  final bool isSound;
  @override
  final bool isWave;
  @override
  final bool isWind;
  @override
  final String name;
  @override
  final int power;
  @override
  final String? typeId;

  factory _$GDamageCalcSummaryData_moves(
          [void Function(GDamageCalcSummaryData_movesBuilder)? updates]) =>
      (new GDamageCalcSummaryData_movesBuilder()..update(updates))._build();

  _$GDamageCalcSummaryData_moves._(
      {required this.G__typename,
      required this.accuracy,
      this.attackTypeId,
      required this.detail,
      required this.id,
      required this.isBullet,
      required this.isChangeable,
      required this.isContact,
      required this.isCut,
      required this.isDance,
      required this.isDelay,
      required this.isJaw,
      required this.isMultipleAttack,
      required this.isMustCritical,
      required this.isPowder,
      required this.isQuick,
      required this.isPunch,
      required this.isSound,
      required this.isWave,
      required this.isWind,
      required this.name,
      required this.power,
      this.typeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData_moves', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        accuracy, r'GDamageCalcSummaryData_moves', 'accuracy');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GDamageCalcSummaryData_moves', 'detail');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_moves', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isBullet, r'GDamageCalcSummaryData_moves', 'isBullet');
    BuiltValueNullFieldError.checkNotNull(
        isChangeable, r'GDamageCalcSummaryData_moves', 'isChangeable');
    BuiltValueNullFieldError.checkNotNull(
        isContact, r'GDamageCalcSummaryData_moves', 'isContact');
    BuiltValueNullFieldError.checkNotNull(
        isCut, r'GDamageCalcSummaryData_moves', 'isCut');
    BuiltValueNullFieldError.checkNotNull(
        isDance, r'GDamageCalcSummaryData_moves', 'isDance');
    BuiltValueNullFieldError.checkNotNull(
        isDelay, r'GDamageCalcSummaryData_moves', 'isDelay');
    BuiltValueNullFieldError.checkNotNull(
        isJaw, r'GDamageCalcSummaryData_moves', 'isJaw');
    BuiltValueNullFieldError.checkNotNull(
        isMultipleAttack, r'GDamageCalcSummaryData_moves', 'isMultipleAttack');
    BuiltValueNullFieldError.checkNotNull(
        isMustCritical, r'GDamageCalcSummaryData_moves', 'isMustCritical');
    BuiltValueNullFieldError.checkNotNull(
        isPowder, r'GDamageCalcSummaryData_moves', 'isPowder');
    BuiltValueNullFieldError.checkNotNull(
        isQuick, r'GDamageCalcSummaryData_moves', 'isQuick');
    BuiltValueNullFieldError.checkNotNull(
        isPunch, r'GDamageCalcSummaryData_moves', 'isPunch');
    BuiltValueNullFieldError.checkNotNull(
        isSound, r'GDamageCalcSummaryData_moves', 'isSound');
    BuiltValueNullFieldError.checkNotNull(
        isWave, r'GDamageCalcSummaryData_moves', 'isWave');
    BuiltValueNullFieldError.checkNotNull(
        isWind, r'GDamageCalcSummaryData_moves', 'isWind');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GDamageCalcSummaryData_moves', 'name');
    BuiltValueNullFieldError.checkNotNull(
        power, r'GDamageCalcSummaryData_moves', 'power');
  }

  @override
  GDamageCalcSummaryData_moves rebuild(
          void Function(GDamageCalcSummaryData_movesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_movesBuilder toBuilder() =>
      new GDamageCalcSummaryData_movesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_moves &&
        G__typename == other.G__typename &&
        accuracy == other.accuracy &&
        attackTypeId == other.attackTypeId &&
        detail == other.detail &&
        id == other.id &&
        isBullet == other.isBullet &&
        isChangeable == other.isChangeable &&
        isContact == other.isContact &&
        isCut == other.isCut &&
        isDance == other.isDance &&
        isDelay == other.isDelay &&
        isJaw == other.isJaw &&
        isMultipleAttack == other.isMultipleAttack &&
        isMustCritical == other.isMustCritical &&
        isPowder == other.isPowder &&
        isQuick == other.isQuick &&
        isPunch == other.isPunch &&
        isSound == other.isSound &&
        isWave == other.isWave &&
        isWind == other.isWind &&
        name == other.name &&
        power == other.power &&
        typeId == other.typeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, accuracy.hashCode);
    _$hash = $jc(_$hash, attackTypeId.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isBullet.hashCode);
    _$hash = $jc(_$hash, isChangeable.hashCode);
    _$hash = $jc(_$hash, isContact.hashCode);
    _$hash = $jc(_$hash, isCut.hashCode);
    _$hash = $jc(_$hash, isDance.hashCode);
    _$hash = $jc(_$hash, isDelay.hashCode);
    _$hash = $jc(_$hash, isJaw.hashCode);
    _$hash = $jc(_$hash, isMultipleAttack.hashCode);
    _$hash = $jc(_$hash, isMustCritical.hashCode);
    _$hash = $jc(_$hash, isPowder.hashCode);
    _$hash = $jc(_$hash, isQuick.hashCode);
    _$hash = $jc(_$hash, isPunch.hashCode);
    _$hash = $jc(_$hash, isSound.hashCode);
    _$hash = $jc(_$hash, isWave.hashCode);
    _$hash = $jc(_$hash, isWind.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData_moves')
          ..add('G__typename', G__typename)
          ..add('accuracy', accuracy)
          ..add('attackTypeId', attackTypeId)
          ..add('detail', detail)
          ..add('id', id)
          ..add('isBullet', isBullet)
          ..add('isChangeable', isChangeable)
          ..add('isContact', isContact)
          ..add('isCut', isCut)
          ..add('isDance', isDance)
          ..add('isDelay', isDelay)
          ..add('isJaw', isJaw)
          ..add('isMultipleAttack', isMultipleAttack)
          ..add('isMustCritical', isMustCritical)
          ..add('isPowder', isPowder)
          ..add('isQuick', isQuick)
          ..add('isPunch', isPunch)
          ..add('isSound', isSound)
          ..add('isWave', isWave)
          ..add('isWind', isWind)
          ..add('name', name)
          ..add('power', power)
          ..add('typeId', typeId))
        .toString();
  }
}

class GDamageCalcSummaryData_movesBuilder
    implements
        Builder<GDamageCalcSummaryData_moves,
            GDamageCalcSummaryData_movesBuilder> {
  _$GDamageCalcSummaryData_moves? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _accuracy;
  int? get accuracy => _$this._accuracy;
  set accuracy(int? accuracy) => _$this._accuracy = accuracy;

  String? _attackTypeId;
  String? get attackTypeId => _$this._attackTypeId;
  set attackTypeId(String? attackTypeId) => _$this._attackTypeId = attackTypeId;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isBullet;
  bool? get isBullet => _$this._isBullet;
  set isBullet(bool? isBullet) => _$this._isBullet = isBullet;

  bool? _isChangeable;
  bool? get isChangeable => _$this._isChangeable;
  set isChangeable(bool? isChangeable) => _$this._isChangeable = isChangeable;

  bool? _isContact;
  bool? get isContact => _$this._isContact;
  set isContact(bool? isContact) => _$this._isContact = isContact;

  bool? _isCut;
  bool? get isCut => _$this._isCut;
  set isCut(bool? isCut) => _$this._isCut = isCut;

  bool? _isDance;
  bool? get isDance => _$this._isDance;
  set isDance(bool? isDance) => _$this._isDance = isDance;

  bool? _isDelay;
  bool? get isDelay => _$this._isDelay;
  set isDelay(bool? isDelay) => _$this._isDelay = isDelay;

  bool? _isJaw;
  bool? get isJaw => _$this._isJaw;
  set isJaw(bool? isJaw) => _$this._isJaw = isJaw;

  bool? _isMultipleAttack;
  bool? get isMultipleAttack => _$this._isMultipleAttack;
  set isMultipleAttack(bool? isMultipleAttack) =>
      _$this._isMultipleAttack = isMultipleAttack;

  bool? _isMustCritical;
  bool? get isMustCritical => _$this._isMustCritical;
  set isMustCritical(bool? isMustCritical) =>
      _$this._isMustCritical = isMustCritical;

  bool? _isPowder;
  bool? get isPowder => _$this._isPowder;
  set isPowder(bool? isPowder) => _$this._isPowder = isPowder;

  bool? _isQuick;
  bool? get isQuick => _$this._isQuick;
  set isQuick(bool? isQuick) => _$this._isQuick = isQuick;

  bool? _isPunch;
  bool? get isPunch => _$this._isPunch;
  set isPunch(bool? isPunch) => _$this._isPunch = isPunch;

  bool? _isSound;
  bool? get isSound => _$this._isSound;
  set isSound(bool? isSound) => _$this._isSound = isSound;

  bool? _isWave;
  bool? get isWave => _$this._isWave;
  set isWave(bool? isWave) => _$this._isWave = isWave;

  bool? _isWind;
  bool? get isWind => _$this._isWind;
  set isWind(bool? isWind) => _$this._isWind = isWind;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _power;
  int? get power => _$this._power;
  set power(int? power) => _$this._power = power;

  String? _typeId;
  String? get typeId => _$this._typeId;
  set typeId(String? typeId) => _$this._typeId = typeId;

  GDamageCalcSummaryData_movesBuilder() {
    GDamageCalcSummaryData_moves._initializeBuilder(this);
  }

  GDamageCalcSummaryData_movesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _accuracy = $v.accuracy;
      _attackTypeId = $v.attackTypeId;
      _detail = $v.detail;
      _id = $v.id;
      _isBullet = $v.isBullet;
      _isChangeable = $v.isChangeable;
      _isContact = $v.isContact;
      _isCut = $v.isCut;
      _isDance = $v.isDance;
      _isDelay = $v.isDelay;
      _isJaw = $v.isJaw;
      _isMultipleAttack = $v.isMultipleAttack;
      _isMustCritical = $v.isMustCritical;
      _isPowder = $v.isPowder;
      _isQuick = $v.isQuick;
      _isPunch = $v.isPunch;
      _isSound = $v.isSound;
      _isWave = $v.isWave;
      _isWind = $v.isWind;
      _name = $v.name;
      _power = $v.power;
      _typeId = $v.typeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_moves other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_moves;
  }

  @override
  void update(void Function(GDamageCalcSummaryData_movesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_moves build() => _build();

  _$GDamageCalcSummaryData_moves _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_moves._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDamageCalcSummaryData_moves', 'G__typename'),
            accuracy: BuiltValueNullFieldError.checkNotNull(
                accuracy, r'GDamageCalcSummaryData_moves', 'accuracy'),
            attackTypeId: attackTypeId,
            detail: BuiltValueNullFieldError.checkNotNull(
                detail, r'GDamageCalcSummaryData_moves', 'detail'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcSummaryData_moves', 'id'),
            isBullet: BuiltValueNullFieldError.checkNotNull(
                isBullet, r'GDamageCalcSummaryData_moves', 'isBullet'),
            isChangeable: BuiltValueNullFieldError.checkNotNull(
                isChangeable, r'GDamageCalcSummaryData_moves', 'isChangeable'),
            isContact: BuiltValueNullFieldError.checkNotNull(
                isContact, r'GDamageCalcSummaryData_moves', 'isContact'),
            isCut:
                BuiltValueNullFieldError.checkNotNull(isCut, r'GDamageCalcSummaryData_moves', 'isCut'),
            isDance: BuiltValueNullFieldError.checkNotNull(isDance, r'GDamageCalcSummaryData_moves', 'isDance'),
            isDelay: BuiltValueNullFieldError.checkNotNull(isDelay, r'GDamageCalcSummaryData_moves', 'isDelay'),
            isJaw: BuiltValueNullFieldError.checkNotNull(isJaw, r'GDamageCalcSummaryData_moves', 'isJaw'),
            isMultipleAttack: BuiltValueNullFieldError.checkNotNull(isMultipleAttack, r'GDamageCalcSummaryData_moves', 'isMultipleAttack'),
            isMustCritical: BuiltValueNullFieldError.checkNotNull(isMustCritical, r'GDamageCalcSummaryData_moves', 'isMustCritical'),
            isPowder: BuiltValueNullFieldError.checkNotNull(isPowder, r'GDamageCalcSummaryData_moves', 'isPowder'),
            isQuick: BuiltValueNullFieldError.checkNotNull(isQuick, r'GDamageCalcSummaryData_moves', 'isQuick'),
            isPunch: BuiltValueNullFieldError.checkNotNull(isPunch, r'GDamageCalcSummaryData_moves', 'isPunch'),
            isSound: BuiltValueNullFieldError.checkNotNull(isSound, r'GDamageCalcSummaryData_moves', 'isSound'),
            isWave: BuiltValueNullFieldError.checkNotNull(isWave, r'GDamageCalcSummaryData_moves', 'isWave'),
            isWind: BuiltValueNullFieldError.checkNotNull(isWind, r'GDamageCalcSummaryData_moves', 'isWind'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'GDamageCalcSummaryData_moves', 'name'),
            power: BuiltValueNullFieldError.checkNotNull(power, r'GDamageCalcSummaryData_moves', 'power'),
            typeId: typeId);
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_attackTypes
    extends GDamageCalcSummaryData_attackTypes {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String name;

  factory _$GDamageCalcSummaryData_attackTypes(
          [void Function(GDamageCalcSummaryData_attackTypesBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_attackTypesBuilder()..update(updates))
          ._build();

  _$GDamageCalcSummaryData_attackTypes._(
      {required this.G__typename,
      required this.id,
      required this.imageUrl,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData_attackTypes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_attackTypes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'GDamageCalcSummaryData_attackTypes', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GDamageCalcSummaryData_attackTypes', 'name');
  }

  @override
  GDamageCalcSummaryData_attackTypes rebuild(
          void Function(GDamageCalcSummaryData_attackTypesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_attackTypesBuilder toBuilder() =>
      new GDamageCalcSummaryData_attackTypesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_attackTypes &&
        G__typename == other.G__typename &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData_attackTypes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('name', name))
        .toString();
  }
}

class GDamageCalcSummaryData_attackTypesBuilder
    implements
        Builder<GDamageCalcSummaryData_attackTypes,
            GDamageCalcSummaryData_attackTypesBuilder> {
  _$GDamageCalcSummaryData_attackTypes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GDamageCalcSummaryData_attackTypesBuilder() {
    GDamageCalcSummaryData_attackTypes._initializeBuilder(this);
  }

  GDamageCalcSummaryData_attackTypesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _imageUrl = $v.imageUrl;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_attackTypes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_attackTypes;
  }

  @override
  void update(
      void Function(GDamageCalcSummaryData_attackTypesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_attackTypes build() => _build();

  _$GDamageCalcSummaryData_attackTypes _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_attackTypes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDamageCalcSummaryData_attackTypes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcSummaryData_attackTypes', 'id'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'GDamageCalcSummaryData_attackTypes', 'imageUrl'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GDamageCalcSummaryData_attackTypes', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_natures extends GDamageCalcSummaryData_natures {
  @override
  final String G__typename;
  @override
  final String decrease;
  @override
  final String increase;
  @override
  final String name;
  @override
  final String id;

  factory _$GDamageCalcSummaryData_natures(
          [void Function(GDamageCalcSummaryData_naturesBuilder)? updates]) =>
      (new GDamageCalcSummaryData_naturesBuilder()..update(updates))._build();

  _$GDamageCalcSummaryData_natures._(
      {required this.G__typename,
      required this.decrease,
      required this.increase,
      required this.name,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData_natures', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        decrease, r'GDamageCalcSummaryData_natures', 'decrease');
    BuiltValueNullFieldError.checkNotNull(
        increase, r'GDamageCalcSummaryData_natures', 'increase');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GDamageCalcSummaryData_natures', 'name');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_natures', 'id');
  }

  @override
  GDamageCalcSummaryData_natures rebuild(
          void Function(GDamageCalcSummaryData_naturesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_naturesBuilder toBuilder() =>
      new GDamageCalcSummaryData_naturesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_natures &&
        G__typename == other.G__typename &&
        decrease == other.decrease &&
        increase == other.increase &&
        name == other.name &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, decrease.hashCode);
    _$hash = $jc(_$hash, increase.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData_natures')
          ..add('G__typename', G__typename)
          ..add('decrease', decrease)
          ..add('increase', increase)
          ..add('name', name)
          ..add('id', id))
        .toString();
  }
}

class GDamageCalcSummaryData_naturesBuilder
    implements
        Builder<GDamageCalcSummaryData_natures,
            GDamageCalcSummaryData_naturesBuilder> {
  _$GDamageCalcSummaryData_natures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _decrease;
  String? get decrease => _$this._decrease;
  set decrease(String? decrease) => _$this._decrease = decrease;

  String? _increase;
  String? get increase => _$this._increase;
  set increase(String? increase) => _$this._increase = increase;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDamageCalcSummaryData_naturesBuilder() {
    GDamageCalcSummaryData_natures._initializeBuilder(this);
  }

  GDamageCalcSummaryData_naturesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _decrease = $v.decrease;
      _increase = $v.increase;
      _name = $v.name;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_natures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_natures;
  }

  @override
  void update(void Function(GDamageCalcSummaryData_naturesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_natures build() => _build();

  _$GDamageCalcSummaryData_natures _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_natures._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDamageCalcSummaryData_natures', 'G__typename'),
            decrease: BuiltValueNullFieldError.checkNotNull(
                decrease, r'GDamageCalcSummaryData_natures', 'decrease'),
            increase: BuiltValueNullFieldError.checkNotNull(
                increase, r'GDamageCalcSummaryData_natures', 'increase'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GDamageCalcSummaryData_natures', 'name'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcSummaryData_natures', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_items extends GDamageCalcSummaryData_items {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int order;
  @override
  final String type;
  @override
  final String name;
  @override
  final String detail;
  @override
  final String imageUrl;

  factory _$GDamageCalcSummaryData_items(
          [void Function(GDamageCalcSummaryData_itemsBuilder)? updates]) =>
      (new GDamageCalcSummaryData_itemsBuilder()..update(updates))._build();

  _$GDamageCalcSummaryData_items._(
      {required this.G__typename,
      required this.id,
      required this.order,
      required this.type,
      required this.name,
      required this.detail,
      required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_items', 'id');
    BuiltValueNullFieldError.checkNotNull(
        order, r'GDamageCalcSummaryData_items', 'order');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GDamageCalcSummaryData_items', 'type');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GDamageCalcSummaryData_items', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GDamageCalcSummaryData_items', 'detail');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'GDamageCalcSummaryData_items', 'imageUrl');
  }

  @override
  GDamageCalcSummaryData_items rebuild(
          void Function(GDamageCalcSummaryData_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_itemsBuilder toBuilder() =>
      new GDamageCalcSummaryData_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_items &&
        G__typename == other.G__typename &&
        id == other.id &&
        order == other.order &&
        type == other.type &&
        name == other.name &&
        detail == other.detail &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData_items')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('order', order)
          ..add('type', type)
          ..add('name', name)
          ..add('detail', detail)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GDamageCalcSummaryData_itemsBuilder
    implements
        Builder<GDamageCalcSummaryData_items,
            GDamageCalcSummaryData_itemsBuilder> {
  _$GDamageCalcSummaryData_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GDamageCalcSummaryData_itemsBuilder() {
    GDamageCalcSummaryData_items._initializeBuilder(this);
  }

  GDamageCalcSummaryData_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _order = $v.order;
      _type = $v.type;
      _name = $v.name;
      _detail = $v.detail;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_items;
  }

  @override
  void update(void Function(GDamageCalcSummaryData_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_items build() => _build();

  _$GDamageCalcSummaryData_items _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_items._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDamageCalcSummaryData_items', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcSummaryData_items', 'id'),
            order: BuiltValueNullFieldError.checkNotNull(
                order, r'GDamageCalcSummaryData_items', 'order'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GDamageCalcSummaryData_items', 'type'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GDamageCalcSummaryData_items', 'name'),
            detail: BuiltValueNullFieldError.checkNotNull(
                detail, r'GDamageCalcSummaryData_items', 'detail'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'GDamageCalcSummaryData_items', 'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_types extends GDamageCalcSummaryData_types {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String terastalImageUrl;
  @override
  final String textImageUrl;

  factory _$GDamageCalcSummaryData_types(
          [void Function(GDamageCalcSummaryData_typesBuilder)? updates]) =>
      (new GDamageCalcSummaryData_typesBuilder()..update(updates))._build();

  _$GDamageCalcSummaryData_types._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.imageUrl,
      required this.terastalImageUrl,
      required this.textImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcSummaryData_types', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_types', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GDamageCalcSummaryData_types', 'name');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'GDamageCalcSummaryData_types', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        terastalImageUrl, r'GDamageCalcSummaryData_types', 'terastalImageUrl');
    BuiltValueNullFieldError.checkNotNull(
        textImageUrl, r'GDamageCalcSummaryData_types', 'textImageUrl');
  }

  @override
  GDamageCalcSummaryData_types rebuild(
          void Function(GDamageCalcSummaryData_typesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_typesBuilder toBuilder() =>
      new GDamageCalcSummaryData_typesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_types &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        imageUrl == other.imageUrl &&
        terastalImageUrl == other.terastalImageUrl &&
        textImageUrl == other.textImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, terastalImageUrl.hashCode);
    _$hash = $jc(_$hash, textImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryData_types')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('imageUrl', imageUrl)
          ..add('terastalImageUrl', terastalImageUrl)
          ..add('textImageUrl', textImageUrl))
        .toString();
  }
}

class GDamageCalcSummaryData_typesBuilder
    implements
        Builder<GDamageCalcSummaryData_types,
            GDamageCalcSummaryData_typesBuilder> {
  _$GDamageCalcSummaryData_types? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _terastalImageUrl;
  String? get terastalImageUrl => _$this._terastalImageUrl;
  set terastalImageUrl(String? terastalImageUrl) =>
      _$this._terastalImageUrl = terastalImageUrl;

  String? _textImageUrl;
  String? get textImageUrl => _$this._textImageUrl;
  set textImageUrl(String? textImageUrl) => _$this._textImageUrl = textImageUrl;

  GDamageCalcSummaryData_typesBuilder() {
    GDamageCalcSummaryData_types._initializeBuilder(this);
  }

  GDamageCalcSummaryData_typesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _terastalImageUrl = $v.terastalImageUrl;
      _textImageUrl = $v.textImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_types other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_types;
  }

  @override
  void update(void Function(GDamageCalcSummaryData_typesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_types build() => _build();

  _$GDamageCalcSummaryData_types _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_types._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDamageCalcSummaryData_types', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcSummaryData_types', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GDamageCalcSummaryData_types', 'name'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'GDamageCalcSummaryData_types', 'imageUrl'),
            terastalImageUrl: BuiltValueNullFieldError.checkNotNull(
                terastalImageUrl,
                r'GDamageCalcSummaryData_types',
                'terastalImageUrl'),
            textImageUrl: BuiltValueNullFieldError.checkNotNull(
                textImageUrl, r'GDamageCalcSummaryData_types', 'textImageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_myDamageCalcIndex
    extends GDamageCalcSummaryData_myDamageCalcIndex {
  @override
  final String G__typename;
  @override
  final BuiltList<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>
      myDamageCalc;

  factory _$GDamageCalcSummaryData_myDamageCalcIndex(
          [void Function(GDamageCalcSummaryData_myDamageCalcIndexBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_myDamageCalcIndexBuilder()..update(updates))
          ._build();

  _$GDamageCalcSummaryData_myDamageCalcIndex._(
      {required this.G__typename, required this.myDamageCalc})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GDamageCalcSummaryData_myDamageCalcIndex', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(myDamageCalc,
        r'GDamageCalcSummaryData_myDamageCalcIndex', 'myDamageCalc');
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex rebuild(
          void Function(GDamageCalcSummaryData_myDamageCalcIndexBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_myDamageCalcIndexBuilder toBuilder() =>
      new GDamageCalcSummaryData_myDamageCalcIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_myDamageCalcIndex &&
        G__typename == other.G__typename &&
        myDamageCalc == other.myDamageCalc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, myDamageCalc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_myDamageCalcIndex')
          ..add('G__typename', G__typename)
          ..add('myDamageCalc', myDamageCalc))
        .toString();
  }
}

class GDamageCalcSummaryData_myDamageCalcIndexBuilder
    implements
        Builder<GDamageCalcSummaryData_myDamageCalcIndex,
            GDamageCalcSummaryData_myDamageCalcIndexBuilder> {
  _$GDamageCalcSummaryData_myDamageCalcIndex? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>?
      _myDamageCalc;
  ListBuilder<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>
      get myDamageCalc => _$this._myDamageCalc ??= new ListBuilder<
          GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>();
  set myDamageCalc(
          ListBuilder<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc>?
              myDamageCalc) =>
      _$this._myDamageCalc = myDamageCalc;

  GDamageCalcSummaryData_myDamageCalcIndexBuilder() {
    GDamageCalcSummaryData_myDamageCalcIndex._initializeBuilder(this);
  }

  GDamageCalcSummaryData_myDamageCalcIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _myDamageCalc = $v.myDamageCalc.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_myDamageCalcIndex other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_myDamageCalcIndex;
  }

  @override
  void update(
      void Function(GDamageCalcSummaryData_myDamageCalcIndexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex build() => _build();

  _$GDamageCalcSummaryData_myDamageCalcIndex _build() {
    _$GDamageCalcSummaryData_myDamageCalcIndex _$result;
    try {
      _$result = _$v ??
          new _$GDamageCalcSummaryData_myDamageCalcIndex._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GDamageCalcSummaryData_myDamageCalcIndex', 'G__typename'),
              myDamageCalc: myDamageCalc.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myDamageCalc';
        myDamageCalc.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDamageCalcSummaryData_myDamageCalcIndex',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc
    extends GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc {
  @override
  final String G__typename;
  @override
  final String client;
  @override
  final String? abilityId;
  @override
  final int evA;
  @override
  final int evB;
  @override
  final int evC;
  @override
  final int evD;
  @override
  final int evH;
  @override
  final int evS;
  @override
  final String id;
  @override
  final String? itemId;
  @override
  final int ivA;
  @override
  final int ivB;
  @override
  final int ivC;
  @override
  final int ivD;
  @override
  final int ivH;
  @override
  final int ivS;
  @override
  final int rankA;
  @override
  final int rankB;
  @override
  final int rankC;
  @override
  final int rankD;
  @override
  final int rankS;
  @override
  final String side;
  @override
  final String? terastalId;
  @override
  final String pokemonId;
  @override
  final int order;
  @override
  final String natureId;
  @override
  final BuiltList<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>
      moves;

  factory _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc(
          [void Function(
                  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc._(
      {required this.G__typename,
      required this.client,
      this.abilityId,
      required this.evA,
      required this.evB,
      required this.evC,
      required this.evD,
      required this.evH,
      required this.evS,
      required this.id,
      this.itemId,
      required this.ivA,
      required this.ivB,
      required this.ivC,
      required this.ivD,
      required this.ivH,
      required this.ivS,
      required this.rankA,
      required this.rankB,
      required this.rankC,
      required this.rankD,
      required this.rankS,
      required this.side,
      this.terastalId,
      required this.pokemonId,
      required this.order,
      required this.natureId,
      required this.moves})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(client,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'client');
    BuiltValueNullFieldError.checkNotNull(
        evA, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evA');
    BuiltValueNullFieldError.checkNotNull(
        evB, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evB');
    BuiltValueNullFieldError.checkNotNull(
        evC, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evC');
    BuiltValueNullFieldError.checkNotNull(
        evD, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evD');
    BuiltValueNullFieldError.checkNotNull(
        evH, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evH');
    BuiltValueNullFieldError.checkNotNull(
        evS, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evS');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'id');
    BuiltValueNullFieldError.checkNotNull(
        ivA, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivA');
    BuiltValueNullFieldError.checkNotNull(
        ivB, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivB');
    BuiltValueNullFieldError.checkNotNull(
        ivC, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivC');
    BuiltValueNullFieldError.checkNotNull(
        ivD, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivD');
    BuiltValueNullFieldError.checkNotNull(
        ivH, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivH');
    BuiltValueNullFieldError.checkNotNull(
        ivS, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivS');
    BuiltValueNullFieldError.checkNotNull(rankA,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankA');
    BuiltValueNullFieldError.checkNotNull(rankB,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankB');
    BuiltValueNullFieldError.checkNotNull(rankC,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankC');
    BuiltValueNullFieldError.checkNotNull(rankD,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankD');
    BuiltValueNullFieldError.checkNotNull(rankS,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankS');
    BuiltValueNullFieldError.checkNotNull(
        side, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'side');
    BuiltValueNullFieldError.checkNotNull(pokemonId,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'pokemonId');
    BuiltValueNullFieldError.checkNotNull(order,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'order');
    BuiltValueNullFieldError.checkNotNull(natureId,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'natureId');
    BuiltValueNullFieldError.checkNotNull(moves,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'moves');
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc rebuild(
          void Function(
                  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder toBuilder() =>
      new GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc &&
        G__typename == other.G__typename &&
        client == other.client &&
        abilityId == other.abilityId &&
        evA == other.evA &&
        evB == other.evB &&
        evC == other.evC &&
        evD == other.evD &&
        evH == other.evH &&
        evS == other.evS &&
        id == other.id &&
        itemId == other.itemId &&
        ivA == other.ivA &&
        ivB == other.ivB &&
        ivC == other.ivC &&
        ivD == other.ivD &&
        ivH == other.ivH &&
        ivS == other.ivS &&
        rankA == other.rankA &&
        rankB == other.rankB &&
        rankC == other.rankC &&
        rankD == other.rankD &&
        rankS == other.rankS &&
        side == other.side &&
        terastalId == other.terastalId &&
        pokemonId == other.pokemonId &&
        order == other.order &&
        natureId == other.natureId &&
        moves == other.moves;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, client.hashCode);
    _$hash = $jc(_$hash, abilityId.hashCode);
    _$hash = $jc(_$hash, evA.hashCode);
    _$hash = $jc(_$hash, evB.hashCode);
    _$hash = $jc(_$hash, evC.hashCode);
    _$hash = $jc(_$hash, evD.hashCode);
    _$hash = $jc(_$hash, evH.hashCode);
    _$hash = $jc(_$hash, evS.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, ivA.hashCode);
    _$hash = $jc(_$hash, ivB.hashCode);
    _$hash = $jc(_$hash, ivC.hashCode);
    _$hash = $jc(_$hash, ivD.hashCode);
    _$hash = $jc(_$hash, ivH.hashCode);
    _$hash = $jc(_$hash, ivS.hashCode);
    _$hash = $jc(_$hash, rankA.hashCode);
    _$hash = $jc(_$hash, rankB.hashCode);
    _$hash = $jc(_$hash, rankC.hashCode);
    _$hash = $jc(_$hash, rankD.hashCode);
    _$hash = $jc(_$hash, rankS.hashCode);
    _$hash = $jc(_$hash, side.hashCode);
    _$hash = $jc(_$hash, terastalId.hashCode);
    _$hash = $jc(_$hash, pokemonId.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, natureId.hashCode);
    _$hash = $jc(_$hash, moves.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc')
          ..add('G__typename', G__typename)
          ..add('client', client)
          ..add('abilityId', abilityId)
          ..add('evA', evA)
          ..add('evB', evB)
          ..add('evC', evC)
          ..add('evD', evD)
          ..add('evH', evH)
          ..add('evS', evS)
          ..add('id', id)
          ..add('itemId', itemId)
          ..add('ivA', ivA)
          ..add('ivB', ivB)
          ..add('ivC', ivC)
          ..add('ivD', ivD)
          ..add('ivH', ivH)
          ..add('ivS', ivS)
          ..add('rankA', rankA)
          ..add('rankB', rankB)
          ..add('rankC', rankC)
          ..add('rankD', rankD)
          ..add('rankS', rankS)
          ..add('side', side)
          ..add('terastalId', terastalId)
          ..add('pokemonId', pokemonId)
          ..add('order', order)
          ..add('natureId', natureId)
          ..add('moves', moves))
        .toString();
  }
}

class GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder
    implements
        Builder<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc,
            GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder> {
  _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _client;
  String? get client => _$this._client;
  set client(String? client) => _$this._client = client;

  String? _abilityId;
  String? get abilityId => _$this._abilityId;
  set abilityId(String? abilityId) => _$this._abilityId = abilityId;

  int? _evA;
  int? get evA => _$this._evA;
  set evA(int? evA) => _$this._evA = evA;

  int? _evB;
  int? get evB => _$this._evB;
  set evB(int? evB) => _$this._evB = evB;

  int? _evC;
  int? get evC => _$this._evC;
  set evC(int? evC) => _$this._evC = evC;

  int? _evD;
  int? get evD => _$this._evD;
  set evD(int? evD) => _$this._evD = evD;

  int? _evH;
  int? get evH => _$this._evH;
  set evH(int? evH) => _$this._evH = evH;

  int? _evS;
  int? get evS => _$this._evS;
  set evS(int? evS) => _$this._evS = evS;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  int? _ivA;
  int? get ivA => _$this._ivA;
  set ivA(int? ivA) => _$this._ivA = ivA;

  int? _ivB;
  int? get ivB => _$this._ivB;
  set ivB(int? ivB) => _$this._ivB = ivB;

  int? _ivC;
  int? get ivC => _$this._ivC;
  set ivC(int? ivC) => _$this._ivC = ivC;

  int? _ivD;
  int? get ivD => _$this._ivD;
  set ivD(int? ivD) => _$this._ivD = ivD;

  int? _ivH;
  int? get ivH => _$this._ivH;
  set ivH(int? ivH) => _$this._ivH = ivH;

  int? _ivS;
  int? get ivS => _$this._ivS;
  set ivS(int? ivS) => _$this._ivS = ivS;

  int? _rankA;
  int? get rankA => _$this._rankA;
  set rankA(int? rankA) => _$this._rankA = rankA;

  int? _rankB;
  int? get rankB => _$this._rankB;
  set rankB(int? rankB) => _$this._rankB = rankB;

  int? _rankC;
  int? get rankC => _$this._rankC;
  set rankC(int? rankC) => _$this._rankC = rankC;

  int? _rankD;
  int? get rankD => _$this._rankD;
  set rankD(int? rankD) => _$this._rankD = rankD;

  int? _rankS;
  int? get rankS => _$this._rankS;
  set rankS(int? rankS) => _$this._rankS = rankS;

  String? _side;
  String? get side => _$this._side;
  set side(String? side) => _$this._side = side;

  String? _terastalId;
  String? get terastalId => _$this._terastalId;
  set terastalId(String? terastalId) => _$this._terastalId = terastalId;

  String? _pokemonId;
  String? get pokemonId => _$this._pokemonId;
  set pokemonId(String? pokemonId) => _$this._pokemonId = pokemonId;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _natureId;
  String? get natureId => _$this._natureId;
  set natureId(String? natureId) => _$this._natureId = natureId;

  ListBuilder<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>?
      _moves;
  ListBuilder<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>
      get moves => _$this._moves ??= new ListBuilder<
          GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>();
  set moves(
          ListBuilder<
                  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves>?
              moves) =>
      _$this._moves = moves;

  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder() {
    GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc._initializeBuilder(
        this);
  }

  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _client = $v.client;
      _abilityId = $v.abilityId;
      _evA = $v.evA;
      _evB = $v.evB;
      _evC = $v.evC;
      _evD = $v.evD;
      _evH = $v.evH;
      _evS = $v.evS;
      _id = $v.id;
      _itemId = $v.itemId;
      _ivA = $v.ivA;
      _ivB = $v.ivB;
      _ivC = $v.ivC;
      _ivD = $v.ivD;
      _ivH = $v.ivH;
      _ivS = $v.ivS;
      _rankA = $v.rankA;
      _rankB = $v.rankB;
      _rankC = $v.rankC;
      _rankD = $v.rankD;
      _rankS = $v.rankS;
      _side = $v.side;
      _terastalId = $v.terastalId;
      _pokemonId = $v.pokemonId;
      _order = $v.order;
      _natureId = $v.natureId;
      _moves = $v.moves.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalcBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc build() => _build();

  _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc _build() {
    _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc _$result;
    try {
      _$result = _$v ??
          new _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc',
                  'G__typename'),
              client: BuiltValueNullFieldError.checkNotNull(
                  client, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'client'),
              abilityId: abilityId,
              evA: BuiltValueNullFieldError.checkNotNull(
                  evA, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evA'),
              evB: BuiltValueNullFieldError.checkNotNull(
                  evB, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evB'),
              evC: BuiltValueNullFieldError.checkNotNull(
                  evC, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evC'),
              evD: BuiltValueNullFieldError.checkNotNull(
                  evD, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evD'),
              evH: BuiltValueNullFieldError.checkNotNull(evH, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evH'),
              evS: BuiltValueNullFieldError.checkNotNull(evS, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'evS'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'id'),
              itemId: itemId,
              ivA: BuiltValueNullFieldError.checkNotNull(ivA, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivA'),
              ivB: BuiltValueNullFieldError.checkNotNull(ivB, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivB'),
              ivC: BuiltValueNullFieldError.checkNotNull(ivC, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivC'),
              ivD: BuiltValueNullFieldError.checkNotNull(ivD, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivD'),
              ivH: BuiltValueNullFieldError.checkNotNull(ivH, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivH'),
              ivS: BuiltValueNullFieldError.checkNotNull(ivS, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'ivS'),
              rankA: BuiltValueNullFieldError.checkNotNull(rankA, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankA'),
              rankB: BuiltValueNullFieldError.checkNotNull(rankB, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankB'),
              rankC: BuiltValueNullFieldError.checkNotNull(rankC, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankC'),
              rankD: BuiltValueNullFieldError.checkNotNull(rankD, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankD'),
              rankS: BuiltValueNullFieldError.checkNotNull(rankS, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'rankS'),
              side: BuiltValueNullFieldError.checkNotNull(side, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'side'),
              terastalId: terastalId,
              pokemonId: BuiltValueNullFieldError.checkNotNull(pokemonId, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'pokemonId'),
              order: BuiltValueNullFieldError.checkNotNull(order, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'order'),
              natureId: BuiltValueNullFieldError.checkNotNull(natureId, r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc', 'natureId'),
              moves: moves.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moves';
        moves.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves
    extends GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves(
          [void Function(
                  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder)?
              updates]) =>
      (new GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder()
            ..update(updates))
          ._build();

  _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves', 'id');
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves rebuild(
          void Function(
                  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder
      toBuilder() =>
          new GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder
    implements
        Builder<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves,
            GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder> {
  _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder() {
    GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves
        ._initializeBuilder(this);
  }

  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves;
  }

  @override
  void update(
      void Function(
              GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_movesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves build() =>
      _build();

  _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves _build() {
    final _$result = _$v ??
        new _$GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc_moves',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcDetailData extends GDamageCalcDetailData {
  @override
  final String G__typename;
  @override
  final GDamageCalcDetailData_pokemon? pokemon;

  factory _$GDamageCalcDetailData(
          [void Function(GDamageCalcDetailDataBuilder)? updates]) =>
      (new GDamageCalcDetailDataBuilder()..update(updates))._build();

  _$GDamageCalcDetailData._({required this.G__typename, this.pokemon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcDetailData', 'G__typename');
  }

  @override
  GDamageCalcDetailData rebuild(
          void Function(GDamageCalcDetailDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcDetailDataBuilder toBuilder() =>
      new GDamageCalcDetailDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcDetailData &&
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
    return (newBuiltValueToStringHelper(r'GDamageCalcDetailData')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GDamageCalcDetailDataBuilder
    implements Builder<GDamageCalcDetailData, GDamageCalcDetailDataBuilder> {
  _$GDamageCalcDetailData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDamageCalcDetailData_pokemonBuilder? _pokemon;
  GDamageCalcDetailData_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GDamageCalcDetailData_pokemonBuilder();
  set pokemon(GDamageCalcDetailData_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GDamageCalcDetailDataBuilder() {
    GDamageCalcDetailData._initializeBuilder(this);
  }

  GDamageCalcDetailDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcDetailData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcDetailData;
  }

  @override
  void update(void Function(GDamageCalcDetailDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcDetailData build() => _build();

  _$GDamageCalcDetailData _build() {
    _$GDamageCalcDetailData _$result;
    try {
      _$result = _$v ??
          new _$GDamageCalcDetailData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDamageCalcDetailData', 'G__typename'),
              pokemon: _pokemon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        _pokemon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDamageCalcDetailData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcDetailData_pokemon extends GDamageCalcDetailData_pokemon {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final BuiltList<GDamageCalcDetailData_pokemon_moves> moves;
  @override
  final BuiltList<GDamageCalcDetailData_pokemon_types> types;
  @override
  final BuiltList<GDamageCalcDetailData_pokemon_abilities> abilities;

  factory _$GDamageCalcDetailData_pokemon(
          [void Function(GDamageCalcDetailData_pokemonBuilder)? updates]) =>
      (new GDamageCalcDetailData_pokemonBuilder()..update(updates))._build();

  _$GDamageCalcDetailData_pokemon._(
      {required this.G__typename,
      required this.id,
      required this.moves,
      required this.types,
      required this.abilities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcDetailData_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcDetailData_pokemon', 'id');
    BuiltValueNullFieldError.checkNotNull(
        moves, r'GDamageCalcDetailData_pokemon', 'moves');
    BuiltValueNullFieldError.checkNotNull(
        types, r'GDamageCalcDetailData_pokemon', 'types');
    BuiltValueNullFieldError.checkNotNull(
        abilities, r'GDamageCalcDetailData_pokemon', 'abilities');
  }

  @override
  GDamageCalcDetailData_pokemon rebuild(
          void Function(GDamageCalcDetailData_pokemonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcDetailData_pokemonBuilder toBuilder() =>
      new GDamageCalcDetailData_pokemonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcDetailData_pokemon &&
        G__typename == other.G__typename &&
        id == other.id &&
        moves == other.moves &&
        types == other.types &&
        abilities == other.abilities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, moves.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, abilities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcDetailData_pokemon')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('moves', moves)
          ..add('types', types)
          ..add('abilities', abilities))
        .toString();
  }
}

class GDamageCalcDetailData_pokemonBuilder
    implements
        Builder<GDamageCalcDetailData_pokemon,
            GDamageCalcDetailData_pokemonBuilder> {
  _$GDamageCalcDetailData_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<GDamageCalcDetailData_pokemon_moves>? _moves;
  ListBuilder<GDamageCalcDetailData_pokemon_moves> get moves =>
      _$this._moves ??= new ListBuilder<GDamageCalcDetailData_pokemon_moves>();
  set moves(ListBuilder<GDamageCalcDetailData_pokemon_moves>? moves) =>
      _$this._moves = moves;

  ListBuilder<GDamageCalcDetailData_pokemon_types>? _types;
  ListBuilder<GDamageCalcDetailData_pokemon_types> get types =>
      _$this._types ??= new ListBuilder<GDamageCalcDetailData_pokemon_types>();
  set types(ListBuilder<GDamageCalcDetailData_pokemon_types>? types) =>
      _$this._types = types;

  ListBuilder<GDamageCalcDetailData_pokemon_abilities>? _abilities;
  ListBuilder<GDamageCalcDetailData_pokemon_abilities> get abilities =>
      _$this._abilities ??=
          new ListBuilder<GDamageCalcDetailData_pokemon_abilities>();
  set abilities(
          ListBuilder<GDamageCalcDetailData_pokemon_abilities>? abilities) =>
      _$this._abilities = abilities;

  GDamageCalcDetailData_pokemonBuilder() {
    GDamageCalcDetailData_pokemon._initializeBuilder(this);
  }

  GDamageCalcDetailData_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _moves = $v.moves.toBuilder();
      _types = $v.types.toBuilder();
      _abilities = $v.abilities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcDetailData_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcDetailData_pokemon;
  }

  @override
  void update(void Function(GDamageCalcDetailData_pokemonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcDetailData_pokemon build() => _build();

  _$GDamageCalcDetailData_pokemon _build() {
    _$GDamageCalcDetailData_pokemon _$result;
    try {
      _$result = _$v ??
          new _$GDamageCalcDetailData_pokemon._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDamageCalcDetailData_pokemon', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GDamageCalcDetailData_pokemon', 'id'),
              moves: moves.build(),
              types: types.build(),
              abilities: abilities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moves';
        moves.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'abilities';
        abilities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDamageCalcDetailData_pokemon', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcDetailData_pokemon_moves
    extends GDamageCalcDetailData_pokemon_moves {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GDamageCalcDetailData_pokemon_moves(
          [void Function(GDamageCalcDetailData_pokemon_movesBuilder)?
              updates]) =>
      (new GDamageCalcDetailData_pokemon_movesBuilder()..update(updates))
          ._build();

  _$GDamageCalcDetailData_pokemon_moves._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcDetailData_pokemon_moves', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcDetailData_pokemon_moves', 'id');
  }

  @override
  GDamageCalcDetailData_pokemon_moves rebuild(
          void Function(GDamageCalcDetailData_pokemon_movesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcDetailData_pokemon_movesBuilder toBuilder() =>
      new GDamageCalcDetailData_pokemon_movesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcDetailData_pokemon_moves &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcDetailData_pokemon_moves')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GDamageCalcDetailData_pokemon_movesBuilder
    implements
        Builder<GDamageCalcDetailData_pokemon_moves,
            GDamageCalcDetailData_pokemon_movesBuilder> {
  _$GDamageCalcDetailData_pokemon_moves? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDamageCalcDetailData_pokemon_movesBuilder() {
    GDamageCalcDetailData_pokemon_moves._initializeBuilder(this);
  }

  GDamageCalcDetailData_pokemon_movesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcDetailData_pokemon_moves other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcDetailData_pokemon_moves;
  }

  @override
  void update(
      void Function(GDamageCalcDetailData_pokemon_movesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcDetailData_pokemon_moves build() => _build();

  _$GDamageCalcDetailData_pokemon_moves _build() {
    final _$result = _$v ??
        new _$GDamageCalcDetailData_pokemon_moves._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDamageCalcDetailData_pokemon_moves', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcDetailData_pokemon_moves', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcDetailData_pokemon_types
    extends GDamageCalcDetailData_pokemon_types {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GDamageCalcDetailData_pokemon_types(
          [void Function(GDamageCalcDetailData_pokemon_typesBuilder)?
              updates]) =>
      (new GDamageCalcDetailData_pokemon_typesBuilder()..update(updates))
          ._build();

  _$GDamageCalcDetailData_pokemon_types._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcDetailData_pokemon_types', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcDetailData_pokemon_types', 'id');
  }

  @override
  GDamageCalcDetailData_pokemon_types rebuild(
          void Function(GDamageCalcDetailData_pokemon_typesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcDetailData_pokemon_typesBuilder toBuilder() =>
      new GDamageCalcDetailData_pokemon_typesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcDetailData_pokemon_types &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcDetailData_pokemon_types')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GDamageCalcDetailData_pokemon_typesBuilder
    implements
        Builder<GDamageCalcDetailData_pokemon_types,
            GDamageCalcDetailData_pokemon_typesBuilder> {
  _$GDamageCalcDetailData_pokemon_types? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDamageCalcDetailData_pokemon_typesBuilder() {
    GDamageCalcDetailData_pokemon_types._initializeBuilder(this);
  }

  GDamageCalcDetailData_pokemon_typesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcDetailData_pokemon_types other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcDetailData_pokemon_types;
  }

  @override
  void update(
      void Function(GDamageCalcDetailData_pokemon_typesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcDetailData_pokemon_types build() => _build();

  _$GDamageCalcDetailData_pokemon_types _build() {
    final _$result = _$v ??
        new _$GDamageCalcDetailData_pokemon_types._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDamageCalcDetailData_pokemon_types', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcDetailData_pokemon_types', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcDetailData_pokemon_abilities
    extends GDamageCalcDetailData_pokemon_abilities {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GDamageCalcDetailData_pokemon_abilities(
          [void Function(GDamageCalcDetailData_pokemon_abilitiesBuilder)?
              updates]) =>
      (new GDamageCalcDetailData_pokemon_abilitiesBuilder()..update(updates))
          ._build();

  _$GDamageCalcDetailData_pokemon_abilities._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDamageCalcDetailData_pokemon_abilities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDamageCalcDetailData_pokemon_abilities', 'id');
  }

  @override
  GDamageCalcDetailData_pokemon_abilities rebuild(
          void Function(GDamageCalcDetailData_pokemon_abilitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcDetailData_pokemon_abilitiesBuilder toBuilder() =>
      new GDamageCalcDetailData_pokemon_abilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcDetailData_pokemon_abilities &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDamageCalcDetailData_pokemon_abilities')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GDamageCalcDetailData_pokemon_abilitiesBuilder
    implements
        Builder<GDamageCalcDetailData_pokemon_abilities,
            GDamageCalcDetailData_pokemon_abilitiesBuilder> {
  _$GDamageCalcDetailData_pokemon_abilities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDamageCalcDetailData_pokemon_abilitiesBuilder() {
    GDamageCalcDetailData_pokemon_abilities._initializeBuilder(this);
  }

  GDamageCalcDetailData_pokemon_abilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcDetailData_pokemon_abilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcDetailData_pokemon_abilities;
  }

  @override
  void update(
      void Function(GDamageCalcDetailData_pokemon_abilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcDetailData_pokemon_abilities build() => _build();

  _$GDamageCalcDetailData_pokemon_abilities _build() {
    final _$result = _$v ??
        new _$GDamageCalcDetailData_pokemon_abilities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDamageCalcDetailData_pokemon_abilities', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDamageCalcDetailData_pokemon_abilities', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

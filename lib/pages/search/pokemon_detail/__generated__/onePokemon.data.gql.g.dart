// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onePokemon.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOnePokemonDataData> _$gOnePokemonDataDataSerializer =
    new _$GOnePokemonDataDataSerializer();
Serializer<GOnePokemonDataData_pokemon> _$gOnePokemonDataDataPokemonSerializer =
    new _$GOnePokemonDataData_pokemonSerializer();
Serializer<GOnePokemonDataData_pokemon_evolutionTo>
    _$gOnePokemonDataDataPokemonEvolutionToSerializer =
    new _$GOnePokemonDataData_pokemon_evolutionToSerializer();
Serializer<GOnePokemonDataData_pokemon_evolutionTo_pokemon>
    _$gOnePokemonDataDataPokemonEvolutionToPokemonSerializer =
    new _$GOnePokemonDataData_pokemon_evolutionTo_pokemonSerializer();
Serializer<GOnePokemonDataData_pokemon_evolutionFrom>
    _$gOnePokemonDataDataPokemonEvolutionFromSerializer =
    new _$GOnePokemonDataData_pokemon_evolutionFromSerializer();
Serializer<GOnePokemonDataData_pokemon_evolutionFrom_pokemon>
    _$gOnePokemonDataDataPokemonEvolutionFromPokemonSerializer =
    new _$GOnePokemonDataData_pokemon_evolutionFrom_pokemonSerializer();
Serializer<GOnePokemonDataData_pokemon_abilities>
    _$gOnePokemonDataDataPokemonAbilitiesSerializer =
    new _$GOnePokemonDataData_pokemon_abilitiesSerializer();
Serializer<GOnePokemonDataData_pokemon_moves>
    _$gOnePokemonDataDataPokemonMovesSerializer =
    new _$GOnePokemonDataData_pokemon_movesSerializer();
Serializer<GOnePokemonDataData_pokemon_moves_type>
    _$gOnePokemonDataDataPokemonMovesTypeSerializer =
    new _$GOnePokemonDataData_pokemon_moves_typeSerializer();
Serializer<GOnePokemonDataData_pokemon_moves_attackType>
    _$gOnePokemonDataDataPokemonMovesAttackTypeSerializer =
    new _$GOnePokemonDataData_pokemon_moves_attackTypeSerializer();
Serializer<GOnePokemonDataData_pokemon_types>
    _$gOnePokemonDataDataPokemonTypesSerializer =
    new _$GOnePokemonDataData_pokemon_typesSerializer();

class _$GOnePokemonDataDataSerializer
    implements StructuredSerializer<GOnePokemonDataData> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData,
    _$GOnePokemonDataData
  ];
  @override
  final String wireName = 'GOnePokemonDataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData object,
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
            specifiedType: const FullType(GOnePokemonDataData_pokemon)));
    }
    return result;
  }

  @override
  GOnePokemonDataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataDataBuilder();

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
                  specifiedType: const FullType(GOnePokemonDataData_pokemon))!
              as GOnePokemonDataData_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonDataData_pokemonSerializer
    implements StructuredSerializer<GOnePokemonDataData_pokemon> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon,
    _$GOnePokemonDataData_pokemon
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'evolutionTo',
      serializers.serialize(object.evolutionTo,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_evolutionTo)])),
      'evolutionFrom',
      serializers.serialize(object.evolutionFrom,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GOnePokemonDataData_pokemon_evolutionFrom)
          ])),
      'abilities',
      serializers.serialize(object.abilities,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_abilities)])),
      'moves',
      serializers.serialize(object.moves,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_moves)])),
      'types',
      serializers.serialize(object.types,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_types)])),
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
  GOnePokemonDataData_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemonBuilder();

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
        case 'evolutionTo':
          result.evolutionTo.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonDataData_pokemon_evolutionTo)
              ]))! as BuiltList<Object?>);
          break;
        case 'evolutionFrom':
          result.evolutionFrom.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonDataData_pokemon_evolutionFrom)
              ]))! as BuiltList<Object?>);
          break;
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonDataData_pokemon_abilities)
              ]))! as BuiltList<Object?>);
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonDataData_pokemon_moves)
              ]))! as BuiltList<Object?>);
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonDataData_pokemon_types)
              ]))! as BuiltList<Object?>);
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

class _$GOnePokemonDataData_pokemon_evolutionToSerializer
    implements StructuredSerializer<GOnePokemonDataData_pokemon_evolutionTo> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_evolutionTo,
    _$GOnePokemonDataData_pokemon_evolutionTo
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_evolutionTo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData_pokemon_evolutionTo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemon',
      serializers.serialize(object.pokemon,
          specifiedType:
              const FullType(GOnePokemonDataData_pokemon_evolutionTo_pokemon)),
    ];

    return result;
  }

  @override
  GOnePokemonDataData_pokemon_evolutionTo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_evolutionToBuilder();

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
                  specifiedType: const FullType(
                      GOnePokemonDataData_pokemon_evolutionTo_pokemon))!
              as GOnePokemonDataData_pokemon_evolutionTo_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonDataData_pokemon_evolutionTo_pokemonSerializer
    implements
        StructuredSerializer<GOnePokemonDataData_pokemon_evolutionTo_pokemon> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_evolutionTo_pokemon,
    _$GOnePokemonDataData_pokemon_evolutionTo_pokemon
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_evolutionTo_pokemon';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOnePokemonDataData_pokemon_evolutionTo_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOnePokemonDataData_pokemon_evolutionTo_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder();

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
        case 'form':
          result.form = serializers.deserialize(value,
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

class _$GOnePokemonDataData_pokemon_evolutionFromSerializer
    implements StructuredSerializer<GOnePokemonDataData_pokemon_evolutionFrom> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_evolutionFrom,
    _$GOnePokemonDataData_pokemon_evolutionFrom
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_evolutionFrom';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData_pokemon_evolutionFrom object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemon',
      serializers.serialize(object.pokemon,
          specifiedType: const FullType(
              GOnePokemonDataData_pokemon_evolutionFrom_pokemon)),
    ];

    return result;
  }

  @override
  GOnePokemonDataData_pokemon_evolutionFrom deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_evolutionFromBuilder();

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
                  specifiedType: const FullType(
                      GOnePokemonDataData_pokemon_evolutionFrom_pokemon))!
              as GOnePokemonDataData_pokemon_evolutionFrom_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonDataData_pokemon_evolutionFrom_pokemonSerializer
    implements
        StructuredSerializer<
            GOnePokemonDataData_pokemon_evolutionFrom_pokemon> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_evolutionFrom_pokemon,
    _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_evolutionFrom_pokemon';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOnePokemonDataData_pokemon_evolutionFrom_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOnePokemonDataData_pokemon_evolutionFrom_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder();

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
        case 'form':
          result.form = serializers.deserialize(value,
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

class _$GOnePokemonDataData_pokemon_abilitiesSerializer
    implements StructuredSerializer<GOnePokemonDataData_pokemon_abilities> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_abilities,
    _$GOnePokemonDataData_pokemon_abilities
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_abilities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData_pokemon_abilities object,
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
    ];

    return result;
  }

  @override
  GOnePokemonDataData_pokemon_abilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_abilitiesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GOnePokemonDataData_pokemon_movesSerializer
    implements StructuredSerializer<GOnePokemonDataData_pokemon_moves> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_moves,
    _$GOnePokemonDataData_pokemon_moves
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_moves';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData_pokemon_moves object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'power',
      serializers.serialize(object.power, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'detail',
      serializers.serialize(object.detail,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GOnePokemonDataData_pokemon_moves_type)));
    }
    value = object.attackType;
    if (value != null) {
      result
        ..add('attackType')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GOnePokemonDataData_pokemon_moves_attackType)));
    }
    return result;
  }

  @override
  GOnePokemonDataData_pokemon_moves deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_movesBuilder();

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
        case 'power':
          result.power = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GOnePokemonDataData_pokemon_moves_type))!
              as GOnePokemonDataData_pokemon_moves_type);
          break;
        case 'attackType':
          result.attackType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOnePokemonDataData_pokemon_moves_attackType))!
              as GOnePokemonDataData_pokemon_moves_attackType);
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonDataData_pokemon_moves_typeSerializer
    implements StructuredSerializer<GOnePokemonDataData_pokemon_moves_type> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_moves_type,
    _$GOnePokemonDataData_pokemon_moves_type
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_moves_type';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData_pokemon_moves_type object,
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
  GOnePokemonDataData_pokemon_moves_type deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_moves_typeBuilder();

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

class _$GOnePokemonDataData_pokemon_moves_attackTypeSerializer
    implements
        StructuredSerializer<GOnePokemonDataData_pokemon_moves_attackType> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_moves_attackType,
    _$GOnePokemonDataData_pokemon_moves_attackType
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_moves_attackType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOnePokemonDataData_pokemon_moves_attackType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOnePokemonDataData_pokemon_moves_attackType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_moves_attackTypeBuilder();

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
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonDataData_pokemon_typesSerializer
    implements StructuredSerializer<GOnePokemonDataData_pokemon_types> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataData_pokemon_types,
    _$GOnePokemonDataData_pokemon_types
  ];
  @override
  final String wireName = 'GOnePokemonDataData_pokemon_types';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataData_pokemon_types object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'textImageUrl',
      serializers.serialize(object.textImageUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOnePokemonDataData_pokemon_types deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataData_pokemon_typesBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonDataData extends GOnePokemonDataData {
  @override
  final String G__typename;
  @override
  final GOnePokemonDataData_pokemon? pokemon;

  factory _$GOnePokemonDataData(
          [void Function(GOnePokemonDataDataBuilder)? updates]) =>
      (new GOnePokemonDataDataBuilder()..update(updates))._build();

  _$GOnePokemonDataData._({required this.G__typename, this.pokemon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonDataData', 'G__typename');
  }

  @override
  GOnePokemonDataData rebuild(
          void Function(GOnePokemonDataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataDataBuilder toBuilder() =>
      new GOnePokemonDataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData &&
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
    return (newBuiltValueToStringHelper(r'GOnePokemonDataData')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GOnePokemonDataDataBuilder
    implements Builder<GOnePokemonDataData, GOnePokemonDataDataBuilder> {
  _$GOnePokemonDataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GOnePokemonDataData_pokemonBuilder? _pokemon;
  GOnePokemonDataData_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GOnePokemonDataData_pokemonBuilder();
  set pokemon(GOnePokemonDataData_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GOnePokemonDataDataBuilder() {
    GOnePokemonDataData._initializeBuilder(this);
  }

  GOnePokemonDataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData;
  }

  @override
  void update(void Function(GOnePokemonDataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData build() => _build();

  _$GOnePokemonDataData _build() {
    _$GOnePokemonDataData _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonDataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GOnePokemonDataData', 'G__typename'),
              pokemon: _pokemon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        _pokemon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnePokemonDataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon extends GOnePokemonDataData_pokemon {
  @override
  final String G__typename;
  @override
  final BuiltList<GOnePokemonDataData_pokemon_evolutionTo> evolutionTo;
  @override
  final BuiltList<GOnePokemonDataData_pokemon_evolutionFrom> evolutionFrom;
  @override
  final BuiltList<GOnePokemonDataData_pokemon_abilities> abilities;
  @override
  final BuiltList<GOnePokemonDataData_pokemon_moves> moves;
  @override
  final BuiltList<GOnePokemonDataData_pokemon_types> types;
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
  final String imageLargeUrl;
  @override
  final String name;
  @override
  final String form;

  factory _$GOnePokemonDataData_pokemon(
          [void Function(GOnePokemonDataData_pokemonBuilder)? updates]) =>
      (new GOnePokemonDataData_pokemonBuilder()..update(updates))._build();

  _$GOnePokemonDataData_pokemon._(
      {required this.G__typename,
      required this.evolutionTo,
      required this.evolutionFrom,
      required this.abilities,
      required this.moves,
      required this.types,
      required this.statusA,
      required this.statusB,
      required this.statusC,
      required this.statusD,
      required this.statusH,
      required this.statusS,
      required this.imageLargeUrl,
      required this.name,
      required this.form})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonDataData_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        evolutionTo, r'GOnePokemonDataData_pokemon', 'evolutionTo');
    BuiltValueNullFieldError.checkNotNull(
        evolutionFrom, r'GOnePokemonDataData_pokemon', 'evolutionFrom');
    BuiltValueNullFieldError.checkNotNull(
        abilities, r'GOnePokemonDataData_pokemon', 'abilities');
    BuiltValueNullFieldError.checkNotNull(
        moves, r'GOnePokemonDataData_pokemon', 'moves');
    BuiltValueNullFieldError.checkNotNull(
        types, r'GOnePokemonDataData_pokemon', 'types');
    BuiltValueNullFieldError.checkNotNull(
        statusA, r'GOnePokemonDataData_pokemon', 'statusA');
    BuiltValueNullFieldError.checkNotNull(
        statusB, r'GOnePokemonDataData_pokemon', 'statusB');
    BuiltValueNullFieldError.checkNotNull(
        statusC, r'GOnePokemonDataData_pokemon', 'statusC');
    BuiltValueNullFieldError.checkNotNull(
        statusD, r'GOnePokemonDataData_pokemon', 'statusD');
    BuiltValueNullFieldError.checkNotNull(
        statusH, r'GOnePokemonDataData_pokemon', 'statusH');
    BuiltValueNullFieldError.checkNotNull(
        statusS, r'GOnePokemonDataData_pokemon', 'statusS');
    BuiltValueNullFieldError.checkNotNull(
        imageLargeUrl, r'GOnePokemonDataData_pokemon', 'imageLargeUrl');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonDataData_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GOnePokemonDataData_pokemon', 'form');
  }

  @override
  GOnePokemonDataData_pokemon rebuild(
          void Function(GOnePokemonDataData_pokemonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemonBuilder toBuilder() =>
      new GOnePokemonDataData_pokemonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon &&
        G__typename == other.G__typename &&
        evolutionTo == other.evolutionTo &&
        evolutionFrom == other.evolutionFrom &&
        abilities == other.abilities &&
        moves == other.moves &&
        types == other.types &&
        statusA == other.statusA &&
        statusB == other.statusB &&
        statusC == other.statusC &&
        statusD == other.statusD &&
        statusH == other.statusH &&
        statusS == other.statusS &&
        imageLargeUrl == other.imageLargeUrl &&
        name == other.name &&
        form == other.form;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, evolutionTo.hashCode);
    _$hash = $jc(_$hash, evolutionFrom.hashCode);
    _$hash = $jc(_$hash, abilities.hashCode);
    _$hash = $jc(_$hash, moves.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, statusA.hashCode);
    _$hash = $jc(_$hash, statusB.hashCode);
    _$hash = $jc(_$hash, statusC.hashCode);
    _$hash = $jc(_$hash, statusD.hashCode);
    _$hash = $jc(_$hash, statusH.hashCode);
    _$hash = $jc(_$hash, statusS.hashCode);
    _$hash = $jc(_$hash, imageLargeUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnePokemonDataData_pokemon')
          ..add('G__typename', G__typename)
          ..add('evolutionTo', evolutionTo)
          ..add('evolutionFrom', evolutionFrom)
          ..add('abilities', abilities)
          ..add('moves', moves)
          ..add('types', types)
          ..add('statusA', statusA)
          ..add('statusB', statusB)
          ..add('statusC', statusC)
          ..add('statusD', statusD)
          ..add('statusH', statusH)
          ..add('statusS', statusS)
          ..add('imageLargeUrl', imageLargeUrl)
          ..add('name', name)
          ..add('form', form))
        .toString();
  }
}

class GOnePokemonDataData_pokemonBuilder
    implements
        Builder<GOnePokemonDataData_pokemon,
            GOnePokemonDataData_pokemonBuilder> {
  _$GOnePokemonDataData_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GOnePokemonDataData_pokemon_evolutionTo>? _evolutionTo;
  ListBuilder<GOnePokemonDataData_pokemon_evolutionTo> get evolutionTo =>
      _$this._evolutionTo ??=
          new ListBuilder<GOnePokemonDataData_pokemon_evolutionTo>();
  set evolutionTo(
          ListBuilder<GOnePokemonDataData_pokemon_evolutionTo>? evolutionTo) =>
      _$this._evolutionTo = evolutionTo;

  ListBuilder<GOnePokemonDataData_pokemon_evolutionFrom>? _evolutionFrom;
  ListBuilder<GOnePokemonDataData_pokemon_evolutionFrom> get evolutionFrom =>
      _$this._evolutionFrom ??=
          new ListBuilder<GOnePokemonDataData_pokemon_evolutionFrom>();
  set evolutionFrom(
          ListBuilder<GOnePokemonDataData_pokemon_evolutionFrom>?
              evolutionFrom) =>
      _$this._evolutionFrom = evolutionFrom;

  ListBuilder<GOnePokemonDataData_pokemon_abilities>? _abilities;
  ListBuilder<GOnePokemonDataData_pokemon_abilities> get abilities =>
      _$this._abilities ??=
          new ListBuilder<GOnePokemonDataData_pokemon_abilities>();
  set abilities(
          ListBuilder<GOnePokemonDataData_pokemon_abilities>? abilities) =>
      _$this._abilities = abilities;

  ListBuilder<GOnePokemonDataData_pokemon_moves>? _moves;
  ListBuilder<GOnePokemonDataData_pokemon_moves> get moves =>
      _$this._moves ??= new ListBuilder<GOnePokemonDataData_pokemon_moves>();
  set moves(ListBuilder<GOnePokemonDataData_pokemon_moves>? moves) =>
      _$this._moves = moves;

  ListBuilder<GOnePokemonDataData_pokemon_types>? _types;
  ListBuilder<GOnePokemonDataData_pokemon_types> get types =>
      _$this._types ??= new ListBuilder<GOnePokemonDataData_pokemon_types>();
  set types(ListBuilder<GOnePokemonDataData_pokemon_types>? types) =>
      _$this._types = types;

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

  GOnePokemonDataData_pokemonBuilder() {
    GOnePokemonDataData_pokemon._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _evolutionTo = $v.evolutionTo.toBuilder();
      _evolutionFrom = $v.evolutionFrom.toBuilder();
      _abilities = $v.abilities.toBuilder();
      _moves = $v.moves.toBuilder();
      _types = $v.types.toBuilder();
      _statusA = $v.statusA;
      _statusB = $v.statusB;
      _statusC = $v.statusC;
      _statusD = $v.statusD;
      _statusH = $v.statusH;
      _statusS = $v.statusS;
      _imageLargeUrl = $v.imageLargeUrl;
      _name = $v.name;
      _form = $v.form;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon;
  }

  @override
  void update(void Function(GOnePokemonDataData_pokemonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon build() => _build();

  _$GOnePokemonDataData_pokemon _build() {
    _$GOnePokemonDataData_pokemon _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonDataData_pokemon._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GOnePokemonDataData_pokemon', 'G__typename'),
              evolutionTo: evolutionTo.build(),
              evolutionFrom: evolutionFrom.build(),
              abilities: abilities.build(),
              moves: moves.build(),
              types: types.build(),
              statusA: BuiltValueNullFieldError.checkNotNull(
                  statusA, r'GOnePokemonDataData_pokemon', 'statusA'),
              statusB: BuiltValueNullFieldError.checkNotNull(
                  statusB, r'GOnePokemonDataData_pokemon', 'statusB'),
              statusC: BuiltValueNullFieldError.checkNotNull(
                  statusC, r'GOnePokemonDataData_pokemon', 'statusC'),
              statusD: BuiltValueNullFieldError.checkNotNull(
                  statusD, r'GOnePokemonDataData_pokemon', 'statusD'),
              statusH: BuiltValueNullFieldError.checkNotNull(
                  statusH, r'GOnePokemonDataData_pokemon', 'statusH'),
              statusS: BuiltValueNullFieldError.checkNotNull(
                  statusS, r'GOnePokemonDataData_pokemon', 'statusS'),
              imageLargeUrl: BuiltValueNullFieldError.checkNotNull(
                  imageLargeUrl, r'GOnePokemonDataData_pokemon', 'imageLargeUrl'),
              name: BuiltValueNullFieldError.checkNotNull(name, r'GOnePokemonDataData_pokemon', 'name'),
              form: BuiltValueNullFieldError.checkNotNull(form, r'GOnePokemonDataData_pokemon', 'form'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evolutionTo';
        evolutionTo.build();
        _$failedField = 'evolutionFrom';
        evolutionFrom.build();
        _$failedField = 'abilities';
        abilities.build();
        _$failedField = 'moves';
        moves.build();
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnePokemonDataData_pokemon', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_evolutionTo
    extends GOnePokemonDataData_pokemon_evolutionTo {
  @override
  final String G__typename;
  @override
  final GOnePokemonDataData_pokemon_evolutionTo_pokemon pokemon;

  factory _$GOnePokemonDataData_pokemon_evolutionTo(
          [void Function(GOnePokemonDataData_pokemon_evolutionToBuilder)?
              updates]) =>
      (new GOnePokemonDataData_pokemon_evolutionToBuilder()..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_evolutionTo._(
      {required this.G__typename, required this.pokemon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonDataData_pokemon_evolutionTo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemon, r'GOnePokemonDataData_pokemon_evolutionTo', 'pokemon');
  }

  @override
  GOnePokemonDataData_pokemon_evolutionTo rebuild(
          void Function(GOnePokemonDataData_pokemon_evolutionToBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_evolutionToBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_evolutionToBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_evolutionTo &&
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
    return (newBuiltValueToStringHelper(
            r'GOnePokemonDataData_pokemon_evolutionTo')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_evolutionToBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_evolutionTo,
            GOnePokemonDataData_pokemon_evolutionToBuilder> {
  _$GOnePokemonDataData_pokemon_evolutionTo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder? _pokemon;
  GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder get pokemon =>
      _$this._pokemon ??=
          new GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder();
  set pokemon(
          GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GOnePokemonDataData_pokemon_evolutionToBuilder() {
    GOnePokemonDataData_pokemon_evolutionTo._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_evolutionToBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_evolutionTo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_evolutionTo;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_evolutionToBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_evolutionTo build() => _build();

  _$GOnePokemonDataData_pokemon_evolutionTo _build() {
    _$GOnePokemonDataData_pokemon_evolutionTo _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonDataData_pokemon_evolutionTo._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GOnePokemonDataData_pokemon_evolutionTo', 'G__typename'),
              pokemon: pokemon.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        pokemon.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnePokemonDataData_pokemon_evolutionTo',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_evolutionTo_pokemon
    extends GOnePokemonDataData_pokemon_evolutionTo_pokemon {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String form;
  @override
  final String imageUrl;

  factory _$GOnePokemonDataData_pokemon_evolutionTo_pokemon(
          [void Function(
                  GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder)?
              updates]) =>
      (new GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder()
            ..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_evolutionTo_pokemon._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.form,
      required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'form');
    BuiltValueNullFieldError.checkNotNull(imageUrl,
        r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'imageUrl');
  }

  @override
  GOnePokemonDataData_pokemon_evolutionTo_pokemon rebuild(
          void Function(GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_evolutionTo_pokemon &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        form == other.form &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOnePokemonDataData_pokemon_evolutionTo_pokemon')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('form', form)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_evolutionTo_pokemon,
            GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder> {
  _$GOnePokemonDataData_pokemon_evolutionTo_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder() {
    GOnePokemonDataData_pokemon_evolutionTo_pokemon._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _form = $v.form;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_evolutionTo_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_evolutionTo_pokemon;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_evolutionTo_pokemonBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_evolutionTo_pokemon build() => _build();

  _$GOnePokemonDataData_pokemon_evolutionTo_pokemon _build() {
    final _$result = _$v ??
        new _$GOnePokemonDataData_pokemon_evolutionTo_pokemon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOnePokemonDataData_pokemon_evolutionTo_pokemon',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'name'),
            form: BuiltValueNullFieldError.checkNotNull(form,
                r'GOnePokemonDataData_pokemon_evolutionTo_pokemon', 'form'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl,
                r'GOnePokemonDataData_pokemon_evolutionTo_pokemon',
                'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_evolutionFrom
    extends GOnePokemonDataData_pokemon_evolutionFrom {
  @override
  final String G__typename;
  @override
  final GOnePokemonDataData_pokemon_evolutionFrom_pokemon pokemon;

  factory _$GOnePokemonDataData_pokemon_evolutionFrom(
          [void Function(GOnePokemonDataData_pokemon_evolutionFromBuilder)?
              updates]) =>
      (new GOnePokemonDataData_pokemon_evolutionFromBuilder()..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_evolutionFrom._(
      {required this.G__typename, required this.pokemon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOnePokemonDataData_pokemon_evolutionFrom', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemon, r'GOnePokemonDataData_pokemon_evolutionFrom', 'pokemon');
  }

  @override
  GOnePokemonDataData_pokemon_evolutionFrom rebuild(
          void Function(GOnePokemonDataData_pokemon_evolutionFromBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_evolutionFromBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_evolutionFromBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_evolutionFrom &&
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
    return (newBuiltValueToStringHelper(
            r'GOnePokemonDataData_pokemon_evolutionFrom')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_evolutionFromBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_evolutionFrom,
            GOnePokemonDataData_pokemon_evolutionFromBuilder> {
  _$GOnePokemonDataData_pokemon_evolutionFrom? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder? _pokemon;
  GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder get pokemon =>
      _$this._pokemon ??=
          new GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder();
  set pokemon(
          GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GOnePokemonDataData_pokemon_evolutionFromBuilder() {
    GOnePokemonDataData_pokemon_evolutionFrom._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_evolutionFromBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_evolutionFrom other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_evolutionFrom;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_evolutionFromBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_evolutionFrom build() => _build();

  _$GOnePokemonDataData_pokemon_evolutionFrom _build() {
    _$GOnePokemonDataData_pokemon_evolutionFrom _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonDataData_pokemon_evolutionFrom._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GOnePokemonDataData_pokemon_evolutionFrom', 'G__typename'),
              pokemon: pokemon.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        pokemon.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnePokemonDataData_pokemon_evolutionFrom',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon
    extends GOnePokemonDataData_pokemon_evolutionFrom_pokemon {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String form;
  @override
  final String imageUrl;

  factory _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon(
          [void Function(
                  GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder)?
              updates]) =>
      (new GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder()
            ..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.form,
      required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'form');
    BuiltValueNullFieldError.checkNotNull(imageUrl,
        r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'imageUrl');
  }

  @override
  GOnePokemonDataData_pokemon_evolutionFrom_pokemon rebuild(
          void Function(
                  GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_evolutionFrom_pokemon &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        form == other.form &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('form', form)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_evolutionFrom_pokemon,
            GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder> {
  _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder() {
    GOnePokemonDataData_pokemon_evolutionFrom_pokemon._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _form = $v.form;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_evolutionFrom_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_evolutionFrom_pokemonBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_evolutionFrom_pokemon build() => _build();

  _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon _build() {
    final _$result = _$v ??
        new _$GOnePokemonDataData_pokemon_evolutionFrom_pokemon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'name'),
            form: BuiltValueNullFieldError.checkNotNull(form,
                r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon', 'form'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl,
                r'GOnePokemonDataData_pokemon_evolutionFrom_pokemon',
                'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_abilities
    extends GOnePokemonDataData_pokemon_abilities {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String detail;

  factory _$GOnePokemonDataData_pokemon_abilities(
          [void Function(GOnePokemonDataData_pokemon_abilitiesBuilder)?
              updates]) =>
      (new GOnePokemonDataData_pokemon_abilitiesBuilder()..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_abilities._(
      {required this.G__typename, required this.name, required this.detail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonDataData_pokemon_abilities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonDataData_pokemon_abilities', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GOnePokemonDataData_pokemon_abilities', 'detail');
  }

  @override
  GOnePokemonDataData_pokemon_abilities rebuild(
          void Function(GOnePokemonDataData_pokemon_abilitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_abilitiesBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_abilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_abilities &&
        G__typename == other.G__typename &&
        name == other.name &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOnePokemonDataData_pokemon_abilities')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('detail', detail))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_abilitiesBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_abilities,
            GOnePokemonDataData_pokemon_abilitiesBuilder> {
  _$GOnePokemonDataData_pokemon_abilities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  GOnePokemonDataData_pokemon_abilitiesBuilder() {
    GOnePokemonDataData_pokemon_abilities._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_abilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _detail = $v.detail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_abilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_abilities;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_abilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_abilities build() => _build();

  _$GOnePokemonDataData_pokemon_abilities _build() {
    final _$result = _$v ??
        new _$GOnePokemonDataData_pokemon_abilities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOnePokemonDataData_pokemon_abilities', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GOnePokemonDataData_pokemon_abilities', 'name'),
            detail: BuiltValueNullFieldError.checkNotNull(
                detail, r'GOnePokemonDataData_pokemon_abilities', 'detail'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_moves
    extends GOnePokemonDataData_pokemon_moves {
  @override
  final String G__typename;
  @override
  final int power;
  @override
  final String name;
  @override
  final String detail;
  @override
  final GOnePokemonDataData_pokemon_moves_type? type;
  @override
  final GOnePokemonDataData_pokemon_moves_attackType? attackType;

  factory _$GOnePokemonDataData_pokemon_moves(
          [void Function(GOnePokemonDataData_pokemon_movesBuilder)? updates]) =>
      (new GOnePokemonDataData_pokemon_movesBuilder()..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_moves._(
      {required this.G__typename,
      required this.power,
      required this.name,
      required this.detail,
      this.type,
      this.attackType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonDataData_pokemon_moves', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        power, r'GOnePokemonDataData_pokemon_moves', 'power');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonDataData_pokemon_moves', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GOnePokemonDataData_pokemon_moves', 'detail');
  }

  @override
  GOnePokemonDataData_pokemon_moves rebuild(
          void Function(GOnePokemonDataData_pokemon_movesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_movesBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_movesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_moves &&
        G__typename == other.G__typename &&
        power == other.power &&
        name == other.name &&
        detail == other.detail &&
        type == other.type &&
        attackType == other.attackType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, attackType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnePokemonDataData_pokemon_moves')
          ..add('G__typename', G__typename)
          ..add('power', power)
          ..add('name', name)
          ..add('detail', detail)
          ..add('type', type)
          ..add('attackType', attackType))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_movesBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_moves,
            GOnePokemonDataData_pokemon_movesBuilder> {
  _$GOnePokemonDataData_pokemon_moves? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _power;
  int? get power => _$this._power;
  set power(int? power) => _$this._power = power;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  GOnePokemonDataData_pokemon_moves_typeBuilder? _type;
  GOnePokemonDataData_pokemon_moves_typeBuilder get type =>
      _$this._type ??= new GOnePokemonDataData_pokemon_moves_typeBuilder();
  set type(GOnePokemonDataData_pokemon_moves_typeBuilder? type) =>
      _$this._type = type;

  GOnePokemonDataData_pokemon_moves_attackTypeBuilder? _attackType;
  GOnePokemonDataData_pokemon_moves_attackTypeBuilder get attackType =>
      _$this._attackType ??=
          new GOnePokemonDataData_pokemon_moves_attackTypeBuilder();
  set attackType(
          GOnePokemonDataData_pokemon_moves_attackTypeBuilder? attackType) =>
      _$this._attackType = attackType;

  GOnePokemonDataData_pokemon_movesBuilder() {
    GOnePokemonDataData_pokemon_moves._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_movesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _power = $v.power;
      _name = $v.name;
      _detail = $v.detail;
      _type = $v.type?.toBuilder();
      _attackType = $v.attackType?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_moves other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_moves;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_movesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_moves build() => _build();

  _$GOnePokemonDataData_pokemon_moves _build() {
    _$GOnePokemonDataData_pokemon_moves _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonDataData_pokemon_moves._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GOnePokemonDataData_pokemon_moves', 'G__typename'),
              power: BuiltValueNullFieldError.checkNotNull(
                  power, r'GOnePokemonDataData_pokemon_moves', 'power'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GOnePokemonDataData_pokemon_moves', 'name'),
              detail: BuiltValueNullFieldError.checkNotNull(
                  detail, r'GOnePokemonDataData_pokemon_moves', 'detail'),
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
            r'GOnePokemonDataData_pokemon_moves', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_moves_type
    extends GOnePokemonDataData_pokemon_moves_type {
  @override
  final String G__typename;
  @override
  final String textImageUrl;

  factory _$GOnePokemonDataData_pokemon_moves_type(
          [void Function(GOnePokemonDataData_pokemon_moves_typeBuilder)?
              updates]) =>
      (new GOnePokemonDataData_pokemon_moves_typeBuilder()..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_moves_type._(
      {required this.G__typename, required this.textImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonDataData_pokemon_moves_type', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(textImageUrl,
        r'GOnePokemonDataData_pokemon_moves_type', 'textImageUrl');
  }

  @override
  GOnePokemonDataData_pokemon_moves_type rebuild(
          void Function(GOnePokemonDataData_pokemon_moves_typeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_moves_typeBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_moves_typeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_moves_type &&
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
            r'GOnePokemonDataData_pokemon_moves_type')
          ..add('G__typename', G__typename)
          ..add('textImageUrl', textImageUrl))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_moves_typeBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_moves_type,
            GOnePokemonDataData_pokemon_moves_typeBuilder> {
  _$GOnePokemonDataData_pokemon_moves_type? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _textImageUrl;
  String? get textImageUrl => _$this._textImageUrl;
  set textImageUrl(String? textImageUrl) => _$this._textImageUrl = textImageUrl;

  GOnePokemonDataData_pokemon_moves_typeBuilder() {
    GOnePokemonDataData_pokemon_moves_type._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_moves_typeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _textImageUrl = $v.textImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_moves_type other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_moves_type;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_moves_typeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_moves_type build() => _build();

  _$GOnePokemonDataData_pokemon_moves_type _build() {
    final _$result = _$v ??
        new _$GOnePokemonDataData_pokemon_moves_type._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOnePokemonDataData_pokemon_moves_type', 'G__typename'),
            textImageUrl: BuiltValueNullFieldError.checkNotNull(textImageUrl,
                r'GOnePokemonDataData_pokemon_moves_type', 'textImageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_moves_attackType
    extends GOnePokemonDataData_pokemon_moves_attackType {
  @override
  final String G__typename;
  @override
  final String imageUrl;

  factory _$GOnePokemonDataData_pokemon_moves_attackType(
          [void Function(GOnePokemonDataData_pokemon_moves_attackTypeBuilder)?
              updates]) =>
      (new GOnePokemonDataData_pokemon_moves_attackTypeBuilder()
            ..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_moves_attackType._(
      {required this.G__typename, required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOnePokemonDataData_pokemon_moves_attackType', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'GOnePokemonDataData_pokemon_moves_attackType', 'imageUrl');
  }

  @override
  GOnePokemonDataData_pokemon_moves_attackType rebuild(
          void Function(GOnePokemonDataData_pokemon_moves_attackTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_moves_attackTypeBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_moves_attackTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_moves_attackType &&
        G__typename == other.G__typename &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GOnePokemonDataData_pokemon_moves_attackType')
          ..add('G__typename', G__typename)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_moves_attackTypeBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_moves_attackType,
            GOnePokemonDataData_pokemon_moves_attackTypeBuilder> {
  _$GOnePokemonDataData_pokemon_moves_attackType? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GOnePokemonDataData_pokemon_moves_attackTypeBuilder() {
    GOnePokemonDataData_pokemon_moves_attackType._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_moves_attackTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_moves_attackType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_moves_attackType;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_moves_attackTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_moves_attackType build() => _build();

  _$GOnePokemonDataData_pokemon_moves_attackType _build() {
    final _$result = _$v ??
        new _$GOnePokemonDataData_pokemon_moves_attackType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOnePokemonDataData_pokemon_moves_attackType', 'G__typename'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(imageUrl,
                r'GOnePokemonDataData_pokemon_moves_attackType', 'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonDataData_pokemon_types
    extends GOnePokemonDataData_pokemon_types {
  @override
  final String G__typename;
  @override
  final String textImageUrl;
  @override
  final String name;

  factory _$GOnePokemonDataData_pokemon_types(
          [void Function(GOnePokemonDataData_pokemon_typesBuilder)? updates]) =>
      (new GOnePokemonDataData_pokemon_typesBuilder()..update(updates))
          ._build();

  _$GOnePokemonDataData_pokemon_types._(
      {required this.G__typename,
      required this.textImageUrl,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonDataData_pokemon_types', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        textImageUrl, r'GOnePokemonDataData_pokemon_types', 'textImageUrl');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonDataData_pokemon_types', 'name');
  }

  @override
  GOnePokemonDataData_pokemon_types rebuild(
          void Function(GOnePokemonDataData_pokemon_typesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataData_pokemon_typesBuilder toBuilder() =>
      new GOnePokemonDataData_pokemon_typesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataData_pokemon_types &&
        G__typename == other.G__typename &&
        textImageUrl == other.textImageUrl &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, textImageUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnePokemonDataData_pokemon_types')
          ..add('G__typename', G__typename)
          ..add('textImageUrl', textImageUrl)
          ..add('name', name))
        .toString();
  }
}

class GOnePokemonDataData_pokemon_typesBuilder
    implements
        Builder<GOnePokemonDataData_pokemon_types,
            GOnePokemonDataData_pokemon_typesBuilder> {
  _$GOnePokemonDataData_pokemon_types? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _textImageUrl;
  String? get textImageUrl => _$this._textImageUrl;
  set textImageUrl(String? textImageUrl) => _$this._textImageUrl = textImageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GOnePokemonDataData_pokemon_typesBuilder() {
    GOnePokemonDataData_pokemon_types._initializeBuilder(this);
  }

  GOnePokemonDataData_pokemon_typesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _textImageUrl = $v.textImageUrl;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataData_pokemon_types other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataData_pokemon_types;
  }

  @override
  void update(
      void Function(GOnePokemonDataData_pokemon_typesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataData_pokemon_types build() => _build();

  _$GOnePokemonDataData_pokemon_types _build() {
    final _$result = _$v ??
        new _$GOnePokemonDataData_pokemon_types._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOnePokemonDataData_pokemon_types', 'G__typename'),
            textImageUrl: BuiltValueNullFieldError.checkNotNull(textImageUrl,
                r'GOnePokemonDataData_pokemon_types', 'textImageUrl'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GOnePokemonDataData_pokemon_types', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

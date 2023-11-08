// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onePokemonSimple.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOnePokemonSimpleDataData> _$gOnePokemonSimpleDataDataSerializer =
    new _$GOnePokemonSimpleDataDataSerializer();
Serializer<GOnePokemonSimpleDataData_pokemon>
    _$gOnePokemonSimpleDataDataPokemonSerializer =
    new _$GOnePokemonSimpleDataData_pokemonSerializer();
Serializer<GOnePokemonSimpleDataData_pokemon_abilities>
    _$gOnePokemonSimpleDataDataPokemonAbilitiesSerializer =
    new _$GOnePokemonSimpleDataData_pokemon_abilitiesSerializer();
Serializer<GOnePokemonSimpleDataData_pokemon_moves>
    _$gOnePokemonSimpleDataDataPokemonMovesSerializer =
    new _$GOnePokemonSimpleDataData_pokemon_movesSerializer();
Serializer<GOnePokemonSimpleDataData_pokemon_moves_type>
    _$gOnePokemonSimpleDataDataPokemonMovesTypeSerializer =
    new _$GOnePokemonSimpleDataData_pokemon_moves_typeSerializer();
Serializer<GOnePokemonSimpleDataData_pokemon_moves_attackType>
    _$gOnePokemonSimpleDataDataPokemonMovesAttackTypeSerializer =
    new _$GOnePokemonSimpleDataData_pokemon_moves_attackTypeSerializer();
Serializer<GOnePokemonSimpleDataData_pokemon_types>
    _$gOnePokemonSimpleDataDataPokemonTypesSerializer =
    new _$GOnePokemonSimpleDataData_pokemon_typesSerializer();

class _$GOnePokemonSimpleDataDataSerializer
    implements StructuredSerializer<GOnePokemonSimpleDataData> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataData,
    _$GOnePokemonSimpleDataData
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonSimpleDataData object,
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
            specifiedType: const FullType(GOnePokemonSimpleDataData_pokemon)));
    }
    return result;
  }

  @override
  GOnePokemonSimpleDataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonSimpleDataDataBuilder();

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
                      const FullType(GOnePokemonSimpleDataData_pokemon))!
              as GOnePokemonSimpleDataData_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonSimpleDataData_pokemonSerializer
    implements StructuredSerializer<GOnePokemonSimpleDataData_pokemon> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataData_pokemon,
    _$GOnePokemonSimpleDataData_pokemon
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataData_pokemon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonSimpleDataData_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'abilities',
      serializers.serialize(object.abilities,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GOnePokemonSimpleDataData_pokemon_abilities)
          ])),
      'moves',
      serializers.serialize(object.moves,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GOnePokemonSimpleDataData_pokemon_moves)])),
      'types',
      serializers.serialize(object.types,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GOnePokemonSimpleDataData_pokemon_types)])),
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
  GOnePokemonSimpleDataData_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonSimpleDataData_pokemonBuilder();

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
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonSimpleDataData_pokemon_abilities)
              ]))! as BuiltList<Object?>);
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonSimpleDataData_pokemon_moves)
              ]))! as BuiltList<Object?>);
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GOnePokemonSimpleDataData_pokemon_types)
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

class _$GOnePokemonSimpleDataData_pokemon_abilitiesSerializer
    implements
        StructuredSerializer<GOnePokemonSimpleDataData_pokemon_abilities> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataData_pokemon_abilities,
    _$GOnePokemonSimpleDataData_pokemon_abilities
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataData_pokemon_abilities';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOnePokemonSimpleDataData_pokemon_abilities object,
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
  GOnePokemonSimpleDataData_pokemon_abilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonSimpleDataData_pokemon_abilitiesBuilder();

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

class _$GOnePokemonSimpleDataData_pokemon_movesSerializer
    implements StructuredSerializer<GOnePokemonSimpleDataData_pokemon_moves> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataData_pokemon_moves,
    _$GOnePokemonSimpleDataData_pokemon_moves
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataData_pokemon_moves';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonSimpleDataData_pokemon_moves object,
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
                const FullType(GOnePokemonSimpleDataData_pokemon_moves_type)));
    }
    value = object.attackType;
    if (value != null) {
      result
        ..add('attackType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GOnePokemonSimpleDataData_pokemon_moves_attackType)));
    }
    return result;
  }

  @override
  GOnePokemonSimpleDataData_pokemon_moves deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonSimpleDataData_pokemon_movesBuilder();

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
                  specifiedType: const FullType(
                      GOnePokemonSimpleDataData_pokemon_moves_type))!
              as GOnePokemonSimpleDataData_pokemon_moves_type);
          break;
        case 'attackType':
          result.attackType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GOnePokemonSimpleDataData_pokemon_moves_attackType))!
              as GOnePokemonSimpleDataData_pokemon_moves_attackType);
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonSimpleDataData_pokemon_moves_typeSerializer
    implements
        StructuredSerializer<GOnePokemonSimpleDataData_pokemon_moves_type> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataData_pokemon_moves_type,
    _$GOnePokemonSimpleDataData_pokemon_moves_type
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataData_pokemon_moves_type';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOnePokemonSimpleDataData_pokemon_moves_type object,
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
  GOnePokemonSimpleDataData_pokemon_moves_type deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonSimpleDataData_pokemon_moves_typeBuilder();

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

class _$GOnePokemonSimpleDataData_pokemon_moves_attackTypeSerializer
    implements
        StructuredSerializer<
            GOnePokemonSimpleDataData_pokemon_moves_attackType> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataData_pokemon_moves_attackType,
    _$GOnePokemonSimpleDataData_pokemon_moves_attackType
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataData_pokemon_moves_attackType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GOnePokemonSimpleDataData_pokemon_moves_attackType object,
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
  GOnePokemonSimpleDataData_pokemon_moves_attackType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder();

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

class _$GOnePokemonSimpleDataData_pokemon_typesSerializer
    implements StructuredSerializer<GOnePokemonSimpleDataData_pokemon_types> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataData_pokemon_types,
    _$GOnePokemonSimpleDataData_pokemon_types
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataData_pokemon_types';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonSimpleDataData_pokemon_types object,
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
  GOnePokemonSimpleDataData_pokemon_types deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonSimpleDataData_pokemon_typesBuilder();

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

class _$GOnePokemonSimpleDataData extends GOnePokemonSimpleDataData {
  @override
  final String G__typename;
  @override
  final GOnePokemonSimpleDataData_pokemon? pokemon;

  factory _$GOnePokemonSimpleDataData(
          [void Function(GOnePokemonSimpleDataDataBuilder)? updates]) =>
      (new GOnePokemonSimpleDataDataBuilder()..update(updates))._build();

  _$GOnePokemonSimpleDataData._({required this.G__typename, this.pokemon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonSimpleDataData', 'G__typename');
  }

  @override
  GOnePokemonSimpleDataData rebuild(
          void Function(GOnePokemonSimpleDataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataDataBuilder toBuilder() =>
      new GOnePokemonSimpleDataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataData &&
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
    return (newBuiltValueToStringHelper(r'GOnePokemonSimpleDataData')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GOnePokemonSimpleDataDataBuilder
    implements
        Builder<GOnePokemonSimpleDataData, GOnePokemonSimpleDataDataBuilder> {
  _$GOnePokemonSimpleDataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GOnePokemonSimpleDataData_pokemonBuilder? _pokemon;
  GOnePokemonSimpleDataData_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GOnePokemonSimpleDataData_pokemonBuilder();
  set pokemon(GOnePokemonSimpleDataData_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GOnePokemonSimpleDataDataBuilder() {
    GOnePokemonSimpleDataData._initializeBuilder(this);
  }

  GOnePokemonSimpleDataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonSimpleDataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataData;
  }

  @override
  void update(void Function(GOnePokemonSimpleDataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataData build() => _build();

  _$GOnePokemonSimpleDataData _build() {
    _$GOnePokemonSimpleDataData _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonSimpleDataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GOnePokemonSimpleDataData', 'G__typename'),
              pokemon: _pokemon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        _pokemon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnePokemonSimpleDataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonSimpleDataData_pokemon
    extends GOnePokemonSimpleDataData_pokemon {
  @override
  final String G__typename;
  @override
  final BuiltList<GOnePokemonSimpleDataData_pokemon_abilities> abilities;
  @override
  final BuiltList<GOnePokemonSimpleDataData_pokemon_moves> moves;
  @override
  final BuiltList<GOnePokemonSimpleDataData_pokemon_types> types;
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

  factory _$GOnePokemonSimpleDataData_pokemon(
          [void Function(GOnePokemonSimpleDataData_pokemonBuilder)? updates]) =>
      (new GOnePokemonSimpleDataData_pokemonBuilder()..update(updates))
          ._build();

  _$GOnePokemonSimpleDataData_pokemon._(
      {required this.G__typename,
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
        G__typename, r'GOnePokemonSimpleDataData_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        abilities, r'GOnePokemonSimpleDataData_pokemon', 'abilities');
    BuiltValueNullFieldError.checkNotNull(
        moves, r'GOnePokemonSimpleDataData_pokemon', 'moves');
    BuiltValueNullFieldError.checkNotNull(
        types, r'GOnePokemonSimpleDataData_pokemon', 'types');
    BuiltValueNullFieldError.checkNotNull(
        statusA, r'GOnePokemonSimpleDataData_pokemon', 'statusA');
    BuiltValueNullFieldError.checkNotNull(
        statusB, r'GOnePokemonSimpleDataData_pokemon', 'statusB');
    BuiltValueNullFieldError.checkNotNull(
        statusC, r'GOnePokemonSimpleDataData_pokemon', 'statusC');
    BuiltValueNullFieldError.checkNotNull(
        statusD, r'GOnePokemonSimpleDataData_pokemon', 'statusD');
    BuiltValueNullFieldError.checkNotNull(
        statusH, r'GOnePokemonSimpleDataData_pokemon', 'statusH');
    BuiltValueNullFieldError.checkNotNull(
        statusS, r'GOnePokemonSimpleDataData_pokemon', 'statusS');
    BuiltValueNullFieldError.checkNotNull(
        imageLargeUrl, r'GOnePokemonSimpleDataData_pokemon', 'imageLargeUrl');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonSimpleDataData_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GOnePokemonSimpleDataData_pokemon', 'form');
  }

  @override
  GOnePokemonSimpleDataData_pokemon rebuild(
          void Function(GOnePokemonSimpleDataData_pokemonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataData_pokemonBuilder toBuilder() =>
      new GOnePokemonSimpleDataData_pokemonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataData_pokemon &&
        G__typename == other.G__typename &&
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
    return (newBuiltValueToStringHelper(r'GOnePokemonSimpleDataData_pokemon')
          ..add('G__typename', G__typename)
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

class GOnePokemonSimpleDataData_pokemonBuilder
    implements
        Builder<GOnePokemonSimpleDataData_pokemon,
            GOnePokemonSimpleDataData_pokemonBuilder> {
  _$GOnePokemonSimpleDataData_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GOnePokemonSimpleDataData_pokemon_abilities>? _abilities;
  ListBuilder<GOnePokemonSimpleDataData_pokemon_abilities> get abilities =>
      _$this._abilities ??=
          new ListBuilder<GOnePokemonSimpleDataData_pokemon_abilities>();
  set abilities(
          ListBuilder<GOnePokemonSimpleDataData_pokemon_abilities>?
              abilities) =>
      _$this._abilities = abilities;

  ListBuilder<GOnePokemonSimpleDataData_pokemon_moves>? _moves;
  ListBuilder<GOnePokemonSimpleDataData_pokemon_moves> get moves =>
      _$this._moves ??=
          new ListBuilder<GOnePokemonSimpleDataData_pokemon_moves>();
  set moves(ListBuilder<GOnePokemonSimpleDataData_pokemon_moves>? moves) =>
      _$this._moves = moves;

  ListBuilder<GOnePokemonSimpleDataData_pokemon_types>? _types;
  ListBuilder<GOnePokemonSimpleDataData_pokemon_types> get types =>
      _$this._types ??=
          new ListBuilder<GOnePokemonSimpleDataData_pokemon_types>();
  set types(ListBuilder<GOnePokemonSimpleDataData_pokemon_types>? types) =>
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

  GOnePokemonSimpleDataData_pokemonBuilder() {
    GOnePokemonSimpleDataData_pokemon._initializeBuilder(this);
  }

  GOnePokemonSimpleDataData_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
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
  void replace(GOnePokemonSimpleDataData_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataData_pokemon;
  }

  @override
  void update(
      void Function(GOnePokemonSimpleDataData_pokemonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataData_pokemon build() => _build();

  _$GOnePokemonSimpleDataData_pokemon _build() {
    _$GOnePokemonSimpleDataData_pokemon _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonSimpleDataData_pokemon._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GOnePokemonSimpleDataData_pokemon', 'G__typename'),
              abilities: abilities.build(),
              moves: moves.build(),
              types: types.build(),
              statusA: BuiltValueNullFieldError.checkNotNull(
                  statusA, r'GOnePokemonSimpleDataData_pokemon', 'statusA'),
              statusB: BuiltValueNullFieldError.checkNotNull(
                  statusB, r'GOnePokemonSimpleDataData_pokemon', 'statusB'),
              statusC: BuiltValueNullFieldError.checkNotNull(
                  statusC, r'GOnePokemonSimpleDataData_pokemon', 'statusC'),
              statusD: BuiltValueNullFieldError.checkNotNull(
                  statusD, r'GOnePokemonSimpleDataData_pokemon', 'statusD'),
              statusH: BuiltValueNullFieldError.checkNotNull(
                  statusH, r'GOnePokemonSimpleDataData_pokemon', 'statusH'),
              statusS: BuiltValueNullFieldError.checkNotNull(
                  statusS, r'GOnePokemonSimpleDataData_pokemon', 'statusS'),
              imageLargeUrl:
                  BuiltValueNullFieldError.checkNotNull(imageLargeUrl, r'GOnePokemonSimpleDataData_pokemon', 'imageLargeUrl'),
              name: BuiltValueNullFieldError.checkNotNull(name, r'GOnePokemonSimpleDataData_pokemon', 'name'),
              form: BuiltValueNullFieldError.checkNotNull(form, r'GOnePokemonSimpleDataData_pokemon', 'form'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'abilities';
        abilities.build();
        _$failedField = 'moves';
        moves.build();
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnePokemonSimpleDataData_pokemon', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonSimpleDataData_pokemon_abilities
    extends GOnePokemonSimpleDataData_pokemon_abilities {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String detail;

  factory _$GOnePokemonSimpleDataData_pokemon_abilities(
          [void Function(GOnePokemonSimpleDataData_pokemon_abilitiesBuilder)?
              updates]) =>
      (new GOnePokemonSimpleDataData_pokemon_abilitiesBuilder()
            ..update(updates))
          ._build();

  _$GOnePokemonSimpleDataData_pokemon_abilities._(
      {required this.G__typename, required this.name, required this.detail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOnePokemonSimpleDataData_pokemon_abilities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonSimpleDataData_pokemon_abilities', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GOnePokemonSimpleDataData_pokemon_abilities', 'detail');
  }

  @override
  GOnePokemonSimpleDataData_pokemon_abilities rebuild(
          void Function(GOnePokemonSimpleDataData_pokemon_abilitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataData_pokemon_abilitiesBuilder toBuilder() =>
      new GOnePokemonSimpleDataData_pokemon_abilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataData_pokemon_abilities &&
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
            r'GOnePokemonSimpleDataData_pokemon_abilities')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('detail', detail))
        .toString();
  }
}

class GOnePokemonSimpleDataData_pokemon_abilitiesBuilder
    implements
        Builder<GOnePokemonSimpleDataData_pokemon_abilities,
            GOnePokemonSimpleDataData_pokemon_abilitiesBuilder> {
  _$GOnePokemonSimpleDataData_pokemon_abilities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  GOnePokemonSimpleDataData_pokemon_abilitiesBuilder() {
    GOnePokemonSimpleDataData_pokemon_abilities._initializeBuilder(this);
  }

  GOnePokemonSimpleDataData_pokemon_abilitiesBuilder get _$this {
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
  void replace(GOnePokemonSimpleDataData_pokemon_abilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataData_pokemon_abilities;
  }

  @override
  void update(
      void Function(GOnePokemonSimpleDataData_pokemon_abilitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataData_pokemon_abilities build() => _build();

  _$GOnePokemonSimpleDataData_pokemon_abilities _build() {
    final _$result = _$v ??
        new _$GOnePokemonSimpleDataData_pokemon_abilities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOnePokemonSimpleDataData_pokemon_abilities', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GOnePokemonSimpleDataData_pokemon_abilities', 'name'),
            detail: BuiltValueNullFieldError.checkNotNull(detail,
                r'GOnePokemonSimpleDataData_pokemon_abilities', 'detail'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonSimpleDataData_pokemon_moves
    extends GOnePokemonSimpleDataData_pokemon_moves {
  @override
  final String G__typename;
  @override
  final int power;
  @override
  final String name;
  @override
  final String detail;
  @override
  final GOnePokemonSimpleDataData_pokemon_moves_type? type;
  @override
  final GOnePokemonSimpleDataData_pokemon_moves_attackType? attackType;

  factory _$GOnePokemonSimpleDataData_pokemon_moves(
          [void Function(GOnePokemonSimpleDataData_pokemon_movesBuilder)?
              updates]) =>
      (new GOnePokemonSimpleDataData_pokemon_movesBuilder()..update(updates))
          ._build();

  _$GOnePokemonSimpleDataData_pokemon_moves._(
      {required this.G__typename,
      required this.power,
      required this.name,
      required this.detail,
      this.type,
      this.attackType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonSimpleDataData_pokemon_moves', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        power, r'GOnePokemonSimpleDataData_pokemon_moves', 'power');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonSimpleDataData_pokemon_moves', 'name');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'GOnePokemonSimpleDataData_pokemon_moves', 'detail');
  }

  @override
  GOnePokemonSimpleDataData_pokemon_moves rebuild(
          void Function(GOnePokemonSimpleDataData_pokemon_movesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataData_pokemon_movesBuilder toBuilder() =>
      new GOnePokemonSimpleDataData_pokemon_movesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataData_pokemon_moves &&
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
    return (newBuiltValueToStringHelper(
            r'GOnePokemonSimpleDataData_pokemon_moves')
          ..add('G__typename', G__typename)
          ..add('power', power)
          ..add('name', name)
          ..add('detail', detail)
          ..add('type', type)
          ..add('attackType', attackType))
        .toString();
  }
}

class GOnePokemonSimpleDataData_pokemon_movesBuilder
    implements
        Builder<GOnePokemonSimpleDataData_pokemon_moves,
            GOnePokemonSimpleDataData_pokemon_movesBuilder> {
  _$GOnePokemonSimpleDataData_pokemon_moves? _$v;

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

  GOnePokemonSimpleDataData_pokemon_moves_typeBuilder? _type;
  GOnePokemonSimpleDataData_pokemon_moves_typeBuilder get type =>
      _$this._type ??=
          new GOnePokemonSimpleDataData_pokemon_moves_typeBuilder();
  set type(GOnePokemonSimpleDataData_pokemon_moves_typeBuilder? type) =>
      _$this._type = type;

  GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder? _attackType;
  GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder get attackType =>
      _$this._attackType ??=
          new GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder();
  set attackType(
          GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder?
              attackType) =>
      _$this._attackType = attackType;

  GOnePokemonSimpleDataData_pokemon_movesBuilder() {
    GOnePokemonSimpleDataData_pokemon_moves._initializeBuilder(this);
  }

  GOnePokemonSimpleDataData_pokemon_movesBuilder get _$this {
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
  void replace(GOnePokemonSimpleDataData_pokemon_moves other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataData_pokemon_moves;
  }

  @override
  void update(
      void Function(GOnePokemonSimpleDataData_pokemon_movesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataData_pokemon_moves build() => _build();

  _$GOnePokemonSimpleDataData_pokemon_moves _build() {
    _$GOnePokemonSimpleDataData_pokemon_moves _$result;
    try {
      _$result = _$v ??
          new _$GOnePokemonSimpleDataData_pokemon_moves._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GOnePokemonSimpleDataData_pokemon_moves', 'G__typename'),
              power: BuiltValueNullFieldError.checkNotNull(
                  power, r'GOnePokemonSimpleDataData_pokemon_moves', 'power'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GOnePokemonSimpleDataData_pokemon_moves', 'name'),
              detail: BuiltValueNullFieldError.checkNotNull(
                  detail, r'GOnePokemonSimpleDataData_pokemon_moves', 'detail'),
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
            r'GOnePokemonSimpleDataData_pokemon_moves',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonSimpleDataData_pokemon_moves_type
    extends GOnePokemonSimpleDataData_pokemon_moves_type {
  @override
  final String G__typename;
  @override
  final String textImageUrl;

  factory _$GOnePokemonSimpleDataData_pokemon_moves_type(
          [void Function(GOnePokemonSimpleDataData_pokemon_moves_typeBuilder)?
              updates]) =>
      (new GOnePokemonSimpleDataData_pokemon_moves_typeBuilder()
            ..update(updates))
          ._build();

  _$GOnePokemonSimpleDataData_pokemon_moves_type._(
      {required this.G__typename, required this.textImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOnePokemonSimpleDataData_pokemon_moves_type', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(textImageUrl,
        r'GOnePokemonSimpleDataData_pokemon_moves_type', 'textImageUrl');
  }

  @override
  GOnePokemonSimpleDataData_pokemon_moves_type rebuild(
          void Function(GOnePokemonSimpleDataData_pokemon_moves_typeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataData_pokemon_moves_typeBuilder toBuilder() =>
      new GOnePokemonSimpleDataData_pokemon_moves_typeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataData_pokemon_moves_type &&
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
            r'GOnePokemonSimpleDataData_pokemon_moves_type')
          ..add('G__typename', G__typename)
          ..add('textImageUrl', textImageUrl))
        .toString();
  }
}

class GOnePokemonSimpleDataData_pokemon_moves_typeBuilder
    implements
        Builder<GOnePokemonSimpleDataData_pokemon_moves_type,
            GOnePokemonSimpleDataData_pokemon_moves_typeBuilder> {
  _$GOnePokemonSimpleDataData_pokemon_moves_type? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _textImageUrl;
  String? get textImageUrl => _$this._textImageUrl;
  set textImageUrl(String? textImageUrl) => _$this._textImageUrl = textImageUrl;

  GOnePokemonSimpleDataData_pokemon_moves_typeBuilder() {
    GOnePokemonSimpleDataData_pokemon_moves_type._initializeBuilder(this);
  }

  GOnePokemonSimpleDataData_pokemon_moves_typeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _textImageUrl = $v.textImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonSimpleDataData_pokemon_moves_type other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataData_pokemon_moves_type;
  }

  @override
  void update(
      void Function(GOnePokemonSimpleDataData_pokemon_moves_typeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataData_pokemon_moves_type build() => _build();

  _$GOnePokemonSimpleDataData_pokemon_moves_type _build() {
    final _$result = _$v ??
        new _$GOnePokemonSimpleDataData_pokemon_moves_type._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOnePokemonSimpleDataData_pokemon_moves_type', 'G__typename'),
            textImageUrl: BuiltValueNullFieldError.checkNotNull(
                textImageUrl,
                r'GOnePokemonSimpleDataData_pokemon_moves_type',
                'textImageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonSimpleDataData_pokemon_moves_attackType
    extends GOnePokemonSimpleDataData_pokemon_moves_attackType {
  @override
  final String G__typename;
  @override
  final String imageUrl;

  factory _$GOnePokemonSimpleDataData_pokemon_moves_attackType(
          [void Function(
                  GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder)?
              updates]) =>
      (new GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder()
            ..update(updates))
          ._build();

  _$GOnePokemonSimpleDataData_pokemon_moves_attackType._(
      {required this.G__typename, required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GOnePokemonSimpleDataData_pokemon_moves_attackType', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(imageUrl,
        r'GOnePokemonSimpleDataData_pokemon_moves_attackType', 'imageUrl');
  }

  @override
  GOnePokemonSimpleDataData_pokemon_moves_attackType rebuild(
          void Function(
                  GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder toBuilder() =>
      new GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataData_pokemon_moves_attackType &&
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
            r'GOnePokemonSimpleDataData_pokemon_moves_attackType')
          ..add('G__typename', G__typename)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder
    implements
        Builder<GOnePokemonSimpleDataData_pokemon_moves_attackType,
            GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder> {
  _$GOnePokemonSimpleDataData_pokemon_moves_attackType? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder() {
    GOnePokemonSimpleDataData_pokemon_moves_attackType._initializeBuilder(this);
  }

  GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonSimpleDataData_pokemon_moves_attackType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataData_pokemon_moves_attackType;
  }

  @override
  void update(
      void Function(GOnePokemonSimpleDataData_pokemon_moves_attackTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataData_pokemon_moves_attackType build() => _build();

  _$GOnePokemonSimpleDataData_pokemon_moves_attackType _build() {
    final _$result = _$v ??
        new _$GOnePokemonSimpleDataData_pokemon_moves_attackType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GOnePokemonSimpleDataData_pokemon_moves_attackType',
                'G__typename'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl,
                r'GOnePokemonSimpleDataData_pokemon_moves_attackType',
                'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GOnePokemonSimpleDataData_pokemon_types
    extends GOnePokemonSimpleDataData_pokemon_types {
  @override
  final String G__typename;
  @override
  final String textImageUrl;
  @override
  final String name;

  factory _$GOnePokemonSimpleDataData_pokemon_types(
          [void Function(GOnePokemonSimpleDataData_pokemon_typesBuilder)?
              updates]) =>
      (new GOnePokemonSimpleDataData_pokemon_typesBuilder()..update(updates))
          ._build();

  _$GOnePokemonSimpleDataData_pokemon_types._(
      {required this.G__typename,
      required this.textImageUrl,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GOnePokemonSimpleDataData_pokemon_types', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(textImageUrl,
        r'GOnePokemonSimpleDataData_pokemon_types', 'textImageUrl');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GOnePokemonSimpleDataData_pokemon_types', 'name');
  }

  @override
  GOnePokemonSimpleDataData_pokemon_types rebuild(
          void Function(GOnePokemonSimpleDataData_pokemon_typesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataData_pokemon_typesBuilder toBuilder() =>
      new GOnePokemonSimpleDataData_pokemon_typesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataData_pokemon_types &&
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
    return (newBuiltValueToStringHelper(
            r'GOnePokemonSimpleDataData_pokemon_types')
          ..add('G__typename', G__typename)
          ..add('textImageUrl', textImageUrl)
          ..add('name', name))
        .toString();
  }
}

class GOnePokemonSimpleDataData_pokemon_typesBuilder
    implements
        Builder<GOnePokemonSimpleDataData_pokemon_types,
            GOnePokemonSimpleDataData_pokemon_typesBuilder> {
  _$GOnePokemonSimpleDataData_pokemon_types? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _textImageUrl;
  String? get textImageUrl => _$this._textImageUrl;
  set textImageUrl(String? textImageUrl) => _$this._textImageUrl = textImageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GOnePokemonSimpleDataData_pokemon_typesBuilder() {
    GOnePokemonSimpleDataData_pokemon_types._initializeBuilder(this);
  }

  GOnePokemonSimpleDataData_pokemon_typesBuilder get _$this {
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
  void replace(GOnePokemonSimpleDataData_pokemon_types other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataData_pokemon_types;
  }

  @override
  void update(
      void Function(GOnePokemonSimpleDataData_pokemon_typesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataData_pokemon_types build() => _build();

  _$GOnePokemonSimpleDataData_pokemon_types _build() {
    final _$result = _$v ??
        new _$GOnePokemonSimpleDataData_pokemon_types._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GOnePokemonSimpleDataData_pokemon_types', 'G__typename'),
            textImageUrl: BuiltValueNullFieldError.checkNotNull(textImageUrl,
                r'GOnePokemonSimpleDataData_pokemon_types', 'textImageUrl'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GOnePokemonSimpleDataData_pokemon_types', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

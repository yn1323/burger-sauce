// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latestBattleData.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLatestBattleDataIndexData> _$gLatestBattleDataIndexDataSerializer =
    new _$GLatestBattleDataIndexDataSerializer();
Serializer<GLatestBattleDataIndexData_battleDatasLatest>
    _$gLatestBattleDataIndexDataBattleDatasLatestSerializer =
    new _$GLatestBattleDataIndexData_battleDatasLatestSerializer();
Serializer<GLatestBattleDataIndexData_battleDatasLatest_battleDatas>
    _$gLatestBattleDataIndexDataBattleDatasLatestBattleDatasSerializer =
    new _$GLatestBattleDataIndexData_battleDatasLatest_battleDatasSerializer();
Serializer<GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon>
    _$gLatestBattleDataIndexDataBattleDatasLatestBattleDatasPokemonSerializer =
    new _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonSerializer();

class _$GLatestBattleDataIndexDataSerializer
    implements StructuredSerializer<GLatestBattleDataIndexData> {
  @override
  final Iterable<Type> types = const [
    GLatestBattleDataIndexData,
    _$GLatestBattleDataIndexData
  ];
  @override
  final String wireName = 'GLatestBattleDataIndexData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLatestBattleDataIndexData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.battleDatasLatest;
    if (value != null) {
      result
        ..add('battleDatasLatest')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GLatestBattleDataIndexData_battleDatasLatest)));
    }
    return result;
  }

  @override
  GLatestBattleDataIndexData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLatestBattleDataIndexDataBuilder();

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
                  specifiedType: const FullType(
                      GLatestBattleDataIndexData_battleDatasLatest))!
              as GLatestBattleDataIndexData_battleDatasLatest);
          break;
      }
    }

    return result.build();
  }
}

class _$GLatestBattleDataIndexData_battleDatasLatestSerializer
    implements
        StructuredSerializer<GLatestBattleDataIndexData_battleDatasLatest> {
  @override
  final Iterable<Type> types = const [
    GLatestBattleDataIndexData_battleDatasLatest,
    _$GLatestBattleDataIndexData_battleDatasLatest
  ];
  @override
  final String wireName = 'GLatestBattleDataIndexData_battleDatasLatest';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GLatestBattleDataIndexData_battleDatasLatest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'capturedAt',
      serializers.serialize(object.capturedAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'battleDatas',
      serializers.serialize(object.battleDatas,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GLatestBattleDataIndexData_battleDatasLatest_battleDatas)
          ])),
    ];

    return result;
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLatestBattleDataIndexData_battleDatasLatestBuilder();

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
        case 'capturedAt':
          result.capturedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'battleDatas':
          result.battleDatas.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GLatestBattleDataIndexData_battleDatasLatest_battleDatas)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLatestBattleDataIndexData_battleDatasLatest_battleDatasSerializer
    implements
        StructuredSerializer<
            GLatestBattleDataIndexData_battleDatasLatest_battleDatas> {
  @override
  final Iterable<Type> types = const [
    GLatestBattleDataIndexData_battleDatasLatest_battleDatas,
    _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas
  ];
  @override
  final String wireName =
      'GLatestBattleDataIndexData_battleDatasLatest_battleDatas';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GLatestBattleDataIndexData_battleDatasLatest_battleDatas object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemon',
      serializers.serialize(object.pokemon,
          specifiedType: const FullType(
              GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder();

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
                      GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon))!
              as GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon);
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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

class _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonSerializer
    implements
        StructuredSerializer<
            GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon> {
  @override
  final Iterable<Type> types = const [
    GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon,
    _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon
  ];
  @override
  final String wireName =
      'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon object,
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
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder();

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
        case 'form':
          result.form = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLatestBattleDataIndexData extends GLatestBattleDataIndexData {
  @override
  final String G__typename;
  @override
  final GLatestBattleDataIndexData_battleDatasLatest? battleDatasLatest;

  factory _$GLatestBattleDataIndexData(
          [void Function(GLatestBattleDataIndexDataBuilder)? updates]) =>
      (new GLatestBattleDataIndexDataBuilder()..update(updates))._build();

  _$GLatestBattleDataIndexData._(
      {required this.G__typename, this.battleDatasLatest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLatestBattleDataIndexData', 'G__typename');
  }

  @override
  GLatestBattleDataIndexData rebuild(
          void Function(GLatestBattleDataIndexDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLatestBattleDataIndexDataBuilder toBuilder() =>
      new GLatestBattleDataIndexDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLatestBattleDataIndexData &&
        G__typename == other.G__typename &&
        battleDatasLatest == other.battleDatasLatest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, battleDatasLatest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLatestBattleDataIndexData')
          ..add('G__typename', G__typename)
          ..add('battleDatasLatest', battleDatasLatest))
        .toString();
  }
}

class GLatestBattleDataIndexDataBuilder
    implements
        Builder<GLatestBattleDataIndexData, GLatestBattleDataIndexDataBuilder> {
  _$GLatestBattleDataIndexData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLatestBattleDataIndexData_battleDatasLatestBuilder? _battleDatasLatest;
  GLatestBattleDataIndexData_battleDatasLatestBuilder get battleDatasLatest =>
      _$this._battleDatasLatest ??=
          new GLatestBattleDataIndexData_battleDatasLatestBuilder();
  set battleDatasLatest(
          GLatestBattleDataIndexData_battleDatasLatestBuilder?
              battleDatasLatest) =>
      _$this._battleDatasLatest = battleDatasLatest;

  GLatestBattleDataIndexDataBuilder() {
    GLatestBattleDataIndexData._initializeBuilder(this);
  }

  GLatestBattleDataIndexDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _battleDatasLatest = $v.battleDatasLatest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLatestBattleDataIndexData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLatestBattleDataIndexData;
  }

  @override
  void update(void Function(GLatestBattleDataIndexDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLatestBattleDataIndexData build() => _build();

  _$GLatestBattleDataIndexData _build() {
    _$GLatestBattleDataIndexData _$result;
    try {
      _$result = _$v ??
          new _$GLatestBattleDataIndexData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLatestBattleDataIndexData', 'G__typename'),
              battleDatasLatest: _battleDatasLatest?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'battleDatasLatest';
        _battleDatasLatest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLatestBattleDataIndexData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLatestBattleDataIndexData_battleDatasLatest
    extends GLatestBattleDataIndexData_battleDatasLatest {
  @override
  final String G__typename;
  @override
  final _i2.GDateTime capturedAt;
  @override
  final BuiltList<GLatestBattleDataIndexData_battleDatasLatest_battleDatas>
      battleDatas;

  factory _$GLatestBattleDataIndexData_battleDatasLatest(
          [void Function(GLatestBattleDataIndexData_battleDatasLatestBuilder)?
              updates]) =>
      (new GLatestBattleDataIndexData_battleDatasLatestBuilder()
            ..update(updates))
          ._build();

  _$GLatestBattleDataIndexData_battleDatasLatest._(
      {required this.G__typename,
      required this.capturedAt,
      required this.battleDatas})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GLatestBattleDataIndexData_battleDatasLatest', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(capturedAt,
        r'GLatestBattleDataIndexData_battleDatasLatest', 'capturedAt');
    BuiltValueNullFieldError.checkNotNull(battleDatas,
        r'GLatestBattleDataIndexData_battleDatasLatest', 'battleDatas');
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest rebuild(
          void Function(GLatestBattleDataIndexData_battleDatasLatestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLatestBattleDataIndexData_battleDatasLatestBuilder toBuilder() =>
      new GLatestBattleDataIndexData_battleDatasLatestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLatestBattleDataIndexData_battleDatasLatest &&
        G__typename == other.G__typename &&
        capturedAt == other.capturedAt &&
        battleDatas == other.battleDatas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, capturedAt.hashCode);
    _$hash = $jc(_$hash, battleDatas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLatestBattleDataIndexData_battleDatasLatest')
          ..add('G__typename', G__typename)
          ..add('capturedAt', capturedAt)
          ..add('battleDatas', battleDatas))
        .toString();
  }
}

class GLatestBattleDataIndexData_battleDatasLatestBuilder
    implements
        Builder<GLatestBattleDataIndexData_battleDatasLatest,
            GLatestBattleDataIndexData_battleDatasLatestBuilder> {
  _$GLatestBattleDataIndexData_battleDatasLatest? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GDateTimeBuilder? _capturedAt;
  _i2.GDateTimeBuilder get capturedAt =>
      _$this._capturedAt ??= new _i2.GDateTimeBuilder();
  set capturedAt(_i2.GDateTimeBuilder? capturedAt) =>
      _$this._capturedAt = capturedAt;

  ListBuilder<GLatestBattleDataIndexData_battleDatasLatest_battleDatas>?
      _battleDatas;
  ListBuilder<GLatestBattleDataIndexData_battleDatasLatest_battleDatas>
      get battleDatas => _$this._battleDatas ??= new ListBuilder<
          GLatestBattleDataIndexData_battleDatasLatest_battleDatas>();
  set battleDatas(
          ListBuilder<GLatestBattleDataIndexData_battleDatasLatest_battleDatas>?
              battleDatas) =>
      _$this._battleDatas = battleDatas;

  GLatestBattleDataIndexData_battleDatasLatestBuilder() {
    GLatestBattleDataIndexData_battleDatasLatest._initializeBuilder(this);
  }

  GLatestBattleDataIndexData_battleDatasLatestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _capturedAt = $v.capturedAt.toBuilder();
      _battleDatas = $v.battleDatas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLatestBattleDataIndexData_battleDatasLatest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLatestBattleDataIndexData_battleDatasLatest;
  }

  @override
  void update(
      void Function(GLatestBattleDataIndexData_battleDatasLatestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest build() => _build();

  _$GLatestBattleDataIndexData_battleDatasLatest _build() {
    _$GLatestBattleDataIndexData_battleDatasLatest _$result;
    try {
      _$result = _$v ??
          new _$GLatestBattleDataIndexData_battleDatasLatest._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GLatestBattleDataIndexData_battleDatasLatest',
                  'G__typename'),
              capturedAt: capturedAt.build(),
              battleDatas: battleDatas.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capturedAt';
        capturedAt.build();
        _$failedField = 'battleDatas';
        battleDatas.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLatestBattleDataIndexData_battleDatasLatest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas
    extends GLatestBattleDataIndexData_battleDatasLatest_battleDatas {
  @override
  final String G__typename;
  @override
  final GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon
      pokemon;
  @override
  final int rank;
  @override
  final String id;

  factory _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas(
          [void Function(
                  GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder)?
              updates]) =>
      (new GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder()
            ..update(updates))
          ._build();

  _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas._(
      {required this.G__typename,
      required this.pokemon,
      required this.rank,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(pokemon,
        r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas', 'pokemon');
    BuiltValueNullFieldError.checkNotNull(rank,
        r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas', 'rank');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas', 'id');
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas rebuild(
          void Function(
                  GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder toBuilder() =>
      new GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLatestBattleDataIndexData_battleDatasLatest_battleDatas &&
        G__typename == other.G__typename &&
        pokemon == other.pokemon &&
        rank == other.rank &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pokemon.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon)
          ..add('rank', rank)
          ..add('id', id))
        .toString();
  }
}

class GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder
    implements
        Builder<GLatestBattleDataIndexData_battleDatasLatest_battleDatas,
            GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder> {
  _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder?
      _pokemon;
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder
      get pokemon => _$this._pokemon ??=
          new GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder();
  set pokemon(
          GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder?
              pokemon) =>
      _$this._pokemon = pokemon;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder() {
    GLatestBattleDataIndexData_battleDatasLatest_battleDatas._initializeBuilder(
        this);
  }

  GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon.toBuilder();
      _rank = $v.rank;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLatestBattleDataIndexData_battleDatasLatest_battleDatas other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas;
  }

  @override
  void update(
      void Function(
              GLatestBattleDataIndexData_battleDatasLatest_battleDatasBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas build() => _build();

  _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas _build() {
    _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas _$result;
    try {
      _$result = _$v ??
          new _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas',
                  'G__typename'),
              pokemon: pokemon.build(),
              rank: BuiltValueNullFieldError.checkNotNull(
                  rank,
                  r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas',
                  'rank'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas',
                  'id'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        pokemon.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon
    extends GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String form;

  factory _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon(
          [void Function(
                  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder)?
              updates]) =>
      (new GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder()
            ..update(updates))
          ._build();

  _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon._(
      {required this.G__typename,
      required this.name,
      required this.imageUrl,
      required this.form})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl,
        r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon',
        'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        form,
        r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon',
        'form');
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon rebuild(
          void Function(
                  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder
      toBuilder() =>
          new GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon &&
        G__typename == other.G__typename &&
        name == other.name &&
        imageUrl == other.imageUrl &&
        form == other.form;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('imageUrl', imageUrl)
          ..add('form', form))
        .toString();
  }
}

class GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder
    implements
        Builder<
            GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon,
            GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder> {
  _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder() {
    GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon
        ._initializeBuilder(this);
  }

  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _form = $v.form;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon;
  }

  @override
  void update(
      void Function(
              GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemonBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon build() =>
      _build();

  _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon _build() {
    final _$result = _$v ??
        new _$GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon', 'name'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl,
                r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon',
                'imageUrl'),
            form: BuiltValueNullFieldError.checkNotNull(
                form,
                r'GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon',
                'form'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

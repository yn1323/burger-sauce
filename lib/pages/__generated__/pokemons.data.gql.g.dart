// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemonsData> _$gPokemonsDataSerializer =
    new _$GPokemonsDataSerializer();
Serializer<GPokemonsData_pokemons> _$gPokemonsDataPokemonsSerializer =
    new _$GPokemonsData_pokemonsSerializer();
Serializer<GPokemonsData_pokemons_battleData>
    _$gPokemonsDataPokemonsBattleDataSerializer =
    new _$GPokemonsData_pokemons_battleDataSerializer();
Serializer<GPokemonsData_pokemons_battleData_battleIndex>
    _$gPokemonsDataPokemonsBattleDataBattleIndexSerializer =
    new _$GPokemonsData_pokemons_battleData_battleIndexSerializer();

class _$GPokemonsDataSerializer implements StructuredSerializer<GPokemonsData> {
  @override
  final Iterable<Type> types = const [GPokemonsData, _$GPokemonsData];
  @override
  final String wireName = 'GPokemonsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemonsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemons',
      serializers.serialize(object.pokemons,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GPokemonsData_pokemons)])),
    ];

    return result;
  }

  @override
  GPokemonsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonsDataBuilder();

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
        case 'pokemons':
          result.pokemons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GPokemonsData_pokemons)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemonsData_pokemonsSerializer
    implements StructuredSerializer<GPokemonsData_pokemons> {
  @override
  final Iterable<Type> types = const [
    GPokemonsData_pokemons,
    _$GPokemonsData_pokemons
  ];
  @override
  final String wireName = 'GPokemonsData_pokemons';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemonsData_pokemons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'base64Image',
      serializers.serialize(object.base64Image,
          specifiedType: const FullType(String)),
      'battleData',
      serializers.serialize(object.battleData,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(GPokemonsData_pokemons_battleData)
          ])),
    ];

    return result;
  }

  @override
  GPokemonsData_pokemons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonsData_pokemonsBuilder();

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
        case 'base64Image':
          result.base64Image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'battleData':
          result.battleData.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GPokemonsData_pokemons_battleData)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemonsData_pokemons_battleDataSerializer
    implements StructuredSerializer<GPokemonsData_pokemons_battleData> {
  @override
  final Iterable<Type> types = const [
    GPokemonsData_pokemons_battleData,
    _$GPokemonsData_pokemons_battleData
  ];
  @override
  final String wireName = 'GPokemonsData_pokemons_battleData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemonsData_pokemons_battleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'battleIndex',
      serializers.serialize(object.battleIndex,
          specifiedType:
              const FullType(GPokemonsData_pokemons_battleData_battleIndex)),
    ];

    return result;
  }

  @override
  GPokemonsData_pokemons_battleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonsData_pokemons_battleDataBuilder();

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
        case 'battleIndex':
          result.battleIndex.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPokemonsData_pokemons_battleData_battleIndex))!
              as GPokemonsData_pokemons_battleData_battleIndex);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemonsData_pokemons_battleData_battleIndexSerializer
    implements
        StructuredSerializer<GPokemonsData_pokemons_battleData_battleIndex> {
  @override
  final Iterable<Type> types = const [
    GPokemonsData_pokemons_battleData_battleIndex,
    _$GPokemonsData_pokemons_battleData_battleIndex
  ];
  @override
  final String wireName = 'GPokemonsData_pokemons_battleData_battleIndex';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPokemonsData_pokemons_battleData_battleIndex object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'capturedAt',
      serializers.serialize(object.capturedAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'startAt',
      serializers.serialize(object.startAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];

    return result;
  }

  @override
  GPokemonsData_pokemons_battleData_battleIndex deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonsData_pokemons_battleData_battleIndexBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'startAt':
          result.startAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemonsData extends GPokemonsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GPokemonsData_pokemons> pokemons;

  factory _$GPokemonsData([void Function(GPokemonsDataBuilder)? updates]) =>
      (new GPokemonsDataBuilder()..update(updates))._build();

  _$GPokemonsData._({required this.G__typename, required this.pokemons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemonsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemons, r'GPokemonsData', 'pokemons');
  }

  @override
  GPokemonsData rebuild(void Function(GPokemonsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonsDataBuilder toBuilder() => new GPokemonsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonsData &&
        G__typename == other.G__typename &&
        pokemons == other.pokemons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pokemons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemonsData')
          ..add('G__typename', G__typename)
          ..add('pokemons', pokemons))
        .toString();
  }
}

class GPokemonsDataBuilder
    implements Builder<GPokemonsData, GPokemonsDataBuilder> {
  _$GPokemonsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPokemonsData_pokemons>? _pokemons;
  ListBuilder<GPokemonsData_pokemons> get pokemons =>
      _$this._pokemons ??= new ListBuilder<GPokemonsData_pokemons>();
  set pokemons(ListBuilder<GPokemonsData_pokemons>? pokemons) =>
      _$this._pokemons = pokemons;

  GPokemonsDataBuilder() {
    GPokemonsData._initializeBuilder(this);
  }

  GPokemonsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemons = $v.pokemons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemonsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonsData;
  }

  @override
  void update(void Function(GPokemonsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonsData build() => _build();

  _$GPokemonsData _build() {
    _$GPokemonsData _$result;
    try {
      _$result = _$v ??
          new _$GPokemonsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPokemonsData', 'G__typename'),
              pokemons: pokemons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemons';
        pokemons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemonsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemonsData_pokemons extends GPokemonsData_pokemons {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String base64Image;
  @override
  final BuiltList<GPokemonsData_pokemons_battleData?> battleData;

  factory _$GPokemonsData_pokemons(
          [void Function(GPokemonsData_pokemonsBuilder)? updates]) =>
      (new GPokemonsData_pokemonsBuilder()..update(updates))._build();

  _$GPokemonsData_pokemons._(
      {required this.G__typename,
      required this.name,
      required this.base64Image,
      required this.battleData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemonsData_pokemons', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemonsData_pokemons', 'name');
    BuiltValueNullFieldError.checkNotNull(
        base64Image, r'GPokemonsData_pokemons', 'base64Image');
    BuiltValueNullFieldError.checkNotNull(
        battleData, r'GPokemonsData_pokemons', 'battleData');
  }

  @override
  GPokemonsData_pokemons rebuild(
          void Function(GPokemonsData_pokemonsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonsData_pokemonsBuilder toBuilder() =>
      new GPokemonsData_pokemonsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonsData_pokemons &&
        G__typename == other.G__typename &&
        name == other.name &&
        base64Image == other.base64Image &&
        battleData == other.battleData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, base64Image.hashCode);
    _$hash = $jc(_$hash, battleData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemonsData_pokemons')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('base64Image', base64Image)
          ..add('battleData', battleData))
        .toString();
  }
}

class GPokemonsData_pokemonsBuilder
    implements Builder<GPokemonsData_pokemons, GPokemonsData_pokemonsBuilder> {
  _$GPokemonsData_pokemons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _base64Image;
  String? get base64Image => _$this._base64Image;
  set base64Image(String? base64Image) => _$this._base64Image = base64Image;

  ListBuilder<GPokemonsData_pokemons_battleData?>? _battleData;
  ListBuilder<GPokemonsData_pokemons_battleData?> get battleData =>
      _$this._battleData ??=
          new ListBuilder<GPokemonsData_pokemons_battleData?>();
  set battleData(ListBuilder<GPokemonsData_pokemons_battleData?>? battleData) =>
      _$this._battleData = battleData;

  GPokemonsData_pokemonsBuilder() {
    GPokemonsData_pokemons._initializeBuilder(this);
  }

  GPokemonsData_pokemonsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _base64Image = $v.base64Image;
      _battleData = $v.battleData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemonsData_pokemons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonsData_pokemons;
  }

  @override
  void update(void Function(GPokemonsData_pokemonsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonsData_pokemons build() => _build();

  _$GPokemonsData_pokemons _build() {
    _$GPokemonsData_pokemons _$result;
    try {
      _$result = _$v ??
          new _$GPokemonsData_pokemons._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPokemonsData_pokemons', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GPokemonsData_pokemons', 'name'),
              base64Image: BuiltValueNullFieldError.checkNotNull(
                  base64Image, r'GPokemonsData_pokemons', 'base64Image'),
              battleData: battleData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'battleData';
        battleData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemonsData_pokemons', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemonsData_pokemons_battleData
    extends GPokemonsData_pokemons_battleData {
  @override
  final String G__typename;
  @override
  final GPokemonsData_pokemons_battleData_battleIndex battleIndex;

  factory _$GPokemonsData_pokemons_battleData(
          [void Function(GPokemonsData_pokemons_battleDataBuilder)? updates]) =>
      (new GPokemonsData_pokemons_battleDataBuilder()..update(updates))
          ._build();

  _$GPokemonsData_pokemons_battleData._(
      {required this.G__typename, required this.battleIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemonsData_pokemons_battleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        battleIndex, r'GPokemonsData_pokemons_battleData', 'battleIndex');
  }

  @override
  GPokemonsData_pokemons_battleData rebuild(
          void Function(GPokemonsData_pokemons_battleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonsData_pokemons_battleDataBuilder toBuilder() =>
      new GPokemonsData_pokemons_battleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonsData_pokemons_battleData &&
        G__typename == other.G__typename &&
        battleIndex == other.battleIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, battleIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemonsData_pokemons_battleData')
          ..add('G__typename', G__typename)
          ..add('battleIndex', battleIndex))
        .toString();
  }
}

class GPokemonsData_pokemons_battleDataBuilder
    implements
        Builder<GPokemonsData_pokemons_battleData,
            GPokemonsData_pokemons_battleDataBuilder> {
  _$GPokemonsData_pokemons_battleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPokemonsData_pokemons_battleData_battleIndexBuilder? _battleIndex;
  GPokemonsData_pokemons_battleData_battleIndexBuilder get battleIndex =>
      _$this._battleIndex ??=
          new GPokemonsData_pokemons_battleData_battleIndexBuilder();
  set battleIndex(
          GPokemonsData_pokemons_battleData_battleIndexBuilder? battleIndex) =>
      _$this._battleIndex = battleIndex;

  GPokemonsData_pokemons_battleDataBuilder() {
    GPokemonsData_pokemons_battleData._initializeBuilder(this);
  }

  GPokemonsData_pokemons_battleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _battleIndex = $v.battleIndex.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemonsData_pokemons_battleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonsData_pokemons_battleData;
  }

  @override
  void update(
      void Function(GPokemonsData_pokemons_battleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonsData_pokemons_battleData build() => _build();

  _$GPokemonsData_pokemons_battleData _build() {
    _$GPokemonsData_pokemons_battleData _$result;
    try {
      _$result = _$v ??
          new _$GPokemonsData_pokemons_battleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPokemonsData_pokemons_battleData', 'G__typename'),
              battleIndex: battleIndex.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'battleIndex';
        battleIndex.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemonsData_pokemons_battleData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemonsData_pokemons_battleData_battleIndex
    extends GPokemonsData_pokemons_battleData_battleIndex {
  @override
  final String G__typename;
  @override
  final _i2.GDateTime capturedAt;
  @override
  final String name;
  @override
  final _i2.GDateTime startAt;

  factory _$GPokemonsData_pokemons_battleData_battleIndex(
          [void Function(GPokemonsData_pokemons_battleData_battleIndexBuilder)?
              updates]) =>
      (new GPokemonsData_pokemons_battleData_battleIndexBuilder()
            ..update(updates))
          ._build();

  _$GPokemonsData_pokemons_battleData_battleIndex._(
      {required this.G__typename,
      required this.capturedAt,
      required this.name,
      required this.startAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GPokemonsData_pokemons_battleData_battleIndex', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(capturedAt,
        r'GPokemonsData_pokemons_battleData_battleIndex', 'capturedAt');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemonsData_pokemons_battleData_battleIndex', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startAt, r'GPokemonsData_pokemons_battleData_battleIndex', 'startAt');
  }

  @override
  GPokemonsData_pokemons_battleData_battleIndex rebuild(
          void Function(GPokemonsData_pokemons_battleData_battleIndexBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonsData_pokemons_battleData_battleIndexBuilder toBuilder() =>
      new GPokemonsData_pokemons_battleData_battleIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonsData_pokemons_battleData_battleIndex &&
        G__typename == other.G__typename &&
        capturedAt == other.capturedAt &&
        name == other.name &&
        startAt == other.startAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, capturedAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, startAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPokemonsData_pokemons_battleData_battleIndex')
          ..add('G__typename', G__typename)
          ..add('capturedAt', capturedAt)
          ..add('name', name)
          ..add('startAt', startAt))
        .toString();
  }
}

class GPokemonsData_pokemons_battleData_battleIndexBuilder
    implements
        Builder<GPokemonsData_pokemons_battleData_battleIndex,
            GPokemonsData_pokemons_battleData_battleIndexBuilder> {
  _$GPokemonsData_pokemons_battleData_battleIndex? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GDateTimeBuilder? _capturedAt;
  _i2.GDateTimeBuilder get capturedAt =>
      _$this._capturedAt ??= new _i2.GDateTimeBuilder();
  set capturedAt(_i2.GDateTimeBuilder? capturedAt) =>
      _$this._capturedAt = capturedAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.GDateTimeBuilder? _startAt;
  _i2.GDateTimeBuilder get startAt =>
      _$this._startAt ??= new _i2.GDateTimeBuilder();
  set startAt(_i2.GDateTimeBuilder? startAt) => _$this._startAt = startAt;

  GPokemonsData_pokemons_battleData_battleIndexBuilder() {
    GPokemonsData_pokemons_battleData_battleIndex._initializeBuilder(this);
  }

  GPokemonsData_pokemons_battleData_battleIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _capturedAt = $v.capturedAt.toBuilder();
      _name = $v.name;
      _startAt = $v.startAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemonsData_pokemons_battleData_battleIndex other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonsData_pokemons_battleData_battleIndex;
  }

  @override
  void update(
      void Function(GPokemonsData_pokemons_battleData_battleIndexBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonsData_pokemons_battleData_battleIndex build() => _build();

  _$GPokemonsData_pokemons_battleData_battleIndex _build() {
    _$GPokemonsData_pokemons_battleData_battleIndex _$result;
    try {
      _$result = _$v ??
          new _$GPokemonsData_pokemons_battleData_battleIndex._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GPokemonsData_pokemons_battleData_battleIndex',
                  'G__typename'),
              capturedAt: capturedAt.build(),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'GPokemonsData_pokemons_battleData_battleIndex', 'name'),
              startAt: startAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capturedAt';
        capturedAt.build();

        _$failedField = 'startAt';
        startAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemonsData_pokemons_battleData_battleIndex',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

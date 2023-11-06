// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wakeup.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWakeUpData> _$gWakeUpDataSerializer = new _$GWakeUpDataSerializer();
Serializer<GWakeUpData_natures> _$gWakeUpDataNaturesSerializer =
    new _$GWakeUpData_naturesSerializer();

class _$GWakeUpDataSerializer implements StructuredSerializer<GWakeUpData> {
  @override
  final Iterable<Type> types = const [GWakeUpData, _$GWakeUpData];
  @override
  final String wireName = 'GWakeUpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWakeUpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'natures',
      serializers.serialize(object.natures,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GWakeUpData_natures)])),
    ];

    return result;
  }

  @override
  GWakeUpData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWakeUpDataBuilder();

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
        case 'natures':
          result.natures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GWakeUpData_natures)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GWakeUpData_naturesSerializer
    implements StructuredSerializer<GWakeUpData_natures> {
  @override
  final Iterable<Type> types = const [
    GWakeUpData_natures,
    _$GWakeUpData_natures
  ];
  @override
  final String wireName = 'GWakeUpData_natures';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GWakeUpData_natures object,
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
  GWakeUpData_natures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWakeUpData_naturesBuilder();

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

class _$GWakeUpData extends GWakeUpData {
  @override
  final String G__typename;
  @override
  final BuiltList<GWakeUpData_natures> natures;

  factory _$GWakeUpData([void Function(GWakeUpDataBuilder)? updates]) =>
      (new GWakeUpDataBuilder()..update(updates))._build();

  _$GWakeUpData._({required this.G__typename, required this.natures})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GWakeUpData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(natures, r'GWakeUpData', 'natures');
  }

  @override
  GWakeUpData rebuild(void Function(GWakeUpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWakeUpDataBuilder toBuilder() => new GWakeUpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWakeUpData &&
        G__typename == other.G__typename &&
        natures == other.natures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, natures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GWakeUpData')
          ..add('G__typename', G__typename)
          ..add('natures', natures))
        .toString();
  }
}

class GWakeUpDataBuilder implements Builder<GWakeUpData, GWakeUpDataBuilder> {
  _$GWakeUpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GWakeUpData_natures>? _natures;
  ListBuilder<GWakeUpData_natures> get natures =>
      _$this._natures ??= new ListBuilder<GWakeUpData_natures>();
  set natures(ListBuilder<GWakeUpData_natures>? natures) =>
      _$this._natures = natures;

  GWakeUpDataBuilder() {
    GWakeUpData._initializeBuilder(this);
  }

  GWakeUpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _natures = $v.natures.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWakeUpData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWakeUpData;
  }

  @override
  void update(void Function(GWakeUpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWakeUpData build() => _build();

  _$GWakeUpData _build() {
    _$GWakeUpData _$result;
    try {
      _$result = _$v ??
          new _$GWakeUpData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GWakeUpData', 'G__typename'),
              natures: natures.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natures';
        natures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GWakeUpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GWakeUpData_natures extends GWakeUpData_natures {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GWakeUpData_natures(
          [void Function(GWakeUpData_naturesBuilder)? updates]) =>
      (new GWakeUpData_naturesBuilder()..update(updates))._build();

  _$GWakeUpData_natures._({required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GWakeUpData_natures', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GWakeUpData_natures', 'id');
  }

  @override
  GWakeUpData_natures rebuild(
          void Function(GWakeUpData_naturesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWakeUpData_naturesBuilder toBuilder() =>
      new GWakeUpData_naturesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWakeUpData_natures &&
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
    return (newBuiltValueToStringHelper(r'GWakeUpData_natures')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GWakeUpData_naturesBuilder
    implements Builder<GWakeUpData_natures, GWakeUpData_naturesBuilder> {
  _$GWakeUpData_natures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GWakeUpData_naturesBuilder() {
    GWakeUpData_natures._initializeBuilder(this);
  }

  GWakeUpData_naturesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWakeUpData_natures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWakeUpData_natures;
  }

  @override
  void update(void Function(GWakeUpData_naturesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWakeUpData_natures build() => _build();

  _$GWakeUpData_natures _build() {
    final _$result = _$v ??
        new _$GWakeUpData_natures._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GWakeUpData_natures', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GWakeUpData_natures', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

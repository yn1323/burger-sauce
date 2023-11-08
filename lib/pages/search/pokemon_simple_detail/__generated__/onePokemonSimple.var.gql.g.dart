// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onePokemonSimple.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOnePokemonSimpleDataVars> _$gOnePokemonSimpleDataVarsSerializer =
    new _$GOnePokemonSimpleDataVarsSerializer();

class _$GOnePokemonSimpleDataVarsSerializer
    implements StructuredSerializer<GOnePokemonSimpleDataVars> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonSimpleDataVars,
    _$GOnePokemonSimpleDataVars
  ];
  @override
  final String wireName = 'GOnePokemonSimpleDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonSimpleDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOnePokemonSimpleDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonSimpleDataVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOnePokemonSimpleDataVars extends GOnePokemonSimpleDataVars {
  @override
  final String id;

  factory _$GOnePokemonSimpleDataVars(
          [void Function(GOnePokemonSimpleDataVarsBuilder)? updates]) =>
      (new GOnePokemonSimpleDataVarsBuilder()..update(updates))._build();

  _$GOnePokemonSimpleDataVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'GOnePokemonSimpleDataVars', 'id');
  }

  @override
  GOnePokemonSimpleDataVars rebuild(
          void Function(GOnePokemonSimpleDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonSimpleDataVarsBuilder toBuilder() =>
      new GOnePokemonSimpleDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonSimpleDataVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnePokemonSimpleDataVars')
          ..add('id', id))
        .toString();
  }
}

class GOnePokemonSimpleDataVarsBuilder
    implements
        Builder<GOnePokemonSimpleDataVars, GOnePokemonSimpleDataVarsBuilder> {
  _$GOnePokemonSimpleDataVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOnePokemonSimpleDataVarsBuilder();

  GOnePokemonSimpleDataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonSimpleDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonSimpleDataVars;
  }

  @override
  void update(void Function(GOnePokemonSimpleDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonSimpleDataVars build() => _build();

  _$GOnePokemonSimpleDataVars _build() {
    final _$result = _$v ??
        new _$GOnePokemonSimpleDataVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GOnePokemonSimpleDataVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

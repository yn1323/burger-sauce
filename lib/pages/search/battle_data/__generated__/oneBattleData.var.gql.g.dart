// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oneBattleData.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOneBattleDataVars> _$gOneBattleDataVarsSerializer =
    new _$GOneBattleDataVarsSerializer();

class _$GOneBattleDataVarsSerializer
    implements StructuredSerializer<GOneBattleDataVars> {
  @override
  final Iterable<Type> types = const [GOneBattleDataVars, _$GOneBattleDataVars];
  @override
  final String wireName = 'GOneBattleDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOneBattleDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOneBattleDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOneBattleDataVarsBuilder();

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

class _$GOneBattleDataVars extends GOneBattleDataVars {
  @override
  final String id;

  factory _$GOneBattleDataVars(
          [void Function(GOneBattleDataVarsBuilder)? updates]) =>
      (new GOneBattleDataVarsBuilder()..update(updates))._build();

  _$GOneBattleDataVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GOneBattleDataVars', 'id');
  }

  @override
  GOneBattleDataVars rebuild(
          void Function(GOneBattleDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOneBattleDataVarsBuilder toBuilder() =>
      new GOneBattleDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOneBattleDataVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GOneBattleDataVars')..add('id', id))
        .toString();
  }
}

class GOneBattleDataVarsBuilder
    implements Builder<GOneBattleDataVars, GOneBattleDataVarsBuilder> {
  _$GOneBattleDataVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOneBattleDataVarsBuilder();

  GOneBattleDataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOneBattleDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOneBattleDataVars;
  }

  @override
  void update(void Function(GOneBattleDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOneBattleDataVars build() => _build();

  _$GOneBattleDataVars _build() {
    final _$result = _$v ??
        new _$GOneBattleDataVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GOneBattleDataVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

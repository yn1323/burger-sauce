// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onePokemon.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOnePokemonDataVars> _$gOnePokemonDataVarsSerializer =
    new _$GOnePokemonDataVarsSerializer();

class _$GOnePokemonDataVarsSerializer
    implements StructuredSerializer<GOnePokemonDataVars> {
  @override
  final Iterable<Type> types = const [
    GOnePokemonDataVars,
    _$GOnePokemonDataVars
  ];
  @override
  final String wireName = 'GOnePokemonDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOnePokemonDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOnePokemonDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnePokemonDataVarsBuilder();

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

class _$GOnePokemonDataVars extends GOnePokemonDataVars {
  @override
  final String id;

  factory _$GOnePokemonDataVars(
          [void Function(GOnePokemonDataVarsBuilder)? updates]) =>
      (new GOnePokemonDataVarsBuilder()..update(updates))._build();

  _$GOnePokemonDataVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GOnePokemonDataVars', 'id');
  }

  @override
  GOnePokemonDataVars rebuild(
          void Function(GOnePokemonDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnePokemonDataVarsBuilder toBuilder() =>
      new GOnePokemonDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnePokemonDataVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GOnePokemonDataVars')..add('id', id))
        .toString();
  }
}

class GOnePokemonDataVarsBuilder
    implements Builder<GOnePokemonDataVars, GOnePokemonDataVarsBuilder> {
  _$GOnePokemonDataVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOnePokemonDataVarsBuilder();

  GOnePokemonDataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnePokemonDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnePokemonDataVars;
  }

  @override
  void update(void Function(GOnePokemonDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnePokemonDataVars build() => _build();

  _$GOnePokemonDataVars _build() {
    final _$result = _$v ??
        new _$GOnePokemonDataVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GOnePokemonDataVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

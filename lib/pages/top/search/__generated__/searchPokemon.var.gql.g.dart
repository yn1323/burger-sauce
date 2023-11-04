// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchPokemon.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchPokemonVars> _$gSearchPokemonVarsSerializer =
    new _$GSearchPokemonVarsSerializer();

class _$GSearchPokemonVarsSerializer
    implements StructuredSerializer<GSearchPokemonVars> {
  @override
  final Iterable<Type> types = const [GSearchPokemonVars, _$GSearchPokemonVars];
  @override
  final String wireName = 'GSearchPokemonVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchPokemonVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.types;
    if (value != null) {
      result
        ..add('types')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.moves;
    if (value != null) {
      result
        ..add('moves')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.abilities;
    if (value != null) {
      result
        ..add('abilities')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GPokemonSearchOption)));
    }
    return result;
  }

  @override
  GSearchPokemonVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchPokemonVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GPokemonSearchOption))!
              as _i1.GPokemonSearchOption);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchPokemonVars extends GSearchPokemonVars {
  @override
  final String? name;
  @override
  final BuiltList<String>? types;
  @override
  final BuiltList<String>? moves;
  @override
  final BuiltList<String>? abilities;
  @override
  final _i1.GPokemonSearchOption? options;

  factory _$GSearchPokemonVars(
          [void Function(GSearchPokemonVarsBuilder)? updates]) =>
      (new GSearchPokemonVarsBuilder()..update(updates))._build();

  _$GSearchPokemonVars._(
      {this.name, this.types, this.moves, this.abilities, this.options})
      : super._();

  @override
  GSearchPokemonVars rebuild(
          void Function(GSearchPokemonVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchPokemonVarsBuilder toBuilder() =>
      new GSearchPokemonVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchPokemonVars &&
        name == other.name &&
        types == other.types &&
        moves == other.moves &&
        abilities == other.abilities &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, moves.hashCode);
    _$hash = $jc(_$hash, abilities.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonVars')
          ..add('name', name)
          ..add('types', types)
          ..add('moves', moves)
          ..add('abilities', abilities)
          ..add('options', options))
        .toString();
  }
}

class GSearchPokemonVarsBuilder
    implements Builder<GSearchPokemonVars, GSearchPokemonVarsBuilder> {
  _$GSearchPokemonVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _types;
  ListBuilder<String> get types => _$this._types ??= new ListBuilder<String>();
  set types(ListBuilder<String>? types) => _$this._types = types;

  ListBuilder<String>? _moves;
  ListBuilder<String> get moves => _$this._moves ??= new ListBuilder<String>();
  set moves(ListBuilder<String>? moves) => _$this._moves = moves;

  ListBuilder<String>? _abilities;
  ListBuilder<String> get abilities =>
      _$this._abilities ??= new ListBuilder<String>();
  set abilities(ListBuilder<String>? abilities) =>
      _$this._abilities = abilities;

  _i1.GPokemonSearchOptionBuilder? _options;
  _i1.GPokemonSearchOptionBuilder get options =>
      _$this._options ??= new _i1.GPokemonSearchOptionBuilder();
  set options(_i1.GPokemonSearchOptionBuilder? options) =>
      _$this._options = options;

  GSearchPokemonVarsBuilder();

  GSearchPokemonVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _types = $v.types?.toBuilder();
      _moves = $v.moves?.toBuilder();
      _abilities = $v.abilities?.toBuilder();
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchPokemonVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchPokemonVars;
  }

  @override
  void update(void Function(GSearchPokemonVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchPokemonVars build() => _build();

  _$GSearchPokemonVars _build() {
    _$GSearchPokemonVars _$result;
    try {
      _$result = _$v ??
          new _$GSearchPokemonVars._(
              name: name,
              types: _types?.build(),
              moves: _moves?.build(),
              abilities: _abilities?.build(),
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();
        _$failedField = 'moves';
        _moves?.build();
        _$failedField = 'abilities';
        _abilities?.build();
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchPokemonVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

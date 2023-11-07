// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latestBattleData.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLatestBattleDataIndexVars> _$gLatestBattleDataIndexVarsSerializer =
    new _$GLatestBattleDataIndexVarsSerializer();

class _$GLatestBattleDataIndexVarsSerializer
    implements StructuredSerializer<GLatestBattleDataIndexVars> {
  @override
  final Iterable<Type> types = const [
    GLatestBattleDataIndexVars,
    _$GLatestBattleDataIndexVars
  ];
  @override
  final String wireName = 'GLatestBattleDataIndexVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLatestBattleDataIndexVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GLatestBattleDataIndexVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GLatestBattleDataIndexVarsBuilder().build();
  }
}

class _$GLatestBattleDataIndexVars extends GLatestBattleDataIndexVars {
  factory _$GLatestBattleDataIndexVars(
          [void Function(GLatestBattleDataIndexVarsBuilder)? updates]) =>
      (new GLatestBattleDataIndexVarsBuilder()..update(updates))._build();

  _$GLatestBattleDataIndexVars._() : super._();

  @override
  GLatestBattleDataIndexVars rebuild(
          void Function(GLatestBattleDataIndexVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLatestBattleDataIndexVarsBuilder toBuilder() =>
      new GLatestBattleDataIndexVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLatestBattleDataIndexVars;
  }

  @override
  int get hashCode {
    return 403225116;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GLatestBattleDataIndexVars')
        .toString();
  }
}

class GLatestBattleDataIndexVarsBuilder
    implements
        Builder<GLatestBattleDataIndexVars, GLatestBattleDataIndexVarsBuilder> {
  _$GLatestBattleDataIndexVars? _$v;

  GLatestBattleDataIndexVarsBuilder();

  @override
  void replace(GLatestBattleDataIndexVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLatestBattleDataIndexVars;
  }

  @override
  void update(void Function(GLatestBattleDataIndexVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLatestBattleDataIndexVars build() => _build();

  _$GLatestBattleDataIndexVars _build() {
    final _$result = _$v ?? new _$GLatestBattleDataIndexVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calcDamage.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDamageCalcSummaryVars> _$gDamageCalcSummaryVarsSerializer =
    new _$GDamageCalcSummaryVarsSerializer();
Serializer<GDamageCalcDetailVars> _$gDamageCalcDetailVarsSerializer =
    new _$GDamageCalcDetailVarsSerializer();

class _$GDamageCalcSummaryVarsSerializer
    implements StructuredSerializer<GDamageCalcSummaryVars> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcSummaryVars,
    _$GDamageCalcSummaryVars
  ];
  @override
  final String wireName = 'GDamageCalcSummaryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcSummaryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.calcId;
    if (value != null) {
      result
        ..add('calcId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GDamageCalcSummaryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcSummaryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'calcId':
          result.calcId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcDetailVarsSerializer
    implements StructuredSerializer<GDamageCalcDetailVars> {
  @override
  final Iterable<Type> types = const [
    GDamageCalcDetailVars,
    _$GDamageCalcDetailVars
  ];
  @override
  final String wireName = 'GDamageCalcDetailVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDamageCalcDetailVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GDamageCalcDetailVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDamageCalcDetailVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDamageCalcSummaryVars extends GDamageCalcSummaryVars {
  @override
  final String? calcId;

  factory _$GDamageCalcSummaryVars(
          [void Function(GDamageCalcSummaryVarsBuilder)? updates]) =>
      (new GDamageCalcSummaryVarsBuilder()..update(updates))._build();

  _$GDamageCalcSummaryVars._({this.calcId}) : super._();

  @override
  GDamageCalcSummaryVars rebuild(
          void Function(GDamageCalcSummaryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcSummaryVarsBuilder toBuilder() =>
      new GDamageCalcSummaryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcSummaryVars && calcId == other.calcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDamageCalcSummaryVars')
          ..add('calcId', calcId))
        .toString();
  }
}

class GDamageCalcSummaryVarsBuilder
    implements Builder<GDamageCalcSummaryVars, GDamageCalcSummaryVarsBuilder> {
  _$GDamageCalcSummaryVars? _$v;

  String? _calcId;
  String? get calcId => _$this._calcId;
  set calcId(String? calcId) => _$this._calcId = calcId;

  GDamageCalcSummaryVarsBuilder();

  GDamageCalcSummaryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calcId = $v.calcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcSummaryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcSummaryVars;
  }

  @override
  void update(void Function(GDamageCalcSummaryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcSummaryVars build() => _build();

  _$GDamageCalcSummaryVars _build() {
    final _$result = _$v ?? new _$GDamageCalcSummaryVars._(calcId: calcId);
    replace(_$result);
    return _$result;
  }
}

class _$GDamageCalcDetailVars extends GDamageCalcDetailVars {
  @override
  final String? id;

  factory _$GDamageCalcDetailVars(
          [void Function(GDamageCalcDetailVarsBuilder)? updates]) =>
      (new GDamageCalcDetailVarsBuilder()..update(updates))._build();

  _$GDamageCalcDetailVars._({this.id}) : super._();

  @override
  GDamageCalcDetailVars rebuild(
          void Function(GDamageCalcDetailVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDamageCalcDetailVarsBuilder toBuilder() =>
      new GDamageCalcDetailVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDamageCalcDetailVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GDamageCalcDetailVars')
          ..add('id', id))
        .toString();
  }
}

class GDamageCalcDetailVarsBuilder
    implements Builder<GDamageCalcDetailVars, GDamageCalcDetailVarsBuilder> {
  _$GDamageCalcDetailVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDamageCalcDetailVarsBuilder();

  GDamageCalcDetailVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDamageCalcDetailVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDamageCalcDetailVars;
  }

  @override
  void update(void Function(GDamageCalcDetailVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDamageCalcDetailVars build() => _build();

  _$GDamageCalcDetailVars _build() {
    final _$result = _$v ?? new _$GDamageCalcDetailVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

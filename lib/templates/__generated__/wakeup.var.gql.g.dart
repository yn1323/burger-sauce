// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wakeup.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWakeUpVars> _$gWakeUpVarsSerializer = new _$GWakeUpVarsSerializer();

class _$GWakeUpVarsSerializer implements StructuredSerializer<GWakeUpVars> {
  @override
  final Iterable<Type> types = const [GWakeUpVars, _$GWakeUpVars];
  @override
  final String wireName = 'GWakeUpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWakeUpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GWakeUpVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GWakeUpVarsBuilder().build();
  }
}

class _$GWakeUpVars extends GWakeUpVars {
  factory _$GWakeUpVars([void Function(GWakeUpVarsBuilder)? updates]) =>
      (new GWakeUpVarsBuilder()..update(updates))._build();

  _$GWakeUpVars._() : super._();

  @override
  GWakeUpVars rebuild(void Function(GWakeUpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWakeUpVarsBuilder toBuilder() => new GWakeUpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWakeUpVars;
  }

  @override
  int get hashCode {
    return 871019666;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GWakeUpVars').toString();
  }
}

class GWakeUpVarsBuilder implements Builder<GWakeUpVars, GWakeUpVarsBuilder> {
  _$GWakeUpVars? _$v;

  GWakeUpVarsBuilder();

  @override
  void replace(GWakeUpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWakeUpVars;
  }

  @override
  void update(void Function(GWakeUpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWakeUpVars build() => _build();

  _$GWakeUpVars _build() {
    final _$result = _$v ?? new _$GWakeUpVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

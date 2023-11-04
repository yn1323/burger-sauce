// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchPokemon.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchPokemonData> _$gSearchPokemonDataSerializer =
    new _$GSearchPokemonDataSerializer();
Serializer<GSearchPokemonData_pokemonSearch>
    _$gSearchPokemonDataPokemonSearchSerializer =
    new _$GSearchPokemonData_pokemonSearchSerializer();

class _$GSearchPokemonDataSerializer
    implements StructuredSerializer<GSearchPokemonData> {
  @override
  final Iterable<Type> types = const [GSearchPokemonData, _$GSearchPokemonData];
  @override
  final String wireName = 'GSearchPokemonData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchPokemonData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemonSearch',
      serializers.serialize(object.pokemonSearch,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GSearchPokemonData_pokemonSearch)])),
    ];

    return result;
  }

  @override
  GSearchPokemonData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchPokemonDataBuilder();

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
        case 'pokemonSearch':
          result.pokemonSearch.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GSearchPokemonData_pokemonSearch)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchPokemonData_pokemonSearchSerializer
    implements StructuredSerializer<GSearchPokemonData_pokemonSearch> {
  @override
  final Iterable<Type> types = const [
    GSearchPokemonData_pokemonSearch,
    _$GSearchPokemonData_pokemonSearch
  ];
  @override
  final String wireName = 'GSearchPokemonData_pokemonSearch';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchPokemonData_pokemonSearch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchPokemonData_pokemonSearch deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchPokemonData_pokemonSearchBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchPokemonData extends GSearchPokemonData {
  @override
  final String G__typename;
  @override
  final BuiltList<GSearchPokemonData_pokemonSearch> pokemonSearch;

  factory _$GSearchPokemonData(
          [void Function(GSearchPokemonDataBuilder)? updates]) =>
      (new GSearchPokemonDataBuilder()..update(updates))._build();

  _$GSearchPokemonData._(
      {required this.G__typename, required this.pokemonSearch})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemonSearch, r'GSearchPokemonData', 'pokemonSearch');
  }

  @override
  GSearchPokemonData rebuild(
          void Function(GSearchPokemonDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchPokemonDataBuilder toBuilder() =>
      new GSearchPokemonDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchPokemonData &&
        G__typename == other.G__typename &&
        pokemonSearch == other.pokemonSearch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pokemonSearch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonData')
          ..add('G__typename', G__typename)
          ..add('pokemonSearch', pokemonSearch))
        .toString();
  }
}

class GSearchPokemonDataBuilder
    implements Builder<GSearchPokemonData, GSearchPokemonDataBuilder> {
  _$GSearchPokemonData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GSearchPokemonData_pokemonSearch>? _pokemonSearch;
  ListBuilder<GSearchPokemonData_pokemonSearch> get pokemonSearch =>
      _$this._pokemonSearch ??=
          new ListBuilder<GSearchPokemonData_pokemonSearch>();
  set pokemonSearch(
          ListBuilder<GSearchPokemonData_pokemonSearch>? pokemonSearch) =>
      _$this._pokemonSearch = pokemonSearch;

  GSearchPokemonDataBuilder() {
    GSearchPokemonData._initializeBuilder(this);
  }

  GSearchPokemonDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemonSearch = $v.pokemonSearch.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchPokemonData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchPokemonData;
  }

  @override
  void update(void Function(GSearchPokemonDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchPokemonData build() => _build();

  _$GSearchPokemonData _build() {
    _$GSearchPokemonData _$result;
    try {
      _$result = _$v ??
          new _$GSearchPokemonData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchPokemonData', 'G__typename'),
              pokemonSearch: pokemonSearch.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemonSearch';
        pokemonSearch.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchPokemonData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchPokemonData_pokemonSearch
    extends GSearchPokemonData_pokemonSearch {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String id;
  @override
  final String imageUrl;

  factory _$GSearchPokemonData_pokemonSearch(
          [void Function(GSearchPokemonData_pokemonSearchBuilder)? updates]) =>
      (new GSearchPokemonData_pokemonSearchBuilder()..update(updates))._build();

  _$GSearchPokemonData_pokemonSearch._(
      {required this.G__typename,
      required this.name,
      required this.id,
      required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData_pokemonSearch', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSearchPokemonData_pokemonSearch', 'name');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSearchPokemonData_pokemonSearch', 'id');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'GSearchPokemonData_pokemonSearch', 'imageUrl');
  }

  @override
  GSearchPokemonData_pokemonSearch rebuild(
          void Function(GSearchPokemonData_pokemonSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchPokemonData_pokemonSearchBuilder toBuilder() =>
      new GSearchPokemonData_pokemonSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchPokemonData_pokemonSearch &&
        G__typename == other.G__typename &&
        name == other.name &&
        id == other.id &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonData_pokemonSearch')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('id', id)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GSearchPokemonData_pokemonSearchBuilder
    implements
        Builder<GSearchPokemonData_pokemonSearch,
            GSearchPokemonData_pokemonSearchBuilder> {
  _$GSearchPokemonData_pokemonSearch? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GSearchPokemonData_pokemonSearchBuilder() {
    GSearchPokemonData_pokemonSearch._initializeBuilder(this);
  }

  GSearchPokemonData_pokemonSearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _id = $v.id;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchPokemonData_pokemonSearch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchPokemonData_pokemonSearch;
  }

  @override
  void update(void Function(GSearchPokemonData_pokemonSearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchPokemonData_pokemonSearch build() => _build();

  _$GSearchPokemonData_pokemonSearch _build() {
    final _$result = _$v ??
        new _$GSearchPokemonData_pokemonSearch._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchPokemonData_pokemonSearch', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GSearchPokemonData_pokemonSearch', 'name'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GSearchPokemonData_pokemonSearch', 'id'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'GSearchPokemonData_pokemonSearch', 'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

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
Serializer<GSearchPokemonData_types> _$gSearchPokemonDataTypesSerializer =
    new _$GSearchPokemonData_typesSerializer();
Serializer<GSearchPokemonData_abilities>
    _$gSearchPokemonDataAbilitiesSerializer =
    new _$GSearchPokemonData_abilitiesSerializer();
Serializer<GSearchPokemonData_moves> _$gSearchPokemonDataMovesSerializer =
    new _$GSearchPokemonData_movesSerializer();
Serializer<GSearchPokemonData_pokemonList>
    _$gSearchPokemonDataPokemonListSerializer =
    new _$GSearchPokemonData_pokemonListSerializer();

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
      'types',
      serializers.serialize(object.types,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GSearchPokemonData_types)])),
      'abilities',
      serializers.serialize(object.abilities,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GSearchPokemonData_abilities)])),
      'moves',
      serializers.serialize(object.moves,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GSearchPokemonData_moves)])),
      'pokemonList',
      serializers.serialize(object.pokemonList,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GSearchPokemonData_pokemonList)])),
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
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GSearchPokemonData_types)
              ]))! as BuiltList<Object?>);
          break;
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GSearchPokemonData_abilities)
              ]))! as BuiltList<Object?>);
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GSearchPokemonData_moves)
              ]))! as BuiltList<Object?>);
          break;
        case 'pokemonList':
          result.pokemonList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GSearchPokemonData_pokemonList)
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
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
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
        case 'form':
          result.form = serializers.deserialize(value,
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

class _$GSearchPokemonData_typesSerializer
    implements StructuredSerializer<GSearchPokemonData_types> {
  @override
  final Iterable<Type> types = const [
    GSearchPokemonData_types,
    _$GSearchPokemonData_types
  ];
  @override
  final String wireName = 'GSearchPokemonData_types';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchPokemonData_types object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'textImageUrl',
      serializers.serialize(object.textImageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchPokemonData_types deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchPokemonData_typesBuilder();

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
        case 'textImageUrl':
          result.textImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchPokemonData_abilitiesSerializer
    implements StructuredSerializer<GSearchPokemonData_abilities> {
  @override
  final Iterable<Type> types = const [
    GSearchPokemonData_abilities,
    _$GSearchPokemonData_abilities
  ];
  @override
  final String wireName = 'GSearchPokemonData_abilities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchPokemonData_abilities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchPokemonData_abilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchPokemonData_abilitiesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSearchPokemonData_movesSerializer
    implements StructuredSerializer<GSearchPokemonData_moves> {
  @override
  final Iterable<Type> types = const [
    GSearchPokemonData_moves,
    _$GSearchPokemonData_moves
  ];
  @override
  final String wireName = 'GSearchPokemonData_moves';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchPokemonData_moves object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchPokemonData_moves deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchPokemonData_movesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSearchPokemonData_pokemonListSerializer
    implements StructuredSerializer<GSearchPokemonData_pokemonList> {
  @override
  final Iterable<Type> types = const [
    GSearchPokemonData_pokemonList,
    _$GSearchPokemonData_pokemonList
  ];
  @override
  final String wireName = 'GSearchPokemonData_pokemonList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchPokemonData_pokemonList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'form',
      serializers.serialize(object.form, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchPokemonData_pokemonList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchPokemonData_pokemonListBuilder();

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
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'form':
          result.form = serializers.deserialize(value,
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
  @override
  final BuiltList<GSearchPokemonData_types> types;
  @override
  final BuiltList<GSearchPokemonData_abilities> abilities;
  @override
  final BuiltList<GSearchPokemonData_moves> moves;
  @override
  final BuiltList<GSearchPokemonData_pokemonList> pokemonList;

  factory _$GSearchPokemonData(
          [void Function(GSearchPokemonDataBuilder)? updates]) =>
      (new GSearchPokemonDataBuilder()..update(updates))._build();

  _$GSearchPokemonData._(
      {required this.G__typename,
      required this.pokemonSearch,
      required this.types,
      required this.abilities,
      required this.moves,
      required this.pokemonList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemonSearch, r'GSearchPokemonData', 'pokemonSearch');
    BuiltValueNullFieldError.checkNotNull(
        types, r'GSearchPokemonData', 'types');
    BuiltValueNullFieldError.checkNotNull(
        abilities, r'GSearchPokemonData', 'abilities');
    BuiltValueNullFieldError.checkNotNull(
        moves, r'GSearchPokemonData', 'moves');
    BuiltValueNullFieldError.checkNotNull(
        pokemonList, r'GSearchPokemonData', 'pokemonList');
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
        pokemonSearch == other.pokemonSearch &&
        types == other.types &&
        abilities == other.abilities &&
        moves == other.moves &&
        pokemonList == other.pokemonList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pokemonSearch.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, abilities.hashCode);
    _$hash = $jc(_$hash, moves.hashCode);
    _$hash = $jc(_$hash, pokemonList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonData')
          ..add('G__typename', G__typename)
          ..add('pokemonSearch', pokemonSearch)
          ..add('types', types)
          ..add('abilities', abilities)
          ..add('moves', moves)
          ..add('pokemonList', pokemonList))
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

  ListBuilder<GSearchPokemonData_types>? _types;
  ListBuilder<GSearchPokemonData_types> get types =>
      _$this._types ??= new ListBuilder<GSearchPokemonData_types>();
  set types(ListBuilder<GSearchPokemonData_types>? types) =>
      _$this._types = types;

  ListBuilder<GSearchPokemonData_abilities>? _abilities;
  ListBuilder<GSearchPokemonData_abilities> get abilities =>
      _$this._abilities ??= new ListBuilder<GSearchPokemonData_abilities>();
  set abilities(ListBuilder<GSearchPokemonData_abilities>? abilities) =>
      _$this._abilities = abilities;

  ListBuilder<GSearchPokemonData_moves>? _moves;
  ListBuilder<GSearchPokemonData_moves> get moves =>
      _$this._moves ??= new ListBuilder<GSearchPokemonData_moves>();
  set moves(ListBuilder<GSearchPokemonData_moves>? moves) =>
      _$this._moves = moves;

  ListBuilder<GSearchPokemonData_pokemonList>? _pokemonList;
  ListBuilder<GSearchPokemonData_pokemonList> get pokemonList =>
      _$this._pokemonList ??= new ListBuilder<GSearchPokemonData_pokemonList>();
  set pokemonList(ListBuilder<GSearchPokemonData_pokemonList>? pokemonList) =>
      _$this._pokemonList = pokemonList;

  GSearchPokemonDataBuilder() {
    GSearchPokemonData._initializeBuilder(this);
  }

  GSearchPokemonDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemonSearch = $v.pokemonSearch.toBuilder();
      _types = $v.types.toBuilder();
      _abilities = $v.abilities.toBuilder();
      _moves = $v.moves.toBuilder();
      _pokemonList = $v.pokemonList.toBuilder();
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
              pokemonSearch: pokemonSearch.build(),
              types: types.build(),
              abilities: abilities.build(),
              moves: moves.build(),
              pokemonList: pokemonList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemonSearch';
        pokemonSearch.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'abilities';
        abilities.build();
        _$failedField = 'moves';
        moves.build();
        _$failedField = 'pokemonList';
        pokemonList.build();
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
  final String form;
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
      required this.form,
      required this.id,
      required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData_pokemonSearch', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSearchPokemonData_pokemonSearch', 'name');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GSearchPokemonData_pokemonSearch', 'form');
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
        form == other.form &&
        id == other.id &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
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
          ..add('form', form)
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

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

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
      _form = $v.form;
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
            form: BuiltValueNullFieldError.checkNotNull(
                form, r'GSearchPokemonData_pokemonSearch', 'form'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GSearchPokemonData_pokemonSearch', 'id'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'GSearchPokemonData_pokemonSearch', 'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GSearchPokemonData_types extends GSearchPokemonData_types {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String textImageUrl;

  factory _$GSearchPokemonData_types(
          [void Function(GSearchPokemonData_typesBuilder)? updates]) =>
      (new GSearchPokemonData_typesBuilder()..update(updates))._build();

  _$GSearchPokemonData_types._(
      {required this.G__typename,
      required this.name,
      required this.textImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData_types', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSearchPokemonData_types', 'name');
    BuiltValueNullFieldError.checkNotNull(
        textImageUrl, r'GSearchPokemonData_types', 'textImageUrl');
  }

  @override
  GSearchPokemonData_types rebuild(
          void Function(GSearchPokemonData_typesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchPokemonData_typesBuilder toBuilder() =>
      new GSearchPokemonData_typesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchPokemonData_types &&
        G__typename == other.G__typename &&
        name == other.name &&
        textImageUrl == other.textImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, textImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonData_types')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('textImageUrl', textImageUrl))
        .toString();
  }
}

class GSearchPokemonData_typesBuilder
    implements
        Builder<GSearchPokemonData_types, GSearchPokemonData_typesBuilder> {
  _$GSearchPokemonData_types? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _textImageUrl;
  String? get textImageUrl => _$this._textImageUrl;
  set textImageUrl(String? textImageUrl) => _$this._textImageUrl = textImageUrl;

  GSearchPokemonData_typesBuilder() {
    GSearchPokemonData_types._initializeBuilder(this);
  }

  GSearchPokemonData_typesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _textImageUrl = $v.textImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchPokemonData_types other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchPokemonData_types;
  }

  @override
  void update(void Function(GSearchPokemonData_typesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchPokemonData_types build() => _build();

  _$GSearchPokemonData_types _build() {
    final _$result = _$v ??
        new _$GSearchPokemonData_types._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSearchPokemonData_types', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GSearchPokemonData_types', 'name'),
            textImageUrl: BuiltValueNullFieldError.checkNotNull(
                textImageUrl, r'GSearchPokemonData_types', 'textImageUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GSearchPokemonData_abilities extends GSearchPokemonData_abilities {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GSearchPokemonData_abilities(
          [void Function(GSearchPokemonData_abilitiesBuilder)? updates]) =>
      (new GSearchPokemonData_abilitiesBuilder()..update(updates))._build();

  _$GSearchPokemonData_abilities._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData_abilities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSearchPokemonData_abilities', 'name');
  }

  @override
  GSearchPokemonData_abilities rebuild(
          void Function(GSearchPokemonData_abilitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchPokemonData_abilitiesBuilder toBuilder() =>
      new GSearchPokemonData_abilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchPokemonData_abilities &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonData_abilities')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GSearchPokemonData_abilitiesBuilder
    implements
        Builder<GSearchPokemonData_abilities,
            GSearchPokemonData_abilitiesBuilder> {
  _$GSearchPokemonData_abilities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GSearchPokemonData_abilitiesBuilder() {
    GSearchPokemonData_abilities._initializeBuilder(this);
  }

  GSearchPokemonData_abilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchPokemonData_abilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchPokemonData_abilities;
  }

  @override
  void update(void Function(GSearchPokemonData_abilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchPokemonData_abilities build() => _build();

  _$GSearchPokemonData_abilities _build() {
    final _$result = _$v ??
        new _$GSearchPokemonData_abilities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSearchPokemonData_abilities', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GSearchPokemonData_abilities', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GSearchPokemonData_moves extends GSearchPokemonData_moves {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GSearchPokemonData_moves(
          [void Function(GSearchPokemonData_movesBuilder)? updates]) =>
      (new GSearchPokemonData_movesBuilder()..update(updates))._build();

  _$GSearchPokemonData_moves._({required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData_moves', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSearchPokemonData_moves', 'name');
  }

  @override
  GSearchPokemonData_moves rebuild(
          void Function(GSearchPokemonData_movesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchPokemonData_movesBuilder toBuilder() =>
      new GSearchPokemonData_movesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchPokemonData_moves &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonData_moves')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GSearchPokemonData_movesBuilder
    implements
        Builder<GSearchPokemonData_moves, GSearchPokemonData_movesBuilder> {
  _$GSearchPokemonData_moves? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GSearchPokemonData_movesBuilder() {
    GSearchPokemonData_moves._initializeBuilder(this);
  }

  GSearchPokemonData_movesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchPokemonData_moves other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchPokemonData_moves;
  }

  @override
  void update(void Function(GSearchPokemonData_movesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchPokemonData_moves build() => _build();

  _$GSearchPokemonData_moves _build() {
    final _$result = _$v ??
        new _$GSearchPokemonData_moves._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSearchPokemonData_moves', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GSearchPokemonData_moves', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GSearchPokemonData_pokemonList extends GSearchPokemonData_pokemonList {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String form;

  factory _$GSearchPokemonData_pokemonList(
          [void Function(GSearchPokemonData_pokemonListBuilder)? updates]) =>
      (new GSearchPokemonData_pokemonListBuilder()..update(updates))._build();

  _$GSearchPokemonData_pokemonList._(
      {required this.G__typename,
      required this.name,
      required this.imageUrl,
      required this.form})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchPokemonData_pokemonList', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSearchPokemonData_pokemonList', 'name');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'GSearchPokemonData_pokemonList', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        form, r'GSearchPokemonData_pokemonList', 'form');
  }

  @override
  GSearchPokemonData_pokemonList rebuild(
          void Function(GSearchPokemonData_pokemonListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchPokemonData_pokemonListBuilder toBuilder() =>
      new GSearchPokemonData_pokemonListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchPokemonData_pokemonList &&
        G__typename == other.G__typename &&
        name == other.name &&
        imageUrl == other.imageUrl &&
        form == other.form;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchPokemonData_pokemonList')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('imageUrl', imageUrl)
          ..add('form', form))
        .toString();
  }
}

class GSearchPokemonData_pokemonListBuilder
    implements
        Builder<GSearchPokemonData_pokemonList,
            GSearchPokemonData_pokemonListBuilder> {
  _$GSearchPokemonData_pokemonList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  GSearchPokemonData_pokemonListBuilder() {
    GSearchPokemonData_pokemonList._initializeBuilder(this);
  }

  GSearchPokemonData_pokemonListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _form = $v.form;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchPokemonData_pokemonList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchPokemonData_pokemonList;
  }

  @override
  void update(void Function(GSearchPokemonData_pokemonListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchPokemonData_pokemonList build() => _build();

  _$GSearchPokemonData_pokemonList _build() {
    final _$result = _$v ??
        new _$GSearchPokemonData_pokemonList._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSearchPokemonData_pokemonList', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GSearchPokemonData_pokemonList', 'name'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'GSearchPokemonData_pokemonList', 'imageUrl'),
            form: BuiltValueNullFieldError.checkNotNull(
                form, r'GSearchPokemonData_pokemonList', 'form'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

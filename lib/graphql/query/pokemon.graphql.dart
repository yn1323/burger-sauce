import 'package:json_annotation/json_annotation.dart';
part 'pokemon.graphql.g.dart';

@JsonSerializable()
class QueryFetchPokemons extends JsonSerializable {
  QueryFetchPokemons(this.pokemons);

  @override
  factory QueryFetchPokemons.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPokemonsFromJson(json);

  final List<QueryFetchPokemons$fpokemons> pokemons;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPokemonsToJson(this);
}

@JsonSerializable()
class QueryFetchPokemons$fpokemons extends JsonSerializable {
  QueryFetchPokemons$fpokemons(this.name);

  @override
  factory QueryFetchPokemons$fpokemons.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPokemons$fpokemonsFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPokemons$fpokemonsToJson(this);
}

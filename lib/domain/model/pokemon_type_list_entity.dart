import 'package:pokedex/domain/model/pokemon_entity.dart';

class PokemonTypeListEntity {
  String? type;
  String? url;
  List<Pokemon> pokemons;
  PokemonTypeListEntity({this.type, this.url, required this.pokemons});
}

class NameUrlEntity {
  String? name;
  String? url;
  NameUrlEntity(this.name, this.url);
}

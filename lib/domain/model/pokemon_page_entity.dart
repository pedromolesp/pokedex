import 'package:pokedex/domain/model/pokemon_entity.dart';

class PokemonPageEntity {
  int? pageNumber;
  String? next;
  String? previous;
  List<Pokemon> pokemons;
  PokemonPageEntity(
      {this.next, this.pageNumber, required this.pokemons, this.previous});
}

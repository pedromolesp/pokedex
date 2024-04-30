import 'package:pokedex/data/models/pokemon_model.dart';
import 'package:pokedex/data/models/pokemon_page_model.dart';
import 'package:pokedex/utils/result.dart';

abstract interface class PokemonDataSource {
  Future<Result<PokemonPageModel, Exception>> getPage(
    String offSet,
  );
  Future<Result<PokemonModel, Exception>> getPokemonInfo(
    String url,
  );
}

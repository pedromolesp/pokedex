import 'package:pokedex/domain/model/pokemon_page_entity.dart';
import 'package:pokedex/utils/result.dart';

abstract interface class PokemonRepository {
  Future<Result<PokemonPageEntity, Exception>> getPage(
    String url,
  );
}

import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/domain/model/pokemon_page_entity.dart';
import 'package:pokedex/domain/model/pokemon_type_list_entity.dart';
import 'package:pokedex/utils/result.dart';

abstract interface class PokemonRepository {
  Future<Result<PokemonPageEntity, Exception>> getPage(
    String url,
  );
  Future<Result<List<NameUrlEntity>, Exception>> getPokemonTypes();
  Future<Result<List<Pokemon>, Exception>> getPokemonListByType(
    String url,
  );
}

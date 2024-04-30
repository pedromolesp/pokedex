import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/utils/result.dart';

abstract interface class PokemonRepository {
  Future<Result<List<Pokemon>, Exception>> getPage(
    String offset,
  );
}

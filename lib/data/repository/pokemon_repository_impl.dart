import 'package:pokedex/data/data_source/pokemon_data_source.dart';
import 'package:pokedex/data/models/pokemon_model.dart';
import 'package:pokedex/data/models/pokemon_page_model.dart';
import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/domain/model/pokemon_page_entity.dart';
import 'package:pokedex/domain/pokemon_repository.dart';
import 'package:pokedex/utils/result.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl({
    required PokemonDataSource pokemonApi,
  }) : _pokemonApi = pokemonApi;

  final PokemonDataSource _pokemonApi;

  @override
  Future<Result<PokemonPageEntity, Exception>> getPage(String url) async {
    final response = await _pokemonApi.getPage(url);

    return response.when(
      failure: (error) => Failure(error: error),
      success: (data) async {
        PokemonPageModel dataModel = data;
        final futures = <Future<Result<PokemonModel, Exception>>>[];
        data.results?.forEach((result) {
          final url = result.url;
          if (url != null) {
            final request = _pokemonApi.getPokemonInfo(url);
            futures.add(request);
          }
        });
        final result = await Future.wait(
          futures,
        );
        final pokemonList = <Pokemon>[];
        for (var pokemonResponse in result) {
          if (pokemonResponse.isSuccess) {
            pokemonList.add(Pokemon.fromPokemonModel(pokemonResponse.data));
          }
        }
        return Success(
            data: PokemonPageEntity(
          next: dataModel.next,
          previous: dataModel.previous,
          pokemons: pokemonList,
        ));
      },
    );
  }
}

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/data/data_source/pokemon_api_data_source.dart';
import 'package:pokedex/data/data_source/pokemon_data_source.dart';
import 'package:pokedex/data/repository/pokemon_repository_impl.dart';
import 'package:pokedex/domain/pokemon_repository.dart';

final getIt = GetIt.instance;
Future<void> inyectDependendies() async {
  const baseEnv = "https://pokeapi.co/api/v2/pokemon";

  final dio = configureDio(baseEnv);
  getIt
    ..registerLazySingleton(() => baseEnv)
    ..registerLazySingleton<PokemonDataSource>(
      () => PokemonApiDataSource(dio: dio),
    )
    ..registerLazySingleton<PokemonRepository>(
      () => PokemonRepositoryImpl(pokemonApi: getIt()),
    );
}

Dio configureDio(String urlBase) {
  const timeOut = Duration(seconds: 20);

  final baseOptions = BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout: timeOut,
    sendTimeout: timeOut,
    receiveTimeout: timeOut,
    baseUrl: urlBase,
  );

  return Dio(baseOptions);
}

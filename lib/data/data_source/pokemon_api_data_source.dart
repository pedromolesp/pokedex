import 'package:dio/dio.dart';
import 'package:pokedex/data/data_source/pokemon_data_source.dart';
import 'package:pokedex/data/models/pokemon_model.dart';
import 'package:pokedex/data/models/pokemon_page_model.dart';
import 'package:pokedex/utils/result.dart';

class PokemonApiDataSource implements PokemonDataSource {
  PokemonApiDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  final urlBasePokemonPage = 'https://pokeapi.co/api/v2/pokemon';
  final urlBasePokemonTypes = 'https://pokeapi.co/api/v2/type';
  @override
  Future<Result<PokemonPageModel, Exception>> getPage(String offSet) async {
    final url = offSet != '' ? offSet : urlBasePokemonPage;
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        url,
      );
      final code = response.statusCode ?? 0;
      if (code.isFailCode() || response.data == null) {
        return Result.failure(error: InternetConnectionException());
      }

      return Result.success(data: PokemonPageModel.fromJson(response.data!));
    } on DioException catch (_) {
      return Result.failure(error: InternetConnectionException());
    } catch (_) {
      return Result.failure(error: UnknownException());
    }
  }

  @override
  Future<Result<PokemonModel, Exception>> getPokemonInfo(String url) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        url,
      );
      final code = response.statusCode ?? 0;
      if (code.isFailCode() || response.data == null) {
        return Result.failure(error: InternetConnectionException());
      }

      return Result.success(data: PokemonModel.fromJson(response.data!));
    } on DioException catch (_) {
      return Result.failure(error: InternetConnectionException());
    } catch (_) {
      return Result.failure(error: UnknownException());
    }
  }

  @override
  Future<Result<List<NameUrl>, Exception>> getPokemonTypes() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        urlBasePokemonTypes,
      );
      final code = response.statusCode ?? 0;
      if (code.isFailCode() || response.data == null) {
        return Result.failure(error: InternetConnectionException());
      }

      return Result.success(
          data: (response.data?['results'] as List<dynamic>)
              .map((e) => NameUrl.fromJson(e))
              .toList());
    } on DioException catch (_) {
      return Result.failure(error: InternetConnectionException());
    } catch (_) {
      return Result.failure(error: UnknownException());
    }
  }

  @override
  Future<Result<List<NameUrl>, Exception>> getPokemonListByType(
      String url) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        url,
      );
      final code = response.statusCode ?? 0;
      if (code.isFailCode() || response.data == null) {
        return Result.failure(error: InternetConnectionException());
      }

      return Result.success(
          data: (response.data?['pokemon'] as List<dynamic>)
              .map(
                  (e) => NameUrl.fromJson(e['pokemon'] as Map<String, dynamic>))
              .toList());
    } on DioException catch (_) {
      return Result.failure(error: InternetConnectionException());
    } catch (_) {
      return Result.failure(error: UnknownException());
    }
  }
}

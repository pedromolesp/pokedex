import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/domain/model/pokemon_page_entity.dart';
import 'package:pokedex/domain/model/pokemon_type_list_entity.dart';
import 'package:pokedex/domain/pokemon_repository.dart';

part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit({required this.repository}) : super(PokemonState.initial()) {
    getPokemonList();
    getTypeList();
  }
  final PokemonRepository repository;
  Future<void> getPokemonList({String? url}) async {
    emit(state.copyWith(status: PokemonStatus.loading));
    final response = await repository.getPage(url ?? '');
    response.when(
        failure: (error) => emit(state.copyWith(status: PokemonStatus.error)),
        success: (data) {
          List<PokemonPageEntity> pagesList = List.from(state.pokemonPageList)
            ..add(data);
          List<Pokemon> pokemonList = List.from(state.pokemonList)
            ..addAll(data.pokemons);
          emit(state.copyWith(
            pokemonPageList: pagesList,
            status: PokemonStatus.loaded,
            pokemonList: pokemonList,
          ));
        });
  }

  Future<void> getTypeList() async {
    final response = await repository.getPokemonTypes();
    response.when(
        failure: (error) => emit(state.copyWith(status: PokemonStatus.error)),
        success: (data) {
          emit(state.copyWith(pokemonTypeListNames: data));
        });
  }

  void changeType(NameUrlEntity type) async {
    emit(state.copyWith(
        pokemonTypeSelected: type, status: PokemonStatus.loading));
    if (type.url != null) {
      final response = await repository.getPokemonListByType(type.url!);
      response.when(
          failure: (error) => emit(state.copyWith(status: PokemonStatus.error)),
          success: (data) {
            emit(state.copyWith(
              status: PokemonStatus.loaded,
              pokemonList: data,
            ));
          });
    } else {
      emit(state.copyWith(
        status: PokemonStatus.error,
      ));
    }
  }
}

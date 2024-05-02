import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/domain/model/pokemon_page_entity.dart';
import 'package:pokedex/domain/pokemon_repository.dart';

part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit({required this.repository}) : super(PokemonState.initial()) {
    getPokemonList();
  }
  final PokemonRepository repository;
//?offset=20&limit=20
  Future<void> getPokemonList({String? url}) async {
    emit(state.copyWith(status: PokemonStatus.loading));
    final response = await repository.getPage(url ?? '');
    response.when(
        failure: (error) => emit(state.copyWith(status: PokemonStatus.error)),
        success: (data) {
          final pagesList = [...state.pokemonPageList, data];
          List<Pokemon> pokemonList = [...state.pokemonList, ...data.pokemons];
          emit(state.copyWith(
            pokemonPageList: pagesList,
            status: PokemonStatus.loaded,
            pokemonList: pokemonList,
          ));
        });
  }
}

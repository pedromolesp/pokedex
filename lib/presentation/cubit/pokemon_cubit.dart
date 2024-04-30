import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/models/pokemon_model.dart';
import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/domain/pokemon_repository.dart';

part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit({required this.repository}) : super(PokemonState.initial()) {
    getPokemonList();
  }
  final PokemonRepository repository;
//?offset=20&limit=20
  Future<void> getPokemonList({String? offset}) async {
    final response = await repository.getPage(offset ?? '');
    response.when(
        failure: (error) => print(error.toString()),
        success: (data) => emit(
            state.copyWith(pokemonList: data, status: PokemonStatus.loaded)));
  }
}

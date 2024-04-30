part of 'pokemon_cubit.dart';

enum PokemonStatus {
  loading,
  loaded,
  error;
}

@freezed
class PokemonState with _$PokemonState {
  const PokemonState._();

  factory PokemonState.initial(
      {@Default(PokemonStatus.loading) PokemonStatus status,
      @Default([]) List<Pokemon> pokemonList}) = _PokemonInitial;
}

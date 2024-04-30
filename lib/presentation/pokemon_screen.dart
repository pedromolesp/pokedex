import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/strings_utils.dart';
import 'package:pokedex/data/models/pokemon_page_model.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(builder: (context, state) {
      final pokemonList = state.pokemonList;
      return Scaffold(
        body: ListView.builder(
          itemCount: pokemonList.length,
          itemBuilder: (context, index) {
            var pokemon = pokemonList[index];
            return ListTile(
              leading: Image.network(pokemon.sprites?.frontDefault ?? ''),
              title: Text(capitalizeFirstLetter(pokemon.name) ?? ''),
            );
          },
        ),
      );
    });
  }
}

Future<PokemonPageModel?> getPokemonList() async {
  const url = "https://pokeapi.co/api/v2/pokemon";
  final dio = Dio();

  final response = await dio.get(url);

  if (response.statusCode == 200) {
    return response.data;
  } else {
    return null;
  }
}

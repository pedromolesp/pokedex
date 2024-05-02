import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/strings_utils.dart';
import 'package:pokedex/data/models/pokemon_page_model.dart';
import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({super.key});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        final cubit = context.read<PokemonCubit>();
        final pages = cubit.state.pokemonPageList;
        if (pages.isNotEmpty) {
          final nextPageUrl = pages.last.next ?? '';
          if (nextPageUrl.isNotEmpty) {
            cubit.getPokemonList(url: nextPageUrl);
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(builder: (context, state) {
      List<Pokemon> pokemonList = state.pokemonList;

      return Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 30),
              controller: _scrollController,
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                var pokemon = pokemonList[index];
                return ListTile(
                  leading: Image.network(pokemon.sprites?.frontDefault ?? ''),
                  title: Text(capitalizeFirstLetter(pokemon.name) ?? ''),
                );
              },
            ),
          ),
          if (state.status == PokemonStatus.loading)
            const CircularProgressIndicator(),
          const SizedBox(
            height: 10,
          )
        ],
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

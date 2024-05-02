import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pokemon_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/pokeball.png'),
          ),
          title: const Text('Pokedex'),
          actions: [],
        ),
        body: const PokemonScreen());
  }
}

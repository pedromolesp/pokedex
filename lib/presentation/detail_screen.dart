import 'package:flutter/material.dart';
import 'package:pokedex/config/l10n/context_extension.dart';
import 'package:pokedex/config/strings_utils.dart';
import 'package:pokedex/domain/model/pokemon_entity.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.pokemon});
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(capitalizeFirstLetter(pokemon.name) ?? ''),
        elevation: 2,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black38,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 6,
          shadowColor: Colors.black38,
          surfaceTintColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    pokemon.sprites?.frontDefault != null
                        ? Image.network(pokemon.sprites!.frontDefault!)
                        : const SizedBox.shrink(),
                    pokemon.sprites?.backDefault != null
                        ? Image.network(pokemon.sprites!.backDefault!)
                        : const SizedBox.shrink(),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  capitalizeFirstLetter(pokemon.name) ?? '',
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  capitalizeFirstLetter(pokemon.name) ?? '',
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(Icons.wind_power),
                    Text(context.localizations
                        .weight(((pokemon.weight ?? 0) / 10).toString()))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 1,
                  color: Colors.black26,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(Icons.height),
                    Text(context.localizations
                        .height(((pokemon.height ?? 0) / 10).toString()))
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

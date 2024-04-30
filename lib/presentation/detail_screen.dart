import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  final pokemonName = "Charmander";
  final imageFront =
      "https://i.pinimg.com/originals/04/98/28/049828a90a2413d4490b02a50341e471.png";
  final imageBack =
      "https://www.pngmart.com/files/13/Charmander-PNG-Transparent-Image.png";
  final weight = 25;
  final height = "0,5m";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemonName),
      ),
      body: Card(
        child: Column(
          children: [
            Row(
              children: [
                Image.network(imageFront),
                Image.network(imageBack),
              ],
            ),
            Text(
              pokemonName,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              pokemonName,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.wind_power),
                Text('Peso: $weight kg')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [const Icon(Icons.height), Text('Altura: $height')],
            )
          ],
        ),
      ),
    );
  }
}

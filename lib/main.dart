import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/dependency_inyector.dart';
import 'package:pokedex/data/repository/pokemon_repository_impl.dart';
import 'package:pokedex/domain/pokemon_repository.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/pokemon_screen.dart';

void main() async {
  await inyectDependendies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonCubit(repository: getIt()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PokemonScreen(),
      ),
    );
  }
}

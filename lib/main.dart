import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/dependency_inyector.dart';
import 'package:pokedex/config/router.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      lazy: false,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        routerConfig: router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}

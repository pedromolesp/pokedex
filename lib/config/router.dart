import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/domain/model/pokemon_entity.dart';
import 'package:pokedex/presentation/detail_screen.dart';
import 'package:pokedex/presentation/home_screen.dart';
import 'package:pokedex/presentation/pokemon_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: RoutePath.detail,
          name: RoutePath.detail,
          builder: (BuildContext context, GoRouterState state) {
            final pokemon = state.extra as Pokemon;
            return DetailScreen(
              pokemon: pokemon,
            );
          },
        )
      ],
    ),
  ],
);

class RoutePath {
  static const detail = "detail";
}

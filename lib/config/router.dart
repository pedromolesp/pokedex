import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            path: RoutePath.list,
            builder: (BuildContext context, GoRouterState state) {
              return const PokemonScreen();
            },
            routes: [
              GoRoute(
                path: RoutePath.detail,
                builder: (BuildContext context, GoRouterState state) {
                  return const DetailScreen();
                },
              )
            ]),
      ],
    ),
  ],
);

class RoutePath {
  static const list = "list";
  static const detail = "detail";
}

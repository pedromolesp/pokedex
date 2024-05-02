import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/l10n/context_extension.dart';
import 'package:pokedex/config/strings_utils.dart';
import 'package:pokedex/domain/model/pokemon_type_list_entity.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/pokemon_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(builder: (context, state) {
      List<NameUrlEntity> pokemonTypeList = state.pokemonTypeListNames;
      String typeName = state.pokemonTypeSelected?.name ?? '';
      return Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/pokeball.png'),
            ),
            surfaceTintColor: Colors.white,
            shadowColor: Colors.black38,
            title: Text('Pokedex $typeName'),
            actions: [
              IconButton(
                  onPressed: () {
                    showTypeModal(context, pokemonTypeList);
                  },
                  icon: const Icon(Icons.filter_list_outlined))
            ],
          ),
          body: const PokemonScreen());
    });
  }

  void showTypeModal(
      BuildContext context, List<NameUrlEntity> pokemonTypeList) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: context.localizations.homeSelector,
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) {
        final typeSelected =
            context.read<PokemonCubit>().state.pokemonTypeSelected;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            automaticallyImplyLeading: false,
            leadingWidth: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  context.localizations.homeSelector,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            elevation: 0.0,
            actions: [
              IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
          backgroundColor: Colors.white,
          body: Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xfff8f8f8),
                  width: 1,
                ),
              ),
            ),
            child: ListView.builder(
              itemCount: pokemonTypeList.length,
              itemBuilder: (context, index) {
                final isSelected = pokemonTypeList[index] == typeSelected;
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        final cubit = context.read<PokemonCubit>();
                        if (!(cubit.state.status == PokemonStatus.loading)) {
                          cubit.changeType(pokemonTypeList[index]);
                          Navigator.pop(context);
                        }
                      },
                      leading: Text(
                        capitalizeFirstLetter(pokemonTypeList[index].name) ??
                            '',
                        style: TextStyle(
                          fontSize: 16,
                          color: isSelected ? Colors.blueAccent : Colors.black,
                        ),
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey.shade400,
                    )
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

import 'package:pokedex/data/models/pokemon_model.dart';

class Pokemon {
  List<AbilitiesEntity>? abilities;
  int? baseExperience;
  CriesEntity? cries;
  int? height;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  String? name;
  int? order;
  Sprites? sprites;
  int? weight;

  Pokemon(
      {this.abilities,
      this.baseExperience,
      this.cries,
      this.height,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      this.name,
      this.order,
      this.sprites,
      this.weight});

  Pokemon.fromPokemonModel(PokemonModel model)
      : abilities = model.abilities
            ?.map((e) => AbilitiesEntity.fromAbilitiesModel(e))
            .toList(),
        baseExperience = model.baseExperience,
        cries = model.cries != null
            ? CriesEntity.fromCriesModel(model.cries!)
            : null,
        height = model.height,
        id = model.id,
        isDefault = model.isDefault,
        locationAreaEncounters = model.locationAreaEncounters,
        name = model.name,
        order = model.order,
        sprites = model.sprites,
        weight = model.weight;
}

class AbilitiesEntity {
  AbilityEntity? ability;
  bool? isHidden;
  int? slot;

  AbilitiesEntity({this.ability, this.isHidden, this.slot});

  factory AbilitiesEntity.fromAbilitiesModel(Abilities model) {
    return AbilitiesEntity(
      ability: model.ability != null
          ? AbilityEntity.fromAbilityModel(model.ability!)
          : null,
      isHidden: model.isHidden,
      slot: model.slot,
    );
  }
}

class AbilityEntity {
  String? name;
  String? url;

  AbilityEntity({this.name, this.url});
  factory AbilityEntity.fromAbilityModel(Ability model) {
    return AbilityEntity(
      name: model.name,
      url: model.url,
    );
  }
}

class CriesEntity {
  String? latest;
  String? legacy;

  CriesEntity({this.latest, this.legacy});
  factory CriesEntity.fromCriesModel(Cries model) {
    return CriesEntity(
      latest: model.latest,
      legacy: model.legacy,
    );
  }
}

class SpritesEntity {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  SpritesEntity({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });
  factory SpritesEntity.fromSpritesModel(Sprites model) {
    return SpritesEntity(
      backDefault: model.backDefault,
      backShiny: model.backShiny,
      frontDefault: model.frontDefault,
      frontShiny: model.frontShiny,
    );
  }
}

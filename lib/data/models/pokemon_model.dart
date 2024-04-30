class PokemonModel {
  List<Abilities>? abilities;
  int? baseExperience;
  Cries? cries;
  int? height;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  String? name;
  int? order;
  Ability? species;
  Sprites? sprites;
  int? weight;

  PokemonModel(
      {this.abilities,
      this.baseExperience,
      this.cries,
      this.height,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      this.name,
      this.order,
      this.species,
      this.sprites,
      this.weight});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    if (json['abilities'] != null) {
      abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add(Abilities.fromJson(v));
      });
    }
    baseExperience = json['base_experience'];
    cries = json['cries'] != null ? Cries.fromJson(json['cries']) : null;
    height = json['height'];

    id = json['id'];
    isDefault = json['is_default'];
    locationAreaEncounters = json['location_area_encounters'];
    name = json['name'];
    order = json['order'];
    species =
        json['species'] != null ? Ability.fromJson(json['species']) : null;
    sprites =
        json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null;

    weight = json['weight'];
  }
}

class Abilities {
  Ability? ability;
  bool? isHidden;
  int? slot;

  Abilities({this.ability, this.isHidden, this.slot});

  Abilities.fromJson(Map<String, dynamic> json) {
    ability =
        json['ability'] != null ? Ability.fromJson(json['ability']) : null;
    isHidden = json['is_hidden'];
    slot = json['slot'];
  }
}

class Ability {
  String? name;
  String? url;

  Ability({this.name, this.url});

  Ability.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Cries {
  String? latest;
  String? legacy;

  Cries({this.latest, this.legacy});

  Cries.fromJson(Map<String, dynamic> json) {
    latest = json['latest'];
    legacy = json['legacy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latest'] = latest;
    data['legacy'] = legacy;
    return data;
  }
}

class Sprites {
  String? backDefault;
  Null? backFemale;
  String? backShiny;
  Null? backShinyFemale;
  String? frontDefault;
  Null? frontFemale;
  String? frontShiny;
  Null? frontShinyFemale;

  Sprites({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  Sprites.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = json['back_female'];
    backShiny = json['back_shiny'];
    backShinyFemale = json['back_shiny_female'];
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }
}

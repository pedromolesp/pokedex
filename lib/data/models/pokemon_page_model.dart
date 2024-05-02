class PokemonPageModel {
  int? count;
  String? next;
  String? previous;
  List<NameUrl>? results;

  PokemonPageModel({this.count, this.next, this.previous, this.results});

  PokemonPageModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <NameUrl>[];
      json['results'].forEach((v) {
        results!.add(NameUrl.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NameUrl {
  String? name;
  String? url;

  NameUrl({this.name, this.url});

  NameUrl.fromJson(Map<String, dynamic> json) {
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

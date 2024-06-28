

class Datamodel {
  String? ok;
  List<Sources>? sources;

  Datamodel({this.ok, this.sources,});

  factory Datamodel.fromjson(Map json) {
    return Datamodel(
        ok: json['ok'],
        sources :(json['sources']as List).map<Sources>(
        (e) => Sources.fromjson(e)).toList());



    // sources: (json['sources'] as List)
    //     .map<Sources>((e) => Sources.fromjson(e))
    //     .toList());


  }
}

class Sources {
  String? id, name, description, url, category, language, country;

  Sources({this.id,
    this.name,
    this.description,
    this.url,
    this.category,
    this.language,
    this.country});

  factory Sources.fromjson(Map json) {
    return Sources(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      url: json['url'],
      category: json['category'],
      language: json['language'],
      country: json['country'],
    );
  }
}

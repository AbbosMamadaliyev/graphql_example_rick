import 'package:json_annotation/json_annotation.dart';
part 'queries.graphql.g.dart';

@JsonSerializable()
class QuerygetAllCharacters extends JsonSerializable {
  QuerygetAllCharacters(this.characters);

  @override
  factory QuerygetAllCharacters.fromJson(Map<String, dynamic> json) =>
      _$QuerygetAllCharactersFromJson(json);

  final QuerygetAllCharacters$fcharacters? characters;

  @override
  Map<String, dynamic> toJson() => _$QuerygetAllCharactersToJson(this);
}

@JsonSerializable()
class QuerygetAllCharacters$fcharacters extends JsonSerializable {
  QuerygetAllCharacters$fcharacters(this.results);

  @override
  factory QuerygetAllCharacters$fcharacters.fromJson(
          Map<String, dynamic> json) =>
      _$QuerygetAllCharacters$fcharactersFromJson(json);

  final List<QuerygetAllCharacters$fcharacters$fresults?>? results;

  @override
  Map<String, dynamic> toJson() =>
      _$QuerygetAllCharacters$fcharactersToJson(this);
}

@JsonSerializable()
class QuerygetAllCharacters$fcharacters$fresults extends JsonSerializable {
  QuerygetAllCharacters$fcharacters$fresults(this.id, this.name, this.image);

  @override
  factory QuerygetAllCharacters$fcharacters$fresults.fromJson(
          Map<String, dynamic> json) =>
      _$QuerygetAllCharacters$fcharacters$fresultsFromJson(json);

  final String? id;

  final String? name;

  final String? image;

  @override
  Map<String, dynamic> toJson() =>
      _$QuerygetAllCharacters$fcharacters$fresultsToJson(this);
}

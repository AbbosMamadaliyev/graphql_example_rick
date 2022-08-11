// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuerygetAllCharacters _$QuerygetAllCharactersFromJson(
        Map<String, dynamic> json) =>
    QuerygetAllCharacters(
      json['characters'] == null
          ? null
          : QuerygetAllCharacters$fcharacters.fromJson(
              json['characters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuerygetAllCharactersToJson(
        QuerygetAllCharacters instance) =>
    <String, dynamic>{
      'characters': instance.characters,
    };

QuerygetAllCharacters$fcharacters _$QuerygetAllCharacters$fcharactersFromJson(
        Map<String, dynamic> json) =>
    QuerygetAllCharacters$fcharacters(
      (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QuerygetAllCharacters$fcharacters$fresults.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuerygetAllCharacters$fcharactersToJson(
        QuerygetAllCharacters$fcharacters instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

QuerygetAllCharacters$fcharacters$fresults
    _$QuerygetAllCharacters$fcharacters$fresultsFromJson(
            Map<String, dynamic> json) =>
        QuerygetAllCharacters$fcharacters$fresults(
          json['id'] as String?,
          json['name'] as String?,
          json['image'] as String?,
        );

Map<String, dynamic> _$QuerygetAllCharacters$fcharacters$fresultsToJson(
        QuerygetAllCharacters$fcharacters$fresults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as int,
      identifiant: json['identifiant'] as String,
      dateNaissance:
          const DateTimeSerializer().fromJson(json['dateNaissance'] as String),
      nomArabe: json['nomArabe'] as String,
      nomLatin: json['nomLatin'] as String,
      prenomArabe: json['prenomArabe'] as String,
      prenomLatin: json['prenomLatin'] as String,
      lieuNaissance: json['lieuNaissance'] as String,
      lieuNaissanceArabe: json['lieuNaissanceArabe'] as String,
      photo: json['photo'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifiant': instance.identifiant,
      'dateNaissance':
          const DateTimeSerializer().toJson(instance.dateNaissance),
      'nomArabe': instance.nomArabe,
      'nomLatin': instance.nomLatin,
      'prenomArabe': instance.prenomArabe,
      'prenomLatin': instance.prenomLatin,
      'lieuNaissance': instance.lieuNaissance,
      'lieuNaissanceArabe': instance.lieuNaissanceArabe,
      'photo': instance.photo,
      'email': instance.email,
    };

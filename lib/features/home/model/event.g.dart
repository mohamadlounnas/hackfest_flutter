// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as int,
      attributes:
          EventAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$EventAttributesImpl _$$EventAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$EventAttributesImpl(
      name: json['name'] as String,
      date: json['date'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      publishedAt: json['publishedAt'] as String,
      description: json['description'] as String,
      photo: const PhotoModelDataConverter()
          .fromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventAttributesImplToJson(
        _$EventAttributesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'description': instance.description,
      'photo': const PhotoModelDataConverter().toJson(instance.photo),
    };

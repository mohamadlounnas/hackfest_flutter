// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as int,
      attributes:
          PostAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$PostAttributesImpl _$$PostAttributesImplFromJson(Map<String, dynamic> json) =>
    _$PostAttributesImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      description: json['description'] as String,
      photo: const PhotoModelDataConverter()
          .fromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostAttributesImplToJson(
        _$PostAttributesImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'description': instance.description,
      'photo': const PhotoModelDataConverter().toJson(instance.photo),
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as String,
      attributes: CategoryAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CategoryAttributesImpl _$$CategoryAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryAttributesImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryAttributesImplToJson(
        _$CategoryAttributesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as int,
      attributes:
          PhotoAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$PhotoAttributesImpl _$$PhotoAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoAttributesImpl(
      title: json['title'] as String?,
      photo: const PhotoModelDataConverter()
          .fromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PhotoAttributesImplToJson(
        _$PhotoAttributesImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'photo': const PhotoModelDataConverter().toJson(instance.photo),
    };

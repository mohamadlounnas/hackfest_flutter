// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      expirationDate:
          const DateTimeSerializer().fromJson(json['expirationDate'] as String),
      token: json['token'] as String,
      uuid: json['uuid'] as String,
      userId: json['userId'] as int,
      idIndividu: json['idIndividu'] as int,
      etablissementId: json['etablissementId'] as int,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'expirationDate':
          const DateTimeSerializer().toJson(instance.expirationDate),
      'token': instance.token,
      'uuid': instance.uuid,
      'userId': instance.userId,
      'idIndividu': instance.idIndividu,
      'etablissementId': instance.etablissementId,
      'userName': instance.userName,
    };

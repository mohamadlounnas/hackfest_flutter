// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodeImpl _$$PeriodeImplFromJson(Map<String, dynamic> json) =>
    _$PeriodeImpl(
      id: json['id'] as int,
      code: json['code'] as String,
      libelleLongLt: json['libelleLongLt'] as String,
      libelleLongAr: json['libelleLongAr'] as String,
      libelleCourtLt: json['libelleCourtLt'] as String?,
      libelleCourtAr: json['libelleCourtAr'] as String?,
      rang: json['rang'] as int,
      credit: json['credit'] as int,
      refCodePeriodicite: json['refCodePeriodicite'] as String?,
      rangNiveau: json['rangNiveau'] as int,
      refCodePeriode: json['refCodePeriode'] as String?,
      libelleLongFrNiveau: json['libelleLongFrNiveau'] as String,
      libelleLongFrCycle: json['libelleLongFrCycle'] as String,
      ncPeriodeId: json['ncPeriodeId'] as String?,
      ncPeriodeCode: json['ncPeriodeCode'] as String?,
      ncPeriodeLibelle: json['ncPeriodeLibelle'] as String?,
    );

Map<String, dynamic> _$$PeriodeImplToJson(_$PeriodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'libelleLongLt': instance.libelleLongLt,
      'libelleLongAr': instance.libelleLongAr,
      'libelleCourtLt': instance.libelleCourtLt,
      'libelleCourtAr': instance.libelleCourtAr,
      'rang': instance.rang,
      'credit': instance.credit,
      'refCodePeriodicite': instance.refCodePeriodicite,
      'rangNiveau': instance.rangNiveau,
      'refCodePeriode': instance.refCodePeriode,
      'libelleLongFrNiveau': instance.libelleLongFrNiveau,
      'libelleLongFrCycle': instance.libelleLongFrCycle,
      'ncPeriodeId': instance.ncPeriodeId,
      'ncPeriodeCode': instance.ncPeriodeCode,
      'ncPeriodeLibelle': instance.ncPeriodeLibelle,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CCNoteImpl _$$CCNoteImplFromJson(Map<String, dynamic> json) => _$CCNoteImpl(
      id: json['id'] as int,
      note: (json['note'] as num?)?.toDouble(),
      absent: json['absent'] as bool?,
      llPeriode: json['llPeriode'] as String,
      llPeriodeAr: json['llPeriodeAr'] as String,
      apCode: json['apCode'] as String,
      rattachementMcMcLibelleFr: json['rattachementMcMcLibelleFr'] as String,
      rattachementMcMcLibelleAr: json['rattachementMcMcLibelleAr'] as String,
    );

Map<String, dynamic> _$$CCNoteImplToJson(_$CCNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'absent': instance.absent,
      'llPeriode': instance.llPeriode,
      'llPeriodeAr': instance.llPeriodeAr,
      'apCode': instance.apCode,
      'rattachementMcMcLibelleFr': instance.rattachementMcMcLibelleFr,
      'rattachementMcMcLibelleAr': instance.rattachementMcMcLibelleAr,
    };

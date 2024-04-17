// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamNoteImpl _$$ExamNoteImplFromJson(Map<String, dynamic> json) =>
    _$ExamNoteImpl(
      id: json['id'] as int,
      rattachementMcId: json['rattachementMcId'] as int,
      ueCode: json['ueCode'] as String,
      ueNatureLlFr: json['ueNatureLlFr'] as String,
      mcLibelleFr: json['mcLibelleFr'] as String,
      mcLibelleAr: json['mcLibelleAr'] as String,
      rattachementMcCoefficient:
          (json['rattachementMcCoefficient'] as num).toDouble(),
      rattachementMcCredit: (json['rattachementMcCredit'] as num).toDouble(),
      planningSessionId: json['planningSessionId'] as int,
      planningSessionIntitule: json['planningSessionIntitule'] as String,
      idPeriode: json['idPeriode'] as int,
      noteExamen: (json['noteExamen'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ExamNoteImplToJson(_$ExamNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rattachementMcId': instance.rattachementMcId,
      'ueCode': instance.ueCode,
      'ueNatureLlFr': instance.ueNatureLlFr,
      'mcLibelleFr': instance.mcLibelleFr,
      'mcLibelleAr': instance.mcLibelleAr,
      'rattachementMcCoefficient': instance.rattachementMcCoefficient,
      'rattachementMcCredit': instance.rattachementMcCredit,
      'planningSessionId': instance.planningSessionId,
      'planningSessionIntitule': instance.planningSessionIntitule,
      'idPeriode': instance.idPeriode,
      'noteExamen': instance.noteExamen,
    };

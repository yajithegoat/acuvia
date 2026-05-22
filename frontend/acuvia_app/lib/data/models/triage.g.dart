// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TriageRequest _$TriageRequestFromJson(Map<String, dynamic> json) =>
    _TriageRequest(
      symptomsText: json['symptoms_text'] as String,
      checklist: (json['checklist'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$TriageRequestToJson(_TriageRequest instance) =>
    <String, dynamic>{
      'symptoms_text': instance.symptomsText,
      'checklist': instance.checklist,
    };

_TriageResult _$TriageResultFromJson(Map<String, dynamic> json) =>
    _TriageResult(
      urgency: json['urgency'] as String,
      reasons: (json['reasons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      recommendedActions: (json['recommended_actions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      probabilities: json['probabilities'] as Map<String, dynamic>,
      assessmentId: (json['assessment_id'] as num).toInt(),
    );

Map<String, dynamic> _$TriageResultToJson(_TriageResult instance) =>
    <String, dynamic>{
      'urgency': instance.urgency,
      'reasons': instance.reasons,
      'recommended_actions': instance.recommendedActions,
      'probabilities': instance.probabilities,
      'assessment_id': instance.assessmentId,
    };

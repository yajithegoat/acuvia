// ignore_for_file: non_abstract_class_inherits_abstract_member
import 'package:freezed_annotation/freezed_annotation.dart';
part 'triage.freezed.dart';
part 'triage.g.dart';

@freezed
class TriageRequest with _$TriageRequest {
  const factory TriageRequest({
    @JsonKey(name: 'symptoms_text') required String symptomsText,
    Map<String, bool>? checklist,
  }) = _TriageRequest;

  factory TriageRequest.fromJson(Map<String, dynamic> json) =>
      _$TriageRequestFromJson(json);
}

@freezed
class TriageResult with _$TriageResult {
  const factory TriageResult({
    required String urgency,
    required List<String> reasons,
    @JsonKey(name: 'recommended_actions') required List<String> recommendedActions,
    required Map<String, dynamic> probabilities,
    @JsonKey(name: 'assessment_id') required int assessmentId,
  }) = _TriageResult;

  factory TriageResult.fromJson(Map<String, dynamic> json) =>
      _$TriageResultFromJson(json);
}

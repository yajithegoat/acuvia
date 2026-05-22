// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TriageRequest {

@JsonKey(name: 'symptoms_text') String get symptomsText; Map<String, bool>? get checklist;
/// Create a copy of TriageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriageRequestCopyWith<TriageRequest> get copyWith => _$TriageRequestCopyWithImpl<TriageRequest>(this as TriageRequest, _$identity);

  /// Serializes this TriageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriageRequest&&(identical(other.symptomsText, symptomsText) || other.symptomsText == symptomsText)&&const DeepCollectionEquality().equals(other.checklist, checklist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symptomsText,const DeepCollectionEquality().hash(checklist));

@override
String toString() {
  return 'TriageRequest(symptomsText: $symptomsText, checklist: $checklist)';
}


}

/// @nodoc
abstract mixin class $TriageRequestCopyWith<$Res>  {
  factory $TriageRequestCopyWith(TriageRequest value, $Res Function(TriageRequest) _then) = _$TriageRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'symptoms_text') String symptomsText, Map<String, bool>? checklist
});




}
/// @nodoc
class _$TriageRequestCopyWithImpl<$Res>
    implements $TriageRequestCopyWith<$Res> {
  _$TriageRequestCopyWithImpl(this._self, this._then);

  final TriageRequest _self;
  final $Res Function(TriageRequest) _then;

/// Create a copy of TriageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symptomsText = null,Object? checklist = freezed,}) {
  return _then(_self.copyWith(
symptomsText: null == symptomsText ? _self.symptomsText : symptomsText // ignore: cast_nullable_to_non_nullable
as String,checklist: freezed == checklist ? _self.checklist : checklist // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TriageRequest].
extension TriageRequestPatterns on TriageRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriageRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriageRequest value)  $default,){
final _that = this;
switch (_that) {
case _TriageRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TriageRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'symptoms_text')  String symptomsText,  Map<String, bool>? checklist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriageRequest() when $default != null:
return $default(_that.symptomsText,_that.checklist);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'symptoms_text')  String symptomsText,  Map<String, bool>? checklist)  $default,) {final _that = this;
switch (_that) {
case _TriageRequest():
return $default(_that.symptomsText,_that.checklist);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'symptoms_text')  String symptomsText,  Map<String, bool>? checklist)?  $default,) {final _that = this;
switch (_that) {
case _TriageRequest() when $default != null:
return $default(_that.symptomsText,_that.checklist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TriageRequest implements TriageRequest {
  const _TriageRequest({@JsonKey(name: 'symptoms_text') required this.symptomsText, final  Map<String, bool>? checklist}): _checklist = checklist;
  factory _TriageRequest.fromJson(Map<String, dynamic> json) => _$TriageRequestFromJson(json);

@override@JsonKey(name: 'symptoms_text') final  String symptomsText;
 final  Map<String, bool>? _checklist;
@override Map<String, bool>? get checklist {
  final value = _checklist;
  if (value == null) return null;
  if (_checklist is EqualUnmodifiableMapView) return _checklist;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TriageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriageRequestCopyWith<_TriageRequest> get copyWith => __$TriageRequestCopyWithImpl<_TriageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TriageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriageRequest&&(identical(other.symptomsText, symptomsText) || other.symptomsText == symptomsText)&&const DeepCollectionEquality().equals(other._checklist, _checklist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symptomsText,const DeepCollectionEquality().hash(_checklist));

@override
String toString() {
  return 'TriageRequest(symptomsText: $symptomsText, checklist: $checklist)';
}


}

/// @nodoc
abstract mixin class _$TriageRequestCopyWith<$Res> implements $TriageRequestCopyWith<$Res> {
  factory _$TriageRequestCopyWith(_TriageRequest value, $Res Function(_TriageRequest) _then) = __$TriageRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'symptoms_text') String symptomsText, Map<String, bool>? checklist
});




}
/// @nodoc
class __$TriageRequestCopyWithImpl<$Res>
    implements _$TriageRequestCopyWith<$Res> {
  __$TriageRequestCopyWithImpl(this._self, this._then);

  final _TriageRequest _self;
  final $Res Function(_TriageRequest) _then;

/// Create a copy of TriageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symptomsText = null,Object? checklist = freezed,}) {
  return _then(_TriageRequest(
symptomsText: null == symptomsText ? _self.symptomsText : symptomsText // ignore: cast_nullable_to_non_nullable
as String,checklist: freezed == checklist ? _self._checklist : checklist // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,
  ));
}


}


/// @nodoc
mixin _$TriageResult {

 String get urgency; List<String> get reasons;@JsonKey(name: 'recommended_actions') List<String> get recommendedActions; Map<String, dynamic> get probabilities;@JsonKey(name: 'assessment_id') int get assessmentId;
/// Create a copy of TriageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriageResultCopyWith<TriageResult> get copyWith => _$TriageResultCopyWithImpl<TriageResult>(this as TriageResult, _$identity);

  /// Serializes this TriageResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriageResult&&(identical(other.urgency, urgency) || other.urgency == urgency)&&const DeepCollectionEquality().equals(other.reasons, reasons)&&const DeepCollectionEquality().equals(other.recommendedActions, recommendedActions)&&const DeepCollectionEquality().equals(other.probabilities, probabilities)&&(identical(other.assessmentId, assessmentId) || other.assessmentId == assessmentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,urgency,const DeepCollectionEquality().hash(reasons),const DeepCollectionEquality().hash(recommendedActions),const DeepCollectionEquality().hash(probabilities),assessmentId);

@override
String toString() {
  return 'TriageResult(urgency: $urgency, reasons: $reasons, recommendedActions: $recommendedActions, probabilities: $probabilities, assessmentId: $assessmentId)';
}


}

/// @nodoc
abstract mixin class $TriageResultCopyWith<$Res>  {
  factory $TriageResultCopyWith(TriageResult value, $Res Function(TriageResult) _then) = _$TriageResultCopyWithImpl;
@useResult
$Res call({
 String urgency, List<String> reasons,@JsonKey(name: 'recommended_actions') List<String> recommendedActions, Map<String, dynamic> probabilities,@JsonKey(name: 'assessment_id') int assessmentId
});




}
/// @nodoc
class _$TriageResultCopyWithImpl<$Res>
    implements $TriageResultCopyWith<$Res> {
  _$TriageResultCopyWithImpl(this._self, this._then);

  final TriageResult _self;
  final $Res Function(TriageResult) _then;

/// Create a copy of TriageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? urgency = null,Object? reasons = null,Object? recommendedActions = null,Object? probabilities = null,Object? assessmentId = null,}) {
  return _then(_self.copyWith(
urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as String,reasons: null == reasons ? _self.reasons : reasons // ignore: cast_nullable_to_non_nullable
as List<String>,recommendedActions: null == recommendedActions ? _self.recommendedActions : recommendedActions // ignore: cast_nullable_to_non_nullable
as List<String>,probabilities: null == probabilities ? _self.probabilities : probabilities // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assessmentId: null == assessmentId ? _self.assessmentId : assessmentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TriageResult].
extension TriageResultPatterns on TriageResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriageResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriageResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriageResult value)  $default,){
final _that = this;
switch (_that) {
case _TriageResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriageResult value)?  $default,){
final _that = this;
switch (_that) {
case _TriageResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String urgency,  List<String> reasons, @JsonKey(name: 'recommended_actions')  List<String> recommendedActions,  Map<String, dynamic> probabilities, @JsonKey(name: 'assessment_id')  int assessmentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriageResult() when $default != null:
return $default(_that.urgency,_that.reasons,_that.recommendedActions,_that.probabilities,_that.assessmentId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String urgency,  List<String> reasons, @JsonKey(name: 'recommended_actions')  List<String> recommendedActions,  Map<String, dynamic> probabilities, @JsonKey(name: 'assessment_id')  int assessmentId)  $default,) {final _that = this;
switch (_that) {
case _TriageResult():
return $default(_that.urgency,_that.reasons,_that.recommendedActions,_that.probabilities,_that.assessmentId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String urgency,  List<String> reasons, @JsonKey(name: 'recommended_actions')  List<String> recommendedActions,  Map<String, dynamic> probabilities, @JsonKey(name: 'assessment_id')  int assessmentId)?  $default,) {final _that = this;
switch (_that) {
case _TriageResult() when $default != null:
return $default(_that.urgency,_that.reasons,_that.recommendedActions,_that.probabilities,_that.assessmentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TriageResult implements TriageResult {
  const _TriageResult({required this.urgency, required final  List<String> reasons, @JsonKey(name: 'recommended_actions') required final  List<String> recommendedActions, required final  Map<String, dynamic> probabilities, @JsonKey(name: 'assessment_id') required this.assessmentId}): _reasons = reasons,_recommendedActions = recommendedActions,_probabilities = probabilities;
  factory _TriageResult.fromJson(Map<String, dynamic> json) => _$TriageResultFromJson(json);

@override final  String urgency;
 final  List<String> _reasons;
@override List<String> get reasons {
  if (_reasons is EqualUnmodifiableListView) return _reasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reasons);
}

 final  List<String> _recommendedActions;
@override@JsonKey(name: 'recommended_actions') List<String> get recommendedActions {
  if (_recommendedActions is EqualUnmodifiableListView) return _recommendedActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedActions);
}

 final  Map<String, dynamic> _probabilities;
@override Map<String, dynamic> get probabilities {
  if (_probabilities is EqualUnmodifiableMapView) return _probabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_probabilities);
}

@override@JsonKey(name: 'assessment_id') final  int assessmentId;

/// Create a copy of TriageResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriageResultCopyWith<_TriageResult> get copyWith => __$TriageResultCopyWithImpl<_TriageResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TriageResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriageResult&&(identical(other.urgency, urgency) || other.urgency == urgency)&&const DeepCollectionEquality().equals(other._reasons, _reasons)&&const DeepCollectionEquality().equals(other._recommendedActions, _recommendedActions)&&const DeepCollectionEquality().equals(other._probabilities, _probabilities)&&(identical(other.assessmentId, assessmentId) || other.assessmentId == assessmentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,urgency,const DeepCollectionEquality().hash(_reasons),const DeepCollectionEquality().hash(_recommendedActions),const DeepCollectionEquality().hash(_probabilities),assessmentId);

@override
String toString() {
  return 'TriageResult(urgency: $urgency, reasons: $reasons, recommendedActions: $recommendedActions, probabilities: $probabilities, assessmentId: $assessmentId)';
}


}

/// @nodoc
abstract mixin class _$TriageResultCopyWith<$Res> implements $TriageResultCopyWith<$Res> {
  factory _$TriageResultCopyWith(_TriageResult value, $Res Function(_TriageResult) _then) = __$TriageResultCopyWithImpl;
@override @useResult
$Res call({
 String urgency, List<String> reasons,@JsonKey(name: 'recommended_actions') List<String> recommendedActions, Map<String, dynamic> probabilities,@JsonKey(name: 'assessment_id') int assessmentId
});




}
/// @nodoc
class __$TriageResultCopyWithImpl<$Res>
    implements _$TriageResultCopyWith<$Res> {
  __$TriageResultCopyWithImpl(this._self, this._then);

  final _TriageResult _self;
  final $Res Function(_TriageResult) _then;

/// Create a copy of TriageResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? urgency = null,Object? reasons = null,Object? recommendedActions = null,Object? probabilities = null,Object? assessmentId = null,}) {
  return _then(_TriageResult(
urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as String,reasons: null == reasons ? _self._reasons : reasons // ignore: cast_nullable_to_non_nullable
as List<String>,recommendedActions: null == recommendedActions ? _self._recommendedActions : recommendedActions // ignore: cast_nullable_to_non_nullable
as List<String>,probabilities: null == probabilities ? _self._probabilities : probabilities // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assessmentId: null == assessmentId ? _self.assessmentId : assessmentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

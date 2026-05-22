// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Hospital {

 int get id; String get name; String get address; double get latitude; double get longitude; String? get phoneNumber; String? get website;
/// Create a copy of Hospital
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HospitalCopyWith<Hospital> get copyWith => _$HospitalCopyWithImpl<Hospital>(this as Hospital, _$identity);

  /// Serializes this Hospital to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Hospital&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.website, website) || other.website == website));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,latitude,longitude,phoneNumber,website);

@override
String toString() {
  return 'Hospital(id: $id, name: $name, address: $address, latitude: $latitude, longitude: $longitude, phoneNumber: $phoneNumber, website: $website)';
}


}

/// @nodoc
abstract mixin class $HospitalCopyWith<$Res>  {
  factory $HospitalCopyWith(Hospital value, $Res Function(Hospital) _then) = _$HospitalCopyWithImpl;
@useResult
$Res call({
 int id, String name, String address, double latitude, double longitude, String? phoneNumber, String? website
});




}
/// @nodoc
class _$HospitalCopyWithImpl<$Res>
    implements $HospitalCopyWith<$Res> {
  _$HospitalCopyWithImpl(this._self, this._then);

  final Hospital _self;
  final $Res Function(Hospital) _then;

/// Create a copy of Hospital
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? phoneNumber = freezed,Object? website = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Hospital].
extension HospitalPatterns on Hospital {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Hospital value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Hospital() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Hospital value)  $default,){
final _that = this;
switch (_that) {
case _Hospital():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Hospital value)?  $default,){
final _that = this;
switch (_that) {
case _Hospital() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String address,  double latitude,  double longitude,  String? phoneNumber,  String? website)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Hospital() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.latitude,_that.longitude,_that.phoneNumber,_that.website);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String address,  double latitude,  double longitude,  String? phoneNumber,  String? website)  $default,) {final _that = this;
switch (_that) {
case _Hospital():
return $default(_that.id,_that.name,_that.address,_that.latitude,_that.longitude,_that.phoneNumber,_that.website);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String address,  double latitude,  double longitude,  String? phoneNumber,  String? website)?  $default,) {final _that = this;
switch (_that) {
case _Hospital() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.latitude,_that.longitude,_that.phoneNumber,_that.website);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Hospital implements Hospital {
  const _Hospital({required this.id, required this.name, required this.address, required this.latitude, required this.longitude, this.phoneNumber, this.website});
  factory _Hospital.fromJson(Map<String, dynamic> json) => _$HospitalFromJson(json);

@override final  int id;
@override final  String name;
@override final  String address;
@override final  double latitude;
@override final  double longitude;
@override final  String? phoneNumber;
@override final  String? website;

/// Create a copy of Hospital
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HospitalCopyWith<_Hospital> get copyWith => __$HospitalCopyWithImpl<_Hospital>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HospitalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Hospital&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.website, website) || other.website == website));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,latitude,longitude,phoneNumber,website);

@override
String toString() {
  return 'Hospital(id: $id, name: $name, address: $address, latitude: $latitude, longitude: $longitude, phoneNumber: $phoneNumber, website: $website)';
}


}

/// @nodoc
abstract mixin class _$HospitalCopyWith<$Res> implements $HospitalCopyWith<$Res> {
  factory _$HospitalCopyWith(_Hospital value, $Res Function(_Hospital) _then) = __$HospitalCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String address, double latitude, double longitude, String? phoneNumber, String? website
});




}
/// @nodoc
class __$HospitalCopyWithImpl<$Res>
    implements _$HospitalCopyWith<$Res> {
  __$HospitalCopyWithImpl(this._self, this._then);

  final _Hospital _self;
  final $Res Function(_Hospital) _then;

/// Create a copy of Hospital
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? phoneNumber = freezed,Object? website = freezed,}) {
  return _then(_Hospital(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Hospital _$HospitalFromJson(Map<String, dynamic> json) => _Hospital(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  address: json['address'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  phoneNumber: json['phoneNumber'] as String?,
  website: json['website'] as String?,
);

Map<String, dynamic> _$HospitalToJson(_Hospital instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'phoneNumber': instance.phoneNumber,
  'website': instance.website,
};

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hospital.freezed.dart';
part 'hospital.g.dart';

@freezed
class Hospital with _$Hospital { // ignore: non_abstract_class_inherits_abstract_member
  const factory Hospital({
    required int id,
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    String? phoneNumber,
    String? website,
  }) = _Hospital;

  factory Hospital.fromJson(Map<String, dynamic> json) =>
      _$HospitalFromJson(json);
}

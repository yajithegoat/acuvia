import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  // This private constructor is the secret sauce Freezed needs!
  const User._();

  const factory User({
    required int id,
    required String email,
    String? fullName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/http_client.dart';
import '../models/user.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthRepository(dio);
});

class AuthRepository {
  AuthRepository(this._dio);
  final Dio _dio;

  Future<String> login(String email, String password) async {
    final res = await _dio.post(
      '/auth/login',
      data: {'email': email, 'password': password},
    );
    return res.data['token'] as String;
  }

  Future<String> register(
    String email,
    String password, {
    String? fullName,
  }) async {
    final res = await _dio.post(
      '/auth/register',
      data: {'email': email, 'password': password, 'fullName': fullName},
    );
    return res.data['token'] as String;
  }

  Future<User> getCurrentUser(String token) async {
    final res = await _dio.get(
      '/auth/me',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return User.fromJson(res.data as Map<String, dynamic>);
  }
}

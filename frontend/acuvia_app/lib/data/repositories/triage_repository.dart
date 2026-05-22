import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/triage.dart';
import '../../core/http_client.dart';

final triageRepositoryProvider = Provider<TriageRepository>(
  (ref) => TriageRepository(ref.read(dioProvider)),
);

class TriageRepository {
  TriageRepository(this._dio);
  final Dio _dio;

  Future<TriageResult> submit(TriageRequest req) async {
    final res = await _dio.post('/triage', data: req.toJson());
    return TriageResult.fromJson(Map<String, dynamic>.from(res.data));
  }

  Future<Map<String, dynamic>> history({int limit = 20, int offset = 0}) async {
    final res = await _dio.get(
      '/history',
      queryParameters: {'limit': limit, 'offset': offset},
    );
    return Map<String, dynamic>.from(res.data);
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/http_client.dart';

final historyRepositoryProvider = Provider<HistoryRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return HistoryRepository(dio);
});

class HistoryRepository {
  HistoryRepository(this._dio);
  final Dio _dio;

  Future<Map<String, dynamic>> getHistory({
    int limit = 20,
    int offset = 0,
  }) async {
    final res = await _dio.get(
      '/history',
      queryParameters: {'limit': limit, 'offset': offset},
    );
    return res.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getDetail(int id) async {
    final res = await _dio.get('/history/$id');
    return res.data as Map<String, dynamic>;
  }
}

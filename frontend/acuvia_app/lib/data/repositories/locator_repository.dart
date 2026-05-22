import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/hospital.dart';
import '../../core/http_client.dart';

final locatorRepositoryProvider = Provider<LocatorRepository>((ref) {
  final dio = ref.read(dioProvider);
  return LocatorRepository(dio);
});

class LocatorRepository {
  LocatorRepository(this._dio);
  final Dio _dio;

  Future<List<Hospital>> nearby({
    required double lat,
    required double lon,
  }) async {
    final res = await _dio.get(
      '/hospitals/nearby',
      queryParameters: {'lat': lat, 'lon': lon},
    );
    final list = List<Map<String, dynamic>>.from(res.data as List);
    return list.map(Hospital.fromJson).toList();
  }
}

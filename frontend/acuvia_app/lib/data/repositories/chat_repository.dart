import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/chat.dart';
import '../../core/http_client.dart';

final chatRepositoryProvider = Provider<ChatRepository>(
  (ref) => ChatRepository(ref.read(dioProvider)),
);

class ChatRepository {
  ChatRepository(this._dio);
  final Dio _dio;

  Future<ChatResponse> send(String message) async {
    final res = await _dio.post('/chat', data: {'message': message});
    return ChatResponse.fromJson(Map<String, dynamic>.from(res.data));
  }
}

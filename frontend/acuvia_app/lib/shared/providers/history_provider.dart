import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/history_repository.dart';

final historyControllerProvider = Provider<HistoryController>(
  HistoryController.new,
);

class HistoryController {
  HistoryController(this._ref);
  final Ref _ref;

  Future<Map<String, dynamic>> getHistory({
    int limit = 20,
    int offset = 0,
  }) =>
      _ref
          .read(historyRepositoryProvider)
          .getHistory(limit: limit, offset: offset);

  Future<Map<String, dynamic>> getDetail(int id) =>
      _ref.read(historyRepositoryProvider).getDetail(id);
}

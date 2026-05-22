import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/hospital.dart';
import '../../../data/repositories/locator_repository.dart';

final locatorControllerProvider = Provider<LocatorController>(
  LocatorController.new,
);

class LocatorController {
  LocatorController(this._ref);
  final Ref _ref;

  Future<List<Hospital>> getNearbyHospitals({
    required double latitude,
    required double longitude,
  }) =>
      _ref.read(locatorRepositoryProvider).nearby(lat: latitude, lon: longitude);
}

import 'package:app/core/constants/constants.dart';
import 'package:app/core/models/category_record.dart';
import 'package:app/domain/api/time_tracking_api.dart';

// Repository Definition
abstract class TrackerRepository {
  final timeTrackingAPI = TimeTrackingAPI();
  Future<List<CategoryRecord>?> getTrackerRecords();
}

// Repository Implementation
class ImplTrackerRepository extends TrackerRepository {
  @override
  Future<List<CategoryRecord>?> getTrackerRecords() async {
    return timeTrackingAPI.getRecords().catchError((err, s) {
      throw err;
    }).then(
      (value) => value!.map((e) => CategoryRecord.fromJson(e)).toList(),
    );
  }
}

// Repository Mock 
class MockRepository extends TrackerRepository {
  @override
  Future<List<CategoryRecord>> getTrackerRecords() async {
    return kSampleResponse;
  }
}

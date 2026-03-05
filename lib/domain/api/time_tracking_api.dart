import 'package:app/core/constants/constants.dart';
import 'package:app/ui/widgets/utils.dart';
import 'package:dio/dio.dart';

class TimeTrackingAPI {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: baseUrl,
          sendTimeout: const Duration(seconds: 30),
          connectTimeout: const Duration(seconds: 50),
          receiveTimeout: const Duration(seconds: 50),
          contentType: 'application/json',
          validateStatus: (int? s) => s! < 500,
        ),
      );

  Future<List?> getRecords() async {
    final Response response = await dio
        .get('',
            options: Options(
              headers: {
                'Content-Type': 'application/json',
              },
            ))
        .catchError((err, s) {
      logger.e(err);
      logger.e(s);
      throw err;
    });

    return response.data;
  }
}

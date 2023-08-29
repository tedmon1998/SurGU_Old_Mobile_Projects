import 'package:dio/dio.dart';
import 'package:eventssurgu/reader/api_events_model.dart';

class ApiClientCourse {
  String url =
      "https://openapi.surgu.ru/api/Events?expand=attachments&pageSize=48";
  late Dio _dio;

  ApiClientCourse() {
    _dio = Dio();
  }

  Future<List<Entry>> getEvents() async {
    try {
      Response response = await _dio.get(url);
      Events eventsResponse = Events.fromJson(response.data);
      late List<Entry> statEvents = [];
      statEvents = eventsResponse.entries;
      return statEvents;
    } on DioError catch (e) {
      // ignore: unrelated_type_equality_checks
      if (e.response == 404) {
        // ignore: avoid_print
        print(e.response!.statusCode);
      } else {
        // ignore: avoid_print
        print(e.error);
      }
    }
    throw Exception('failed connect');
  }
}

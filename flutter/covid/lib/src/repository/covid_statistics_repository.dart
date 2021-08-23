import 'package:covid/src/model/covid_statistics.dart';
import 'package:dio/dio.dart';
import 'package:xml/xml.dart';

// class CovidStatisticsRepository {
//   late var _dio;
//   CovidStatisticsRepository() {
//     _dio = Dio(
//       BaseOptions(
//         baseUrl: "http://openapi.data.go.kr",
//         queryParameters: {
//           'ServiceKey':
//               'OwsA0h2NPS5LV4sukqSATr/o0PGuGvAHgXYjKc4LB85JYd9j5+FJc5JZwOUYJ4TkwKE68rZYPuPstzFc+n62AQ=='
//         },
//       ),
//     );
//   }

//   Future<List<Covid19StaticsModel>> fetchCovid19Statistics(
//       {String? startDate, String? endDate}) async {
//     var query = Map<String, String>();
//     if (startDate != null) query.putIfAbsent('startCreateDt', () => startDate);
//     if (endDate != null) query.putIfAbsent('endCreateDt', () => endDate);
//     var response = await _dio.get(
//         '/openapi/service/rest/Covid19/getCovid19InfStateJson',
//         queryParameters: query);
//     final document = XmlDocument.parse(response.data);
//     // final document = XmlDocument.parse(bookshelfXml);
//     final results = document.findAllElements('item');
//     if (results.isNotEmpty) {
//       return results
//           .map<Covid19StaticsModel>(
//               (element) => Covid19StaticsModel.fromXml(element))
//           .toList();
//       // return Covid19StaticsModel.fromXml(results.first);
//     } else {
//       return Future.value(null);
//     }
//   }
// }

class CovidStatisticsRepository {
  late var _dio;
  CovidStatisticsRepository() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "http://openapi.data.go.kr",
        queryParameters: {
          'ServiceKey':
              'OwsA0h2NPS5LV4sukqSATr/o0PGuGvAHgXYjKc4LB85JYd9j5+FJc5JZwOUYJ4TkwKE68rZYPuPstzFc+n62AQ=='
        },
      ),
    );
  }

  Future<List<Covid19StaticsModel>> fetchCovid19Statistics(
      {String? startDate, String? endDate}) async {
    var query = Map<String, String>();
    if (startDate != null) query.putIfAbsent('startCreateDt', () => startDate);
    if (endDate != null) query.putIfAbsent('endCreateDt', () => endDate);
    var response = await _dio.get(
        '/openapi/service/rest/Covid19/getCovid19InfStateJson',
        queryParameters: query);
    final document = XmlDocument.parse(response.data);
    final results = document.findAllElements('item');
    if (results.isNotEmpty) {
      return results
          .map<Covid19StaticsModel>(
              (element) => Covid19StaticsModel.fromXml(element))
          .toList();
    } else {
      return Future.value(null);
    }
  }
}

// ignore_for_file: inference_failure_on_function_invocation

import 'package:dio/dio.dart';
import 'package:elite_one/src/features/elite/data/models/league_standing.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://apiv2.allsportsapi.com',
  ),
)..interceptors.add(
    LogInterceptor(
      responseBody: true,
      requestBody: true,
    ),
  );

class StandingsService {
  static Future<List<Standing>> getStandings() async {
    try {
      final response = await dio.get(
        '/football',
        data: {
          'met': 'Standings',
          'leagueId': 112,
          'APIkey': dotenv.get('ALL_SPORTS_API_KEY')
        },
      );

      final data = response.data as Map<String, dynamic>;
      // ignore: avoid_dynamic_calls
      final standings = data['result']['total'] as List<dynamic>;
      return standings
          .map((standing) => Standing.fromMap(standing as Map<String, dynamic>))
          .toList();
    } on DioError catch (dioEx) {
      // throw good error message to user based on dioEx
      throw Exception('Failed to get standings: ${dioEx.message}');
    } catch (ex) {
      rethrow;
    }
  }
}

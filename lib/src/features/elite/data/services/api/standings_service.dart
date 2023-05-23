// ignore_for_file: inference_failure_on_function_invocation

import 'package:dio/dio.dart';
import 'package:elite_one/src/features/elite/data/models/fixture.dart';
import 'package:elite_one/src/features/elite/data/models/league_standing.dart';
import 'package:elite_one/src/shared/extensions/log.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';

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
        queryParameters: {
          'met': 'Standings',
          'leagueId': 112,
          'APIkey': dotenv.get('ALL_SPORTS_API_KEY')
        },
      );

      final data = response.data as Map<String, dynamic>;
      // ignore: avoid_dynamic_calls

      final standingsData = data['result']['total'] as List<dynamic>;
      '[DATA] => $standingsData'.log();
      final standings = standingsData
          .map((standing) => Standing.fromMap(standing as Map<String, dynamic>))
          .toList();
      // filter and return only standing with reguarl season
      final filtered = standings
          .where((standing) => standing.stage_name == 'Regular Season')
          .toList()
        ..sort(
          (teamA, teamB) => teamB.standing_PTS.compareTo(teamA.standing_PTS),
        );
      return filtered;
    } on DioError catch (dioEx) {
      // throw good error message to user based on dioEx
      throw Exception('Failed to get standings: ${dioEx.message}');
    } catch (ex) {
      rethrow;
    }
  }

  static Future<List<Fixture>> getFixtures({
    required DateTime from,
    required DateTime to,
  }) async {
    try {
      final response = await dio.get(
        '/football',
        queryParameters: {
          'met': 'Fixtures',
          'leagueId': 112,
          'from': DateFormat('yyyy-MM-dd').format(from),
          'to': DateFormat('yyyy-MM-dd').format(to),
          'APIkey': dotenv.get('ALL_SPORTS_API_KEY')
        },
      );

      final data = response.data as Map<String, dynamic>;
      // ignore: avoid_dynamic_calls

      final fixturesData = data['result'] as List<dynamic>;
      '[DATA] => $fixturesData'.log();
      final fixtures = fixturesData
          .map((standing) => Fixture.fromMap(standing as Map<String, dynamic>))
          .toList();
      // filter and return only standing with reguarl season
      return fixtures;
    } on DioError catch (dioEx) {
      // throw good error message to user based on dioEx
      throw Exception('Failed to get standings: ${dioEx.message}');
    } catch (ex) {
      rethrow;
    }
  }
}

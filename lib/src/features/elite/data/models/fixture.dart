// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

import 'dart:convert';

import 'package:collection/collection.dart';

class Fixture {
  Fixture({
    required this.event_key,
    required this.event_date,
    required this.event_time,
    required this.event_home_team,
    required this.home_team_key,
    required this.event_away_team,
    required this.away_team_key,
    required this.event_halftime_result,
    required this.event_final_result,
    required this.event_ft_result,
    required this.event_penalty_result,
    required this.event_status,
    required this.country_name,
    required this.league_name,
    required this.league_key,
    required this.league_round,
    required this.league_season,
    required this.event_live,
    required this.event_stadium,
    required this.event_referee,
    required this.home_team_logo,
    required this.away_team_logo,
    required this.event_country_key,
    required this.league_logo,
    required this.country_logo,
    required this.event_home_formation,
    required this.event_away_formation,
    required this.fk_stage_key,
    required this.stage_name,
    required this.league_group,
    required this.goalscorers,
    required this.substitutes,
    required this.cards,
    required this.lineups,
    required this.statistics,
  });

  factory Fixture.fromMap(Map<String, dynamic> map) {
    return Fixture(
      event_key: (map['event_key'].toInt() ?? 0) as int,
      event_date: (map['event_date'] ?? '') as String,
      event_time: (map['event_time'] ?? '') as String,
      event_home_team: (map['event_home_team'] ?? '') as String,
      home_team_key: (map['home_team_key'].toInt() ?? 0) as int,
      event_away_team: (map['event_away_team'] ?? '') as String,
      away_team_key: (map['away_team_key'].toInt() ?? 0) as int,
      event_halftime_result: (map['event_halftime_result'] ?? '') as String,
      event_final_result: (map['event_final_result'] ?? '') as String,
      event_ft_result: (map['event_ft_result'] ?? '') as String,
      event_penalty_result: (map['event_penalty_result'] ?? '') as String,
      event_status: (map['event_status'] ?? '') as String,
      country_name: (map['country_name'] ?? '') as String,
      league_name: (map['league_name'] ?? '') as String,
      league_key: (map['league_key'].toInt() ?? 0) as int,
      league_round: (map['league_round'] ?? '') as String,
      league_season: (map['league_season'] ?? '') as String,
      event_live: (map['event_live'] ?? '') as String,
      event_stadium: (map['event_stadium'] ?? '') as String,
      event_referee: (map['event_referee'] ?? '') as String,
      home_team_logo: (map['home_team_logo'] ?? '') as String,
      away_team_logo: (map['away_team_logo'] ?? '') as String,
      event_country_key: (map['event_country_key'].toInt() ?? 0) as int,
      league_logo: (map['league_logo'] ?? '') as String,
      country_logo: (map['country_logo'] ?? '') as String,
      event_home_formation: (map['event_home_formation'] ?? '') as String,
      event_away_formation: (map['event_away_formation'] ?? '') as String,
      fk_stage_key: (map['fk_stage_key'].toInt() ?? 0) as int,
      stage_name: (map['stage_name'] ?? '') as String,
      league_group: (map['league_group'] ?? '') as String,
      goalscorers: List<dynamic>.from(
        (map['goalscorers'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      substitutes: List<dynamic>.from(
        (map['substitutes'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      cards: List<dynamic>.from(
        (map['cards'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      lineups: Lineups.fromMap(map['lineups'] as Map<String, dynamic>),
      statistics: List<dynamic>.from(
        (map['statistics'] ?? const <dynamic>[]) as List<dynamic>,
      ),
    );
  }

  factory Fixture.fromJson(String source) =>
      Fixture.fromMap(json.decode(source) as Map<String, dynamic>);
  final int event_key;
  final String event_date;
  final String event_time;
  final String event_home_team;
  final int home_team_key;
  final String event_away_team;
  final int away_team_key;
  final String event_halftime_result;
  final String event_final_result;
  final String event_ft_result;
  final String event_penalty_result;
  final String event_status;
  final String country_name;
  final String league_name;
  final int league_key;
  final String league_round;
  final String league_season;
  final String event_live;
  final String event_stadium;
  final String event_referee;
  final String home_team_logo;
  final String away_team_logo;
  final int event_country_key;
  final String league_logo;
  final String country_logo;
  final String event_home_formation;
  final String event_away_formation;
  final int fk_stage_key;
  final String stage_name;
  final String league_group;
  final List<dynamic> goalscorers;
  final List<dynamic> substitutes;
  final List<dynamic> cards;
  final Lineups lineups;
  final List<dynamic> statistics;

  Fixture copyWith({
    int? event_key,
    String? event_date,
    String? event_time,
    String? event_home_team,
    int? home_team_key,
    String? event_away_team,
    int? away_team_key,
    String? event_halftime_result,
    String? event_final_result,
    String? event_ft_result,
    String? event_penalty_result,
    String? event_status,
    String? country_name,
    String? league_name,
    int? league_key,
    String? league_round,
    String? league_season,
    String? event_live,
    String? event_stadium,
    String? event_referee,
    String? home_team_logo,
    String? away_team_logo,
    int? event_country_key,
    String? league_logo,
    String? country_logo,
    String? event_home_formation,
    String? event_away_formation,
    int? fk_stage_key,
    String? stage_name,
    String? league_group,
    List<dynamic>? goalscorers,
    List<dynamic>? substitutes,
    List<dynamic>? cards,
    Lineups? lineups,
    List<dynamic>? statistics,
  }) {
    return Fixture(
      event_key: event_key ?? this.event_key,
      event_date: event_date ?? this.event_date,
      event_time: event_time ?? this.event_time,
      event_home_team: event_home_team ?? this.event_home_team,
      home_team_key: home_team_key ?? this.home_team_key,
      event_away_team: event_away_team ?? this.event_away_team,
      away_team_key: away_team_key ?? this.away_team_key,
      event_halftime_result:
          event_halftime_result ?? this.event_halftime_result,
      event_final_result: event_final_result ?? this.event_final_result,
      event_ft_result: event_ft_result ?? this.event_ft_result,
      event_penalty_result: event_penalty_result ?? this.event_penalty_result,
      event_status: event_status ?? this.event_status,
      country_name: country_name ?? this.country_name,
      league_name: league_name ?? this.league_name,
      league_key: league_key ?? this.league_key,
      league_round: league_round ?? this.league_round,
      league_season: league_season ?? this.league_season,
      event_live: event_live ?? this.event_live,
      event_stadium: event_stadium ?? this.event_stadium,
      event_referee: event_referee ?? this.event_referee,
      home_team_logo: home_team_logo ?? this.home_team_logo,
      away_team_logo: away_team_logo ?? this.away_team_logo,
      event_country_key: event_country_key ?? this.event_country_key,
      league_logo: league_logo ?? this.league_logo,
      country_logo: country_logo ?? this.country_logo,
      event_home_formation: event_home_formation ?? this.event_home_formation,
      event_away_formation: event_away_formation ?? this.event_away_formation,
      fk_stage_key: fk_stage_key ?? this.fk_stage_key,
      stage_name: stage_name ?? this.stage_name,
      league_group: league_group ?? this.league_group,
      goalscorers: goalscorers ?? this.goalscorers,
      substitutes: substitutes ?? this.substitutes,
      cards: cards ?? this.cards,
      lineups: lineups ?? this.lineups,
      statistics: statistics ?? this.statistics,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event_key': event_key,
      'event_date': event_date,
      'event_time': event_time,
      'event_home_team': event_home_team,
      'home_team_key': home_team_key,
      'event_away_team': event_away_team,
      'away_team_key': away_team_key,
      'event_halftime_result': event_halftime_result,
      'event_final_result': event_final_result,
      'event_ft_result': event_ft_result,
      'event_penalty_result': event_penalty_result,
      'event_status': event_status,
      'country_name': country_name,
      'league_name': league_name,
      'league_key': league_key,
      'league_round': league_round,
      'league_season': league_season,
      'event_live': event_live,
      'event_stadium': event_stadium,
      'event_referee': event_referee,
      'home_team_logo': home_team_logo,
      'away_team_logo': away_team_logo,
      'event_country_key': event_country_key,
      'league_logo': league_logo,
      'country_logo': country_logo,
      'event_home_formation': event_home_formation,
      'event_away_formation': event_away_formation,
      'fk_stage_key': fk_stage_key,
      'stage_name': stage_name,
      'league_group': league_group,
      'goalscorers': goalscorers,
      'substitutes': substitutes,
      'cards': cards,
      'lineups': lineups.toMap(),
      'statistics': statistics,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Fixture(event_key: $event_key, event_date: $event_date, event_time: $event_time, event_home_team: $event_home_team, home_team_key: $home_team_key, event_away_team: $event_away_team, away_team_key: $away_team_key, event_halftime_result: $event_halftime_result, event_final_result: $event_final_result, event_ft_result: $event_ft_result, event_penalty_result: $event_penalty_result, event_status: $event_status, country_name: $country_name, league_name: $league_name, league_key: $league_key, league_round: $league_round, league_season: $league_season, event_live: $event_live, event_stadium: $event_stadium, event_referee: $event_referee, home_team_logo: $home_team_logo, away_team_logo: $away_team_logo, event_country_key: $event_country_key, league_logo: $league_logo, country_logo: $country_logo, event_home_formation: $event_home_formation, event_away_formation: $event_away_formation, fk_stage_key: $fk_stage_key, stage_name: $stage_name, league_group: $league_group, goalscorers: $goalscorers, substitutes: $substitutes, cards: $cards, lineups: $lineups, statistics: $statistics)';
  }

  @override
  bool operator ==(covariant Fixture other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.event_key == event_key &&
        other.event_date == event_date &&
        other.event_time == event_time &&
        other.event_home_team == event_home_team &&
        other.home_team_key == home_team_key &&
        other.event_away_team == event_away_team &&
        other.away_team_key == away_team_key &&
        other.event_halftime_result == event_halftime_result &&
        other.event_final_result == event_final_result &&
        other.event_ft_result == event_ft_result &&
        other.event_penalty_result == event_penalty_result &&
        other.event_status == event_status &&
        other.country_name == country_name &&
        other.league_name == league_name &&
        other.league_key == league_key &&
        other.league_round == league_round &&
        other.league_season == league_season &&
        other.event_live == event_live &&
        other.event_stadium == event_stadium &&
        other.event_referee == event_referee &&
        other.home_team_logo == home_team_logo &&
        other.away_team_logo == away_team_logo &&
        other.event_country_key == event_country_key &&
        other.league_logo == league_logo &&
        other.country_logo == country_logo &&
        other.event_home_formation == event_home_formation &&
        other.event_away_formation == event_away_formation &&
        other.fk_stage_key == fk_stage_key &&
        other.stage_name == stage_name &&
        other.league_group == league_group &&
        listEquals(other.goalscorers, goalscorers) &&
        listEquals(other.substitutes, substitutes) &&
        listEquals(other.cards, cards) &&
        other.lineups == lineups &&
        listEquals(other.statistics, statistics);
  }

  @override
  int get hashCode {
    return event_key.hashCode ^
        event_date.hashCode ^
        event_time.hashCode ^
        event_home_team.hashCode ^
        home_team_key.hashCode ^
        event_away_team.hashCode ^
        away_team_key.hashCode ^
        event_halftime_result.hashCode ^
        event_final_result.hashCode ^
        event_ft_result.hashCode ^
        event_penalty_result.hashCode ^
        event_status.hashCode ^
        country_name.hashCode ^
        league_name.hashCode ^
        league_key.hashCode ^
        league_round.hashCode ^
        league_season.hashCode ^
        event_live.hashCode ^
        event_stadium.hashCode ^
        event_referee.hashCode ^
        home_team_logo.hashCode ^
        away_team_logo.hashCode ^
        event_country_key.hashCode ^
        league_logo.hashCode ^
        country_logo.hashCode ^
        event_home_formation.hashCode ^
        event_away_formation.hashCode ^
        fk_stage_key.hashCode ^
        stage_name.hashCode ^
        league_group.hashCode ^
        goalscorers.hashCode ^
        substitutes.hashCode ^
        cards.hashCode ^
        lineups.hashCode ^
        statistics.hashCode;
  }
}

class Lineups {
  Lineups({
    required this.home_team,
    required this.away_team,
  });

  factory Lineups.fromMap(Map<String, dynamic> map) {
    return Lineups(
      home_team: Home_team.fromMap(map['home_team'] as Map<String, dynamic>),
      away_team: Away_team.fromMap(map['away_team'] as Map<String, dynamic>),
    );
  }

  factory Lineups.fromJson(String source) =>
      Lineups.fromMap(json.decode(source) as Map<String, dynamic>);
  final Home_team home_team;
  final Away_team away_team;

  Lineups copyWith({
    Home_team? home_team,
    Away_team? away_team,
  }) {
    return Lineups(
      home_team: home_team ?? this.home_team,
      away_team: away_team ?? this.away_team,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'home_team': home_team.toMap(),
      'away_team': away_team.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'Lineups(home_team: $home_team, away_team: $away_team)';

  @override
  bool operator ==(covariant Lineups other) {
    if (identical(this, other)) return true;

    return other.home_team == home_team && other.away_team == away_team;
  }

  @override
  int get hashCode => home_team.hashCode ^ away_team.hashCode;
}

class Home_team {
  Home_team({
    required this.starting_lineups,
    required this.substitutes,
    required this.coaches,
    required this.missing_players,
  });

  factory Home_team.fromMap(Map<String, dynamic> map) {
    return Home_team(
      starting_lineups: List<dynamic>.from(
        (map['starting_lineups'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      substitutes: List<dynamic>.from(
        (map['substitutes'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      coaches: List<dynamic>.from(
        (map['coaches'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      missing_players: List<dynamic>.from(
        (map['missing_players'] ?? const <dynamic>[]) as List<dynamic>,
      ),
    );
  }

  factory Home_team.fromJson(String source) =>
      Home_team.fromMap(json.decode(source) as Map<String, dynamic>);
  final List<dynamic> starting_lineups;
  final List<dynamic> substitutes;
  final List<dynamic> coaches;
  final List<dynamic> missing_players;

  Home_team copyWith({
    List<dynamic>? starting_lineups,
    List<dynamic>? substitutes,
    List<dynamic>? coaches,
    List<dynamic>? missing_players,
  }) {
    return Home_team(
      starting_lineups: starting_lineups ?? this.starting_lineups,
      substitutes: substitutes ?? this.substitutes,
      coaches: coaches ?? this.coaches,
      missing_players: missing_players ?? this.missing_players,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'starting_lineups': starting_lineups,
      'substitutes': substitutes,
      'coaches': coaches,
      'missing_players': missing_players,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Home_team(starting_lineups: $starting_lineups, substitutes: $substitutes, coaches: $coaches, missing_players: $missing_players)';
  }

  @override
  bool operator ==(covariant Home_team other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.starting_lineups, starting_lineups) &&
        listEquals(other.substitutes, substitutes) &&
        listEquals(other.coaches, coaches) &&
        listEquals(other.missing_players, missing_players);
  }

  @override
  int get hashCode {
    return starting_lineups.hashCode ^
        substitutes.hashCode ^
        coaches.hashCode ^
        missing_players.hashCode;
  }
}

class Away_team {
  Away_team({
    required this.starting_lineups,
    required this.substitutes,
    required this.coaches,
    required this.missing_players,
  });

  factory Away_team.fromMap(Map<String, dynamic> map) {
    return Away_team(
      starting_lineups: List<dynamic>.from(
        (map['starting_lineups'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      substitutes: List<dynamic>.from(
        (map['substitutes'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      coaches: List<dynamic>.from(
        (map['coaches'] ?? const <dynamic>[]) as List<dynamic>,
      ),
      missing_players: List<dynamic>.from(
        (map['missing_players'] ?? const <dynamic>[]) as List<dynamic>,
      ),
    );
  }

  factory Away_team.fromJson(String source) =>
      Away_team.fromMap(json.decode(source) as Map<String, dynamic>);
  final List<dynamic> starting_lineups;
  final List<dynamic> substitutes;
  final List<dynamic> coaches;
  final List<dynamic> missing_players;

  Away_team copyWith({
    List<dynamic>? starting_lineups,
    List<dynamic>? substitutes,
    List<dynamic>? coaches,
    List<dynamic>? missing_players,
  }) {
    return Away_team(
      starting_lineups: starting_lineups ?? this.starting_lineups,
      substitutes: substitutes ?? this.substitutes,
      coaches: coaches ?? this.coaches,
      missing_players: missing_players ?? this.missing_players,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'starting_lineups': starting_lineups,
      'substitutes': substitutes,
      'coaches': coaches,
      'missing_players': missing_players,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Away_team(starting_lineups: $starting_lineups, substitutes: $substitutes, coaches: $coaches, missing_players: $missing_players)';
  }

  @override
  bool operator ==(covariant Away_team other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.starting_lineups, starting_lineups) &&
        listEquals(other.substitutes, substitutes) &&
        listEquals(other.coaches, coaches) &&
        listEquals(other.missing_players, missing_players);
  }

  @override
  int get hashCode {
    return starting_lineups.hashCode ^
        substitutes.hashCode ^
        coaches.hashCode ^
        missing_players.hashCode;
  }
}

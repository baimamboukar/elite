// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, avoid_dynamic_calls

import 'dart:convert';

class Standing {
  Standing({
    required this.standing_place,
    required this.standing_place_type,
    required this.standing_team,
    required this.standing_P,
    required this.standing_W,
    required this.standing_D,
    required this.standing_L,
    required this.standing_F,
    required this.standing_A,
    required this.standing_GD,
    required this.standing_PTS,
    required this.team_key,
    required this.league_key,
    required this.league_season,
    required this.league_round,
    required this.standing_updated,
    required this.fk_stage_key,
    required this.stage_name,
  });
  factory Standing.fromMap(Map<String, dynamic> map) {
    return Standing(
      standing_place: (map['standing_place'] as int?) ?? 0,
      standing_place_type: (map['standing_place_type'] as String?) ?? '',
      standing_team: (map['standing_team'] as String?) ?? '',
      standing_P: (map['standing_P'] as int?) ?? 0,
      standing_W: (map['standing_W'] as int?) ?? 0,
      standing_D: (map['standing_D'] as int?) ?? 0,
      standing_L: (map['standing_L'] as int?) ?? 0,
      standing_F: (map['standing_F'] as int?) ?? 0,
      standing_A: (map['standing_A'] as int?) ?? 0,
      standing_GD: (map['standing_GD'] as int?) ?? 0,
      standing_PTS: (map['standing_PTS'] as int?) ?? 0,
      team_key: (map['team_key'] as int?) ?? 0,
      league_key: (map['league_key'] as int?) ?? 0,
      league_season: (map['league_season'] as String?) ?? '',
      league_round: (map['league_round'] as String?) ?? '',
      standing_updated: (map['standing_updated'] as String?) ?? '',
      fk_stage_key: (map['fk_stage_key'] as int?) ?? 0,
      stage_name: (map['stage_name'] as String?) ?? '',
    );
  }

  factory Standing.fromJson(String source) =>
      Standing.fromMap(json.decode(source) as Map<String, dynamic>);
  final int standing_place;
  final String standing_place_type;
  final String standing_team;
  final int standing_P;
  final int standing_W;
  final int standing_D;
  final int standing_L;
  final int standing_F;
  final int standing_A;
  final int standing_GD;
  final int standing_PTS;
  final int team_key;
  final int league_key;
  final String league_season;
  final String league_round;
  final String standing_updated;
  final int fk_stage_key;
  final String stage_name;

  Standing copyWith({
    int? standing_place,
    String? standing_place_type,
    String? standing_team,
    int? standing_P,
    int? standing_W,
    int? standing_D,
    int? standing_L,
    int? standing_F,
    int? standing_A,
    int? standing_GD,
    int? standing_PTS,
    int? team_key,
    int? league_key,
    String? league_season,
    String? league_round,
    String? standing_updated,
    int? fk_stage_key,
    String? stage_name,
  }) {
    return Standing(
      standing_place: standing_place ?? this.standing_place,
      standing_place_type: standing_place_type ?? this.standing_place_type,
      standing_team: standing_team ?? this.standing_team,
      standing_P: standing_P ?? this.standing_P,
      standing_W: standing_W ?? this.standing_W,
      standing_D: standing_D ?? this.standing_D,
      standing_L: standing_L ?? this.standing_L,
      standing_F: standing_F ?? this.standing_F,
      standing_A: standing_A ?? this.standing_A,
      standing_GD: standing_GD ?? this.standing_GD,
      standing_PTS: standing_PTS ?? this.standing_PTS,
      team_key: team_key ?? this.team_key,
      league_key: league_key ?? this.league_key,
      league_season: league_season ?? this.league_season,
      league_round: league_round ?? this.league_round,
      standing_updated: standing_updated ?? this.standing_updated,
      fk_stage_key: fk_stage_key ?? this.fk_stage_key,
      stage_name: stage_name ?? this.stage_name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'standing_place': standing_place,
      'standing_place_type': standing_place_type,
      'standing_team': standing_team,
      'standing_P': standing_P,
      'standing_W': standing_W,
      'standing_D': standing_D,
      'standing_L': standing_L,
      'standing_F': standing_F,
      'standing_A': standing_A,
      'standing_GD': standing_GD,
      'standing_PTS': standing_PTS,
      'team_key': team_key,
      'league_key': league_key,
      'league_season': league_season,
      'league_round': league_round,
      'standing_updated': standing_updated,
      'fk_stage_key': fk_stage_key,
      'stage_name': stage_name,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Standing(standing_place: $standing_place, standing_place_type: $standing_place_type, standing_team: $standing_team, standing_P: $standing_P, standing_W: $standing_W, standing_D: $standing_D, standing_L: $standing_L, standing_F: $standing_F, standing_A: $standing_A, standing_GD: $standing_GD, standing_PTS: $standing_PTS, team_key: $team_key, league_key: $league_key, league_season: $league_season, league_round: $league_round, standing_updated: $standing_updated, fk_stage_key: $fk_stage_key, stage_name: $stage_name)';
  }
}

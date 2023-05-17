import 'package:elite_one/src/features/elite/data/models/club_model.dart';

class UpcomingMatch {
  UpcomingMatch({
    required this.id,
    required this.home,
    required this.away,
    this.time,
    this.date,
    this.league,
  });
  final String id;
  final Club home;
  final Club away;
  final String? time;
  final String? date;
  final String? league;
}

final upcomingMatches = [
  UpcomingMatch(
    id: '1',
    home: coton,
    away: union,
    time: '15:00',
    date: '12 June',
    league: 'Elite One',
  ),
  UpcomingMatch(
    id: '2',
    home: colombe,
    away: gazelle,
    time: '15:00',
    date: '16 June',
    league: 'Elite One',
  ),
  UpcomingMatch(
    id: '3',
    home: aigle,
    away: canon,
    time: '15:00',
    date: '19 May',
    league: 'Elite One',
  ),
  UpcomingMatch(
    id: '4',
    home: gazelle,
    away: feutcheu,
    time: '15:00',
    date: '14 June',
    league: 'Elite One',
  ),
  UpcomingMatch(
    id: '5',
    home: avion,
    away: apejes,
    time: '15:00',
    date: '14 June',
    league: 'Elite One',
  ),
  UpcomingMatch(
    id: '6',
    home: coton,
    away: yafoot,
    time: '15:00',
    date: '04 June',
    league: 'Elite One',
  ),
  UpcomingMatch(
    id: '7',
    home: pwd,
    away: apejes,
    time: '15:00',
    date: '28 May',
    league: 'Elite One',
  ),
  UpcomingMatch(
    id: '8',
    home: bamboutos,
    away: canon,
    time: '15:00',
    date: '18 May',
    league: 'Elite One',
  ),
];

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elite_one/src/features/elite/data/models/club_model.dart';

class LiveMatch {
  final Club home;
  final Club away;
  final String? time;
  final String? date;
  final String? league;
  final String? status;
  final String homeScore;
  final String awayScore;
  LiveMatch({
    required this.home,
    required this.away,
    required this.homeScore,
    required this.awayScore,
    this.time,
    this.date,
    this.league,
    this.status,
  });
}

final liveMatches = [
  LiveMatch(
    home: coton,
    away: union,
    homeScore: '3',
    awayScore: '1',
    time: '15:00',
    date: '12 June',
    league: 'Elite One',
    status: "84'",
  ),
  LiveMatch(
    home: colombe,
    away: gazelle,
    homeScore: '1',
    awayScore: '0',
    time: '15:00',
    date: '16 June',
    league: 'Elite One',
    status: 'HT',
  ),
  LiveMatch(
    home: aigle,
    away: canon,
    homeScore: '3',
    awayScore: '1',
    time: '15:00',
    date: '19 May',
    league: 'Elite One',
    status: "25'",
  ),
  LiveMatch(
    home: gazelle,
    away: feutcheu,
    homeScore: '2',
    awayScore: '5',
    time: '15:00',
    date: '14 June',
    league: 'Elite One',
    status: 'HT',
  ),
  LiveMatch(
    home: avion,
    away: apejes,
    homeScore: '1',
    awayScore: '2',
    time: '15:00',
    date: '14 June',
    league: 'Elite One',
    status: 'HT',
  ),
];

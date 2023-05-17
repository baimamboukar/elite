// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elite_one/src/features/elite/data/models/player.dart';

class GoalStanding {
  final Player player;
  final int goalsCount;
  final int matchPlayed;
  GoalStanding({
    required this.player,
    required this.goalsCount,
    required this.matchPlayed,
  });
}

final goalStandings = [
  GoalStanding(
    player: patient,
    goalsCount: 10,
    matchPlayed: 12,
  ),
  GoalStanding(
    player: marou,
    goalsCount: 14,
    matchPlayed: 12,
  ),
  GoalStanding(
    player: yerima,
    goalsCount: 8,
    matchPlayed: 12,
  ),
  GoalStanding(
    player: daman,
    goalsCount: 6,
    matchPlayed: 12,
  ),
  GoalStanding(
    player: frank,
    goalsCount: 5,
    matchPlayed: 12,
  ),
  GoalStanding(
    player: narcisse,
    goalsCount: 1,
    matchPlayed: 12,
  ),
];

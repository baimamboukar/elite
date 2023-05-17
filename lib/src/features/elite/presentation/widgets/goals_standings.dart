import 'package:elite_one/src/features/elite/data/models/goal_standing.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/scorer_tile.dart';
import 'package:flutter/material.dart';

class EliteScorerStandings extends StatelessWidget {
  const EliteScorerStandings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // compare and sort standings
    goalStandings.sort((a, b) => b.goalsCount.compareTo(a.goalsCount));
    return Expanded(
      child: ListView.builder(
        itemCount: goalStandings.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final standing = goalStandings[index];
          return ScorerTile(
            standing: standing,
          );
        },
      ),
    );
  }
}

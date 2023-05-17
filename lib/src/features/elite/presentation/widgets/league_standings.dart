import 'package:elite_one/src/features/elite/data/models/standing.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/standing_tile.dart';
import 'package:flutter/material.dart';

class EliteStandings extends StatelessWidget {
  const EliteStandings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // compare and sort standings
    standings.sort((a, b) => b.points.compareTo(a.points));
    return Expanded(
      child: ListView.builder(
        itemCount: standings.length,
        itemBuilder: (BuildContext context, int index) {
          final standing = standings[index];

          return StandingTile(
            standing: standing,
            index: index,
          );
        },
      ),
    );
  }
}

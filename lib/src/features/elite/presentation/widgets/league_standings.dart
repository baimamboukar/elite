import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/features/elite/data/models/standing.dart';
import 'package:elite_one/src/features/elite/domain/blocs/standings_bloc/standings_bloc.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/standing_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EliteStandings extends StatelessWidget with AutoRouteWrapper {
  const EliteStandings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // compare and sort standings
    standings.sort((a, b) => b.points.compareTo(a.points));
    return BlocBuilder<StandingsBloc, StandingsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (standings) => Expanded(
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
          ),
          failed: (message) => Center(
            child: Text(message),
          ),
          orElse: () => const Center(
            child: Text('Something went wrong'),
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<StandingsBloc>(
      create: (context) => StandingsBloc()
        ..add(
          const StandingsEvent.getStandings(),
        ),
      child: this,
    );
  }
}

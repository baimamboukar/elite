import 'package:animated_shimmer/animated_shimmer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/features/elite/domain/blocs/standings_bloc/standings_bloc.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/standing_tile.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EliteStandings extends StatelessWidget with AutoRouteWrapper {
  const EliteStandings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // compare and sort standings
    // standings.sort((a, b) => b.points.compareTo(a.points));
    return BlocBuilder<StandingsBloc, StandingsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: AnimatedShimmer(
                      height: 64,
                      width: context.width,
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      delayInMilliSeconds: Duration(milliseconds: index * 500),
                    ),
                  ),
                );
              },
            ),
          ),
          loaded: (standings) => Expanded(
            child: RefreshIndicator.adaptive(
              onRefresh: () async => context.read<StandingsBloc>()
                ..add(const StandingsEvent.getStandings()),
              child: ListView.builder(
                itemCount: standings.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  final color = index < 4
                      ? context.colorScheme.primaryContainer.withOpacity(0.55)
                      : (index > standings.length - 3
                          ? context.colorScheme.errorContainer
                          : context.colorScheme.surface);
                  if (index == 0) {
                    return const _StandingsHeader();
                  } else {
                    return StandingTile(
                      standing: standings[index - 1],
                      index: index - 1,
                      color: color,
                    );
                  }
                },
              ),
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

class _StandingsHeader extends StatelessWidget {
  const _StandingsHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text(
          'Team',
          style: context.textTheme.bodyLarge!.copyWith(
            color: context.colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Spacer(),
        const Text('D'),
        14.hGap,
        const Text('W'),
        14.hGap,
        const Text('L'),
        14.hGap,
        const Text('Pts'),
      ],
    );
  }
}

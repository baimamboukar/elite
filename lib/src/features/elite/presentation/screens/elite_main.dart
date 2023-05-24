import 'package:animated_shimmer/animated_shimmer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/features/elite/data/models/live_match.dart';
import 'package:elite_one/src/features/elite/data/models/upcoming_match.dart';
import 'package:elite_one/src/features/elite/domain/blocs/fixtures_bloc/fixtures_bloc.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/elite_calendart.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/elite_live_match.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/live_now.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/upcoming_tile.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class EliteMain extends StatelessWidget {
  const EliteMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
        child: Column(
          children: [
            14.vGap,
            const SizedBox(
              height: 64,
              child: CustomCalendar(),
            ),
            24.vGap,
            Row(
              children: [
                Text(
                  'Live now',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.primary,
                  ),
                ),
                8.hGap,
                const LiveNow(),
              ],
            ),
            SizedBox(
              height: 154,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: liveMatches.length,
                itemBuilder: (BuildContext context, int index) {
                  final liveMatch = liveMatches[index];
                  return LiveMatchTile(
                    match: liveMatch,
                  );
                },
              ),
            ),
            14.vGap,
            Row(
              children: [
                Text(
                  'Upcoming',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.primary,
                  ),
                ),
              ],
            ),
            const _UpcomingFixtures(),
          ],
        ),
      ),
    );
  }
}

class _UpcomingFixtures extends StatelessWidget {
  const _UpcomingFixtures();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FixturesBloc, FixturesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
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
          loaded: (fixtures) {
            return Expanded(
              child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  context.read<FixturesBloc>().add(
                        FixturesEvent.getFixtures(
                          to: DateTime.now(),
                          from:
                              DateTime.now().subtract(const Duration(days: 40)),
                        ),
                      );
                },
                child: ListView.builder(
                  itemCount: upcomingMatches.length,
                  itemBuilder: (BuildContext context, int index) {
                    final upcoming = fixtures[index];
                    return UpcomingTile(
                      match: upcoming,
                    );
                  },
                ),
              ),
            );
          },
          failed: (message) => Center(
            child: RefreshIndicator.adaptive(
              onRefresh: () async {
                context.read<FixturesBloc>().add(
                      FixturesEvent.getFixtures(
                        to: DateTime.now(),
                        from: DateTime.now().subtract(const Duration(days: 40)),
                      ),
                    );
              },
              child: const Column(
                children: [
                  Icon(
                    Icons.error,
                    size: 38,
                  ),
                  Text(
                    'Something went wrong, please try again later!',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

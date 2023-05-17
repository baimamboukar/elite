import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/goals_standings.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/league_standings.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EliteInfos extends StatelessWidget {
  const EliteInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
          child: Column(
            children: [
              14.vGap,
              Text(
                'MTN Elite One Standings',
                style: context.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              TabBar(
                labelColor: context.colorScheme.primary,
                unselectedLabelColor: context.colorScheme.onSurface,
                indicatorColor: context.colorScheme.primary,
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(text: 'Standings'),
                  Tab(text: 'Top Scorers'),
                ],
              ),
              14.vGap,
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        const _StandingsHeader(),
                        const Divider(),
                        const EliteStandings(),
                        14.vGap,
                        const Row(
                          children: [
                            Text('Statistics Powered by Fecafoot'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const EliteScorerStandings(),
                        14.vGap,
                        const Row(
                          children: [
                            Text('Statistics Powered by Fecafoot'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StandingsHeader extends StatelessWidget {
  const _StandingsHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        34.hGap,
        const Text('Team'),
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

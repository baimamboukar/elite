import 'package:auto_route/auto_route.dart';
import 'package:elite_one/i18n/translations.g.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/elite_list.dart';
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
                Loc.standings.elite_standings(App: 'MTN Elite One'),
                style: context.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              TabBar(
                labelColor: context.colorScheme.primary,
                unselectedLabelColor: context.colorScheme.onSurface,
                indicatorColor: context.colorScheme.primary,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(text: Loc.standings.standings),
                  Tab(text: Loc.standings.top_scorers),
                ],
              ),
              14.vGap,
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        const EliteStandings(),
                        14.vGap,
                        Row(
                          children: [
                            Text(Loc.standings.stats_powered(Org: 'FECAFOOT')),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Expanded(
                          child: TeamList(),
                        ),
                        //const EliteScorerStandings(),
                        14.vGap,
                        Row(
                          children: [
                            Text(Loc.standings.stats_powered(Org: 'FECAFOOT')),
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

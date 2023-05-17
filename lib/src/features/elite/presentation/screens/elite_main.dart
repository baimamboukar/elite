import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/features/elite/data/models/live_match.dart';
import 'package:elite_one/src/features/elite/data/models/upcoming_match.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/elite_calendart.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/elite_live_match.dart';
import 'package:elite_one/src/features/elite/presentation/widgets/upcoming_tile.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

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
            Expanded(
              child: ListView.builder(
                itemCount: upcomingMatches.length,
                itemBuilder: (BuildContext context, int index) {
                  final upcoming = upcomingMatches[index];
                  return UpcomingTile(
                    match: upcoming,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

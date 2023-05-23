import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/fixture.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class UpcomingTile extends StatelessWidget {
  const UpcomingTile({
    required this.match,
    super.key,
  });
  final Fixture match;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.colorScheme.onPrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                match.event_home_team,
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              4.hGap,
              if (match.home_team_logo.isNotEmpty)
                Image.network(
                  match.home_team_logo,
                  height: 24,
                  width: 24,
                ),
              if (match.home_team_logo.isEmpty)
                Image.asset(
                  Assets.assetsImagesFootball,
                  height: 24,
                  width: 24,
                ),
              8.hGap,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    match.event_date,
                    style: context.textTheme.labelSmall!.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                  Text(
                    match.event_time,
                    style: context.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              8.hGap,
              if (match.away_team_logo.isNotEmpty)
                Image.network(
                  match.away_team_logo,
                  height: 24,
                  width: 24,
                ),
              if (match.away_team_logo.isEmpty)
                Image.asset(
                  Assets.assetsImagesFootball,
                  height: 24,
                  width: 24,
                ),
              4.hGap,
              Text(
                match.event_away_team,
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

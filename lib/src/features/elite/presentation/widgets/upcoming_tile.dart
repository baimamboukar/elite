import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/fixture.dart';
import 'package:elite_one/src/shared/extensions/date.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class UpcomingTile extends StatelessWidget {
  const UpcomingTile({
    required this.match,
    super.key,
  });
  final Fixture match;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return BottomSheet(
              enableDrag: false,
              onClosing: () {},
              builder: (context) => Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: context.colorScheme.onPrimary,
                ),
                //color: context.colorScheme.surface,
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    child: Column(
                      children: [
                        4.vGap,
                        Text(
                          match.event_stadium,
                          style: context.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            //fontSize: 24,
                          ),
                        ),
                        4.vGap,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              match.league_logo,
                              height: 24,
                              width: 24,
                            ),
                            8.hGap,
                            Text(
                              match.league_name,
                              style: context.textTheme.bodyMedium,
                            )..animate().rotate(),
                          ],
                        ),
                        8.vGap,
                        //const Divider(),
                        // Todo: titles
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  match.home_team_logo,
                                  height: 54,
                                  width: 54,
                                ),
                                4.vGap,
                                Text(
                                  match.event_home_team.length > 12
                                      ? '${match.event_home_team.substring(0, 12)}...'
                                      : match.event_home_team,
                                  style: context.textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      match.event_date.format,
                                      style: context.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                                4.vGap,
                                Text(
                                  match.event_time,
                                  style: context.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Image.network(
                                  match.away_team_logo,
                                  height: 54,
                                  width: 54,
                                ),
                                4.vGap,
                                Text(
                                  match.event_away_team.length > 12
                                      ? '${match.event_away_team.substring(0, 12)}...'
                                      : match.event_away_team,
                                  style: context.textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            12.vGap,
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ).animate().flipV();
          },
        );
      },
      child: Card(
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
                  match.event_home_team.length > 12
                      ? '${match.event_home_team.substring(0, 12)}...'
                      : match.event_home_team,
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
                  match.event_away_team.length > 12
                      ? '${match.event_away_team.substring(0, 12)}...'
                      : match.event_away_team,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

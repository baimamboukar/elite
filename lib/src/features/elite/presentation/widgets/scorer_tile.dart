import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/goal_standing.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class ScorerTile extends StatelessWidget {
  const ScorerTile({
    required this.standing,
    super.key,
  });
  final GoalStanding standing;

  @override
  Widget build(BuildContext context) {
    //final id = standing.player.id;
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: context.colorScheme.onPrimary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset(
                  standing.player.photo ?? Assets.assetsImagesFootball,
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    12.vGap,
                    Text(
                      standing.player.name,
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      standing.player.club.name,
                      style:
                          context.textTheme.labelSmall!.copyWith(fontSize: 8),
                    ),
                    8.vGap,
                    Text(
                      '${standing.matchPlayed} Matches Played',
                      style: context.textTheme.bodySmall!.copyWith(),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '${standing.goalsCount} \n Goals',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.primary,
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

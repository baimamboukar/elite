import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/standing.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class StandingTile extends StatelessWidget {
  const StandingTile({
    required this.standing,
    required this.index,
    super.key,
  });
  final Standing standing;

  final int index;

  @override
  Widget build(BuildContext context) {
    final isInTop3 = index < 3;
    final isInLast3 = index > standings.length - 3;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isInLast3
              ? context.colorScheme.errorContainer
              : isInTop3
                  ? context.colorScheme.primaryContainer.withOpacity(0.5)
                  : context.colorScheme.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Text(
                '${index + 1}',
                style: context.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              14.hGap,
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      standing.club.logo ?? Assets.assetsImagesFootball,
                      height: 18,
                      width: 18,
                    ),
                    8.hGap,
                    Text(standing.club.name),
                    const Spacer(),
                    Text(standing.goalDifference.toString()),
                    14.hGap,
                    Text(standing.goalsAgainst.toString()),
                    14.hGap,
                    Text(standing.goalsFor.toString()),
                    14.hGap,
                    Text(standing.points.toString()),
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

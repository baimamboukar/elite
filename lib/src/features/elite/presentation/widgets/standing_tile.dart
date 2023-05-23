import 'package:elite_one/src/features/elite/data/models/league_standing.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class StandingTile extends StatelessWidget {
  const StandingTile({
    required this.standing,
    required this.index,
    this.color,
    super.key,
  });
  final Standing standing;
  final Color? color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: color ?? context.colorScheme.surface,
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
                    // Image.asset(
                    //   standing.club.logo ?? Assets.assetsImagesFootball,
                    //   height: 18,
                    //   width: 18,
                    // ),
                    8.hGap,
                    Text(standing.standing_team),
                    const Spacer(),
                    Text(standing.standing_D.toString()),
                    14.hGap,
                    Text(standing.standing_W.toString()),
                    14.hGap,
                    Text(standing.standing_L.toString()),
                    14.hGap,
                    Text(standing.standing_PTS.toString()),
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

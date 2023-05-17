import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/upcoming_match.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class UpcomingTile extends StatelessWidget {
  const UpcomingTile({
    required this.match,
    super.key,
  });
  final UpcomingMatch match;

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
                match.home.name,
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              4.hGap,
              Image.asset(
                match.home.logo ?? Assets.assetsImagesFootball,
                height: 24,
                width: 24,
              ),
              8.hGap,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    match.date!,
                    style: context.textTheme.labelSmall!.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                  Text(
                    match.time!,
                    style: context.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              8.hGap,
              Image.asset(
                match.away.logo ?? Assets.assetsImagesFootball,
                height: 24,
                width: 24,
              ),
              4.hGap,
              Text(
                match.away.name,
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

import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/live_match.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class LiveMatchTile extends StatelessWidget {
  const LiveMatchTile({required this.match, super.key});
  final LiveMatch match;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        //height: 140,
        width: 264,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: context.colorScheme.onPrimary.withOpacity(.85),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                match.league!,
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                match.home.stadium!,
                style: context.textTheme.labelSmall!
                    .copyWith(fontWeight: FontWeight.w200),
              ),
              8.vGap,
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        match.home.logo ?? Assets.assetsImagesFootball,
                        height: 54,
                        width: 54,
                      ),
                      4.vGap,
                      Text(
                        match.home.name,
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
                            match.homeScore,
                            style: context.textTheme.displaySmall,
                          ),
                          Text(
                            ':',
                            style: context.textTheme.displaySmall,
                          ),
                          Text(
                            match.awayScore,
                            style: context.textTheme.displaySmall,
                          ),
                        ],
                      ),
                      4.vGap,
                      Text(match.status!)
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        match.away.logo ?? Assets.assetsImagesFootball,
                        height: 54,
                        width: 54,
                      ),
                      4.vGap,
                      Text(
                        match.away.name,
                        style: context.textTheme.bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

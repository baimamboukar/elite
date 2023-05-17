import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/app/assets.dart';
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
                        Expanded(
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: context.colorScheme.surface,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
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

class EliteStandings extends StatelessWidget {
  const EliteStandings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 22,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Row(
              children: [
                // const Spacer(),
                Expanded(
                  child: Row(
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
                  ),
                ),
              ],
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2,
            ),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: context.colorScheme.surface,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      '$index',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    14.hGap,
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.assetsImagesFootball,
                            height: 18,
                            width: 18,
                          ),
                          8.hGap,
                          const Text('Coton Sport'),
                          const Spacer(),
                          const Text('6'),
                          14.hGap,
                          const Text('2'),
                          14.hGap,
                          const Text('0'),
                          14.hGap,
                          const Text('44'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:elite_one/i18n/translations.g.dart';
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

@RoutePage()
class PlayerDetails extends StatefulWidget {
  const PlayerDetails({@pathParam required this.playerID, super.key});
  final String playerID;

  @override
  State<PlayerDetails> createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails> {
  @override
  void initState() {
    super.initState();
    //TODO: call fetch player
  }

  @override
  Widget build(BuildContext context) {
    const ticks = [10, 14, 21, 28, 35];
    var features = [
      Loc.player_details.pass,
      Loc.player_details.speed,
      Loc.player_details.shoot,
      Loc.player_details.physical,
      Loc.player_details.dribble,
    ];
    var data = [
      [9, 7.5, 12, 8, 9.8],
    ];

    features = features.sublist(0, 5);
    data = data.map((graph) => graph.sublist(0, 5)).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.primary,
        title: Text(
          'Patient Wassou',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onPrimary),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Hicons.notification_2,
              color: context.colorScheme.onPrimary,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              color: context.colorScheme.onPrimary,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: context.colorScheme.primary.withOpacity(.55),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 28,
                    horizontal: context.width * 0.05,
                  ),
                  child: Card(
                    elevation: 4,
                    color: context.colorScheme.onPrimary,
                    surfaceTintColor: context.colorScheme.onPrimary,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 54,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.primary,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'LW',
                                      style: context.textTheme.bodyMedium!
                                          .copyWith(
                                        color: context.colorScheme.onPrimary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  '10',
                                  style: context.textTheme.bodyLarge!.copyWith(
                                    color: context.colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                14.vGap,
                              ],
                            ),
                            8.hGap,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      Assets.assetsImagesCotonsport,
                                      height: 24,
                                      width: 24,
                                    ),
                                    4.hGap,
                                    Text(
                                      'Coton sport',
                                      style: context.textTheme.labelSmall!
                                          .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Patient',
                                  style: context.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  'Wassou',
                                  style: context.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: context.colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Image.asset(
                                Assets.assetsImagesWassou,
                                height: 72,
                              ),
                            )
                          ],
                        ),
                        14.vGap,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(Loc.player_details.age),
                            Text(Loc.player_details.height),
                            Text(Loc.player_details.weight),
                            Text(Loc.player_details.foot),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '19',
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: context.colorScheme.primary,
                              ),
                            ),
                            Text(
                              '1.8M',
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: context.colorScheme.primary,
                              ),
                            ),
                            Text(
                              '68kg',
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: context.colorScheme.primary,
                              ),
                            ),
                            Text(
                              'Left',
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: context.colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                        14.vGap,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _DataBox(
                              title: Loc.player_details.mercato_value,
                              data: '€12M',
                            ),
                            _DataBox(
                              title: Loc.player_details.overall_rating,
                              data: '7.8 ⭐️',
                            ),
                          ],
                        ),
                        14.vGap,
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Card(
                elevation: 4,
                color: context.colorScheme.onPrimary,
                surfaceTintColor: context.colorScheme.onPrimary,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(
                      height: context.height * .4,
                      width: context.width * .8,
                    ),
                    child: Column(
                      children: [
                        Text(
                          Loc.player_details.performance_analysis,
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Expanded(
                          child: RadarChart(
                            ticks: ticks,
                            features: features,
                            data: data,
                            reverseAxis: true,
                            featuresTextStyle:
                                context.textTheme.labelMedium!.copyWith(
                              color: context.colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                            ticksTextStyle:
                                context.textTheme.labelMedium!.copyWith(
                              color: Colors.transparent,
                              fontWeight: FontWeight.bold,
                            ),
                            outlineColor: Colors.transparent,
                            axisColor: context.colorScheme.primary,
                            graphColors: [
                              context.colorScheme.primary,
                              context.colorScheme.secondary,
                              context.colorScheme.tertiary,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            24.vGap
          ],
        ),
      ),
    );
  }
}

class _DataBox extends StatelessWidget {
  // ignore: unused_element
  const _DataBox({required this.data, required this.title, this.icon});
  final String data;
  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.labelSmall!.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        Container(
          height: 48,
          width: context.width * .35,
          decoration: BoxDecoration(
            color: context.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(
              color: context.colorScheme.primary,
              width: 1.5,
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  data,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: context.colorScheme.primary,
                  ),
                ),
                icon ??
                    Icon(
                      Icons.arrow_upward,
                      color: context.colorScheme.primary,
                    )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

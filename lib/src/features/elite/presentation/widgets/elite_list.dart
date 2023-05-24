import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/goal_standing.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class TeamList extends StatefulWidget {
  const TeamList({super.key});

  @override
  TeamListState createState() => TeamListState();
}

class TeamListState extends State<TeamList> {
  late PageController _controller;

  void _pageListener() {
    setState(() {});
  }

  @override
  void initState() {
    _controller = PageController(viewportFraction: 0.6);
    _controller.addListener(_pageListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_pageListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // sort goalStandings
    goalStandings.sort(
      (a, b) => b.goalsCount.compareTo(a.goalsCount),
    );
    return ListView.builder(
      itemCount: goalStandings.length,
      itemBuilder: (BuildContext context, int index) {
        return TeamTile(
          standing: goalStandings[index],
        );
      },
    );
  }
}

class TeamTile extends StatelessWidget {
  const TeamTile({required this.standing, super.key});
  final GoalStanding standing;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 114,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.colorScheme.onPrimary.withOpacity(.33),
              context.colorScheme.onPrimary,
            ],
            stops: const [
              0.4,
              1.0,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            14,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: context.colorScheme.primary,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(
                        standing.player.photo ?? Assets.assetsImagesFootball,
                        // height: 74,
                        // width: 74,
                      ),
                    ),
                  ),
                  8.hGap,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        standing.player.name,
                        style: context.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: context.colorScheme.primary,
                        ),
                      ),
                      Text(
                        standing.player.club.name,
                        style: context.textTheme.labelSmall!
                            .copyWith(fontSize: 10),
                      ),
                      Text(
                        '${standing.goalsCount} Goals',
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.colorScheme.primary,
                        ),
                      ),
                      Text(
                        '${standing.matchPlayed} Matches Played',
                        style: context.textTheme.bodySmall!.copyWith(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

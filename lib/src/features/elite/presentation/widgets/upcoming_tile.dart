// ignore_for_file: lines_longer_than_80_chars

import 'package:elite_one/app/push_notifications/onesignal_service.dart';
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/fixture.dart';
import 'package:elite_one/src/shared/extensions/auth_cubitx.dart';
import 'package:elite_one/src/shared/extensions/date.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:elite_one/src/shared/extensions/payloadx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_polls/flutter_polls.dart';

class UpcomingTile extends StatefulWidget {
  const UpcomingTile({
    required this.match,
    super.key,
  });
  final Fixture match;

  @override
  State<UpcomingTile> createState() => _UpcomingTileState();
}

class _UpcomingTileState extends State<UpcomingTile> {
  /// Callback called after user has voted
  Future<bool> _onVoted(option, count) async {
    //TODO: implement Firestore callback
    return true;
  }

  Future<void> get _subscribeMatch async {
    final payload = context.matchSubscriptionPayload(
      user: context.user!.name,
      homeLogo: widget.match.home_team_logo,
      match:
          '${widget.match.event_home_team} VS ${widget.match.event_away_team}',
    );
    await OnesignalService().senPushNotification(
      payload: payload,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return BottomSheet(
              enableDrag: false,
              onClosing: () {},
              builder: (context) => DecoratedBox(
                //height: 200,
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
                        Container(
                          height: 7,
                          width: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: context.colorScheme.primary,
                          ),
                        ),
                        14.vGap,
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: context.colorScheme.primary,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Subscribe to this match to not miss any event',
                                    style:
                                        context.textTheme.labelSmall!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: context.colorScheme.onPrimary,
                                    ),
                                  ),
                                ),
                                14.hGap,
                                InkWell(
                                  onTap: () async => _subscribeMatch,
                                  child: const Icon(
                                    Icons.subscriptions,
                                    size: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        14.vGap,
                        Text(
                          widget.match.event_stadium,
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
                              widget.match.league_logo,
                              height: 24,
                              width: 24,
                            ),
                            8.hGap,
                            Text(
                              widget.match.league_name,
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
                                  widget.match.home_team_logo,
                                  height: 54,
                                  width: 54,
                                ),
                                4.vGap,
                                Text(
                                  widget.match.event_home_team.length > 12
                                      ? '${widget.match.event_home_team.substring(0, 12)}...'
                                      : widget.match.event_home_team,
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
                                      widget.match.event_date.format,
                                      style: context.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                                4.vGap,
                                Text(
                                  widget.match.event_time,
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
                                  widget.match.away_team_logo,
                                  height: 54,
                                  width: 54,
                                ),
                                4.vGap,
                                Text(
                                  widget.match.event_away_team.length > 12
                                      ? '${widget.match.event_away_team.substring(0, 12)}...'
                                      : widget.match.event_away_team,
                                  style: context.textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            12.vGap,
                          ],
                        ),
                        const Divider(),
                        Text(
                          'Who will win ?',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        FlutterPolls(
                          pollId: '${widget.match.event_key}',
                          createdBy: 'Elite',
                          userToVote: 'user',
                          pollEnded: widget.match.event_date ==
                              DateTime.now().toString(),
                          loadingWidget: CupertinoActivityIndicator(
                            color: context.colorScheme.primary,
                          ),
                          onVoted: _onVoted,
                          votedBackgroundColor:
                              context.colorScheme.primary.withOpacity(.25),
                          votedProgressColor:
                              context.colorScheme.primary.withOpacity(.75),
                          voteInProgressColor:
                              context.colorScheme.primary.withOpacity(.45),
                          leadingVotedProgessColor:
                              context.colorScheme.primary.withOpacity(.65),
                          pollTitle: Text(
                            '${widget.match.event_home_team} VS ${widget.match.event_away_team}',
                          ),
                          pollOptions: [
                            PollOption(
                              title: Row(
                                children: [
                                  Image.network(
                                    widget.match.home_team_logo,
                                    height: 28,
                                    width: 28,
                                  ),
                                  8.hGap,
                                  Text(widget.match.event_home_team),
                                ],
                              ),
                              votes: 12,
                            ),
                            PollOption(
                              title: Row(
                                children: [
                                  14.hGap,
                                  Image.network(
                                    widget.match.away_team_logo,
                                    height: 28,
                                    width: 28,
                                  ),
                                  8.hGap,
                                  Text(widget.match.event_away_team),
                                ],
                              ),
                              votes: 28,
                            )
                          ],
                        )
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
                  widget.match.event_home_team.length > 12
                      ? '${widget.match.event_home_team.substring(0, 12)}...'
                      : widget.match.event_home_team,
                  style: context.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                4.hGap,
                if (widget.match.home_team_logo.isNotEmpty)
                  Image.network(
                    widget.match.home_team_logo,
                    height: 24,
                    width: 24,
                  ),
                if (widget.match.home_team_logo.isEmpty)
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
                      widget.match.event_date.format,
                      style: context.textTheme.labelSmall!.copyWith(
                        color: context.colorScheme.primary,
                        fontSize: 7.55,
                      ),
                    ),
                    Text(
                      widget.match.event_time,
                      style: context.textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                8.hGap,
                if (widget.match.away_team_logo.isNotEmpty)
                  Image.network(
                    widget.match.away_team_logo,
                    height: 24,
                    width: 24,
                  ),
                if (widget.match.away_team_logo.isEmpty)
                  Image.asset(
                    Assets.assetsImagesFootball,
                    height: 24,
                    width: 24,
                  ),
                4.hGap,
                Text(
                  widget.match.event_away_team.length > 12
                      ? '${widget.match.event_away_team.substring(0, 12)}...'
                      : widget.match.event_away_team,
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

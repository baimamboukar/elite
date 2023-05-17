import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

@RoutePage()
class EliteMain extends StatelessWidget {
  const EliteMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
        child: Column(
          children: [
            14.vGap,
            const SizedBox(
              height: 64,
              child: CustomCalendar(),
            ),
            24.vGap,
            const Row(
              children: [
                Text(
                  'Live now',
                ),
              ],
            ),
            SizedBox(
              height: 154,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const _LiveMatch();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LiveMatch extends StatelessWidget {
  const _LiveMatch();

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
                'MTN Elite One',
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'State Roumnde`Adjia',
                style: context.textTheme.labelSmall!
                    .copyWith(fontWeight: FontWeight.w200),
              ),
              8.vGap,
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        Assets.assetsImagesFootball,
                        height: 54,
                        width: 54,
                      ),
                      4.vGap,
                      Text(
                        'Coton Sport',
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
                            '3',
                            style: context.textTheme.displaySmall,
                          ),
                          Text(
                            ':',
                            style: context.textTheme.displaySmall,
                          ),
                          Text(
                            '0',
                            style: context.textTheme.displaySmall,
                          ),
                        ],
                      ),
                      4.vGap,
                      const Text("24' ")
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        Assets.assetsImagesFootball,
                        height: 54,
                        width: 54,
                      ),
                      4.vGap,
                      Text(
                        'UMS Loum',
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

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  final DateTime now = DateTime.now();
  final DateFormat dayFormat = DateFormat.E('en_US');
  final DateFormat dateFormat = DateFormat.d('en_US');
  final ScrollController _scrollController = ScrollController();
  double activeDayScrollPosition = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Scroll to the active day on widget build
      scrollToActiveDay();
    });
  }

  void scrollToActiveDay() {
    if (activeDayScrollPosition > 0) {
      _scrollController.animateTo(
        activeDayScrollPosition,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: 7, // Display 7 days
      itemBuilder: (context, index) {
        final currentDate = now.add(Duration(days: index));
        final isActiveDay = index == 0; // Assuming today is the active day

        if (isActiveDay) {
          // Save the active day's scroll position
          activeDayScrollPosition = index * 80.0;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Container(
            width: 50,
            decoration: BoxDecoration(
              color: isActiveDay
                  ? context.colorScheme.primary
                  : context.colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dayFormat.format(currentDate),
                  style: TextStyle(
                    color: isActiveDay
                        ? context.colorScheme.onPrimary
                        : context.colorScheme.onBackground,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  dateFormat.format(currentDate),
                  style: TextStyle(
                    color: isActiveDay
                        ? context.colorScheme.onPrimary
                        : context.colorScheme.onBackground,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

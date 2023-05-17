import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

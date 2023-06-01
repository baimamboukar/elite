import 'package:elite_one/src/shared/models/notification_payload.dart';
import 'package:flutter/material.dart';

extension NotificationPayloadX on BuildContext {
  Payload matchSubscriptionPayload({
    required String user,
    required String match,
    required String homeLogo,
  }) {
    return Payload(
      contents: {
        'en':
            'Hey $user! You succesfully subscribed to $match. You will not miss any event from this match',
      },
      headings: {'en': 'Match Subscription'},
      data: {'redirect': '/fixture-details'},
      title: 'Match susbcription 🎉',
      message: '',
      playerIDs: [],
    );
  }
}

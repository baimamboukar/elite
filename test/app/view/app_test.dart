import 'package:elite_one/app/app.dart';
import 'package:elite_one/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const EliteOne());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}

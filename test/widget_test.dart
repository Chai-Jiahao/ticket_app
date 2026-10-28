import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_app/main.dart';

void main() {
  testWidgets('Ticket app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verify header text exists
    expect(find.text('Good morning'), findsOneWidget);
    expect(find.text('Book Tickets'), findsOneWidget);
  });
}

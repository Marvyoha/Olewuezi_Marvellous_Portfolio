// Portfolio website widget test.
//
// Verifies that the responsive homepage renders its main sections.

import 'package:flutter_test/flutter_test.dart';

import 'package:my_portfolio_website/main.dart';

void main() {
  testWidgets('Homepage renders intro header', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // The intro header should be present in the home section.
    expect(find.textContaining('Olewuezi Marvellous'), findsOneWidget);
  });
}
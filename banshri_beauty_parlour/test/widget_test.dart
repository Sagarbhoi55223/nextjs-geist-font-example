import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:banshri_beauty_parlour/main.dart';

void main() {
  testWidgets('Services screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BanshriBeautyParlourApp());

    // Verify that the app bar title is displayed
    expect(find.text('Banshri Beauty Parlour'), findsOneWidget);
    expect(find.text('Our Services'), findsOneWidget);

    // Verify that search bar is present
    expect(find.byType(TextField), findsOneWidget);

    // Verify that service cards are displayed
    expect(find.text('Bridal Makeup'), findsOneWidget);
    expect(find.text('Haircut & Styling'), findsOneWidget);
    expect(find.text('Facial Treatment'), findsOneWidget);

    // Verify that category filters are present
    expect(find.text('All'), findsOneWidget);
    expect(find.text('Bridal'), findsOneWidget);
    expect(find.text('Hair'), findsOneWidget);

    // Verify that floating action button is present
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Search functionality test', (WidgetTester tester) async {
    await tester.pumpWidget(const BanshriBeautyParlourApp());

    // Find the search field and enter text
    final searchField = find.byType(TextField);
    await tester.enterText(searchField, 'Bridal');
    await tester.pump();

    // Verify that only bridal services are shown
    expect(find.text('Bridal Makeup'), findsOneWidget);
    expect(find.text('Haircut & Styling'), findsNothing);
  });

  testWidgets('Category filter test', (WidgetTester tester) async {
    await tester.pumpWidget(const BanshriBeautyParlourApp());

    // Tap on Hair category
    await tester.tap(find.text('Hair'));
    await tester.pump();

    // Verify that only hair services are shown
    expect(find.text('Haircut & Styling'), findsOneWidget);
    expect(find.text('Hair Spa'), findsOneWidget);
    expect(find.text('Bridal Makeup'), findsNothing);
  });
}

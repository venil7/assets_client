// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';
import 'package:assets_client/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Init screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MyApp(configLocalDataSource: ConfigLocalDataSourceImpl()),
    );

    // Verify that init screen appears
    expect(find.text('Connect to API'), findsOneWidget);
  });
}

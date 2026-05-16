import 'package:assets_client/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  testWidgets('Init screen smoke test', (WidgetTester tester) async {
    await Hive.initFlutter();
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('Servers'), findsOneWidget);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/presentation/app/basic_app.dart';

void main() {
  testWidgets('Basic App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BasicApp());
  });
}

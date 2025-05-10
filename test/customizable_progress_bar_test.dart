import 'package:flutter_test/flutter_test.dart';
import 'package:customizable_progress_bar/customizable_progress_bar.dart';

void main() {
  testWidgets('LinearProgressBar builds with 50% progress', (tester) async {
    await tester.pumpWidget(LinearProgressBar(progress: 0.5));
    expect(find.byType(LinearProgressBar), findsOneWidget);
  });

  testWidgets('CircularProgressBar displays 75%', (tester) async {
    await tester.pumpWidget(CircularProgressBar(progress: 0.75));
    expect(find.byType(CircularProgressBar), findsOneWidget);
  });
}

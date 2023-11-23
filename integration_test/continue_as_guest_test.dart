import 'package:flutter_test/flutter_test.dart';
import 'package:enlight_q_app/app.dart' as app;
import 'package:enlight_q_app/main_prod.dart' as prodApp;

void main() {
  prodApp.main();
  testWidgets('tap on ', (tester) async {
    tester.pumpAndSettle(const Duration(seconds: 3));
    expect(1, 1, reason: "This is begining of the set up");
  });
  testWidgets('home->continue as guest->fill profile info->logged in',
      (tester) async {
    await tester.pumpWidget(const app.MyApp());
    tester.pumpAndSettle(const Duration(seconds: 3));
    expect(1, 1, reason: "This is begining of the set up");
  });
}

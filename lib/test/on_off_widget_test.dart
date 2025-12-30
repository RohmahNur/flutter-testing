import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/on_off_widget.dart';

void main() {
  testWidgets('Text berubah dari OFF ke ON saat tombol ditekan',
      (WidgetTester tester) async {

    // Tampilkan widget
    await tester.pumpWidget(OnOffWidget());

    // Pastikan awalnya OFF
    expect(find.text('OFF'), findsOneWidget);
    expect(find.text('ON'), findsNothing);

    // Tekan tombol
    await tester.tap(find.byKey(const Key('toggleButton')));
    await tester.pump();

    // Pastikan berubah ke ON
    expect(find.text('ON'), findsOneWidget);
  });
}

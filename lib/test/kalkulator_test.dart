import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/kalkulator.dart';

void main() {
  test('2 x 3 = 6', () {
    expect(kali(2, 3), 6);
  });

  test('0 x 5 = 0', () {
    expect(kali(0, 5), 0);
  });
}

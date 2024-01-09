import 'package:strings_extension/strings.dart';
import 'package:test/test.dart';

void main() {
  test('orElse ...', () async {
    expect(Strings.orElse(null, 'one'), equals('one'));
    expect(Strings.orElse('', 'one'), equals(''));
  });

  test('equals ...', () async {
    expect(Strings.equals(null, null), isTrue);
    expect(Strings.equals('one', null), isFalse);
    expect(Strings.equals(null, 'one'), isFalse);
    expect(Strings.equals('one', 'one'), isTrue);
    expect(Strings.equals('one', 'two'), isFalse);
  });
}

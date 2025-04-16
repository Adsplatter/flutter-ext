import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ext/string.dart'; // adjust import based on your actual package

void main() {
  group('CapExtension', () {

    test('inCaps should capitalize only the first letter', () {
      expect('hello'.inCaps, 'Hello');
      expect('flutter'.inCaps, 'Flutter');
      expect('d'.inCaps, 'D');
    });

    test('uppercaseFirst should match inCaps behavior', () {
      expect('world'.uppercaseFirst, 'World');
      expect('test'.uppercaseFirst, 'Test');
      expect('a'.uppercaseFirst, 'A');
    });

    test('allInCaps should convert whole string to uppercase', () {
      expect('flutter is cool'.allInCaps, 'FLUTTER IS COOL');
      expect('Dart123!'.allInCaps, 'DART123!');
    });

    test('capitalizeFirstOfEach should uppercase all words fully', () {
      expect('dart flutter'.capitalizeFirstOfEach, 'Dart Flutter');
      expect('hello world'.capitalizeFirstOfEach, 'Hello World');
      expect(' multiple   spaces'.capitalizeFirstOfEach, ' Multiple   Spaces');
      expect(''.capitalizeFirstOfEach, '');
    });
  });
}



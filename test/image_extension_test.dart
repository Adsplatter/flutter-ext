import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ext/image.dart'; // adjust import based on your actual package

void main() {
  group('ImageExtension tests', () {
    testWidgets('cacheSize should return correct int value based on devicePixelRatio', (WidgetTester tester) async {
      // Set up a test environment with a custom devicePixelRatio using MediaQuery
      await tester.pumpWidget(MaterialApp(
        home: MediaQuery(
          data: MediaQueryData(devicePixelRatio: 3.0),  // Set custom devicePixelRatio
          child: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                final num value = 100;
                final result = value.cacheSize(context);

                expect(result, 300);  // 100 * 3.0 = 300
                return Container();
              },
            ),
          ),
        ),
      ));
    });

    testWidgets('cacheSizeDouble should return correct double value based on devicePixelRatio', (WidgetTester tester) async {
      // Set up a test environment with a custom devicePixelRatio using MediaQuery
      await tester.pumpWidget(MaterialApp(
        home: MediaQuery(
          data: MediaQueryData(devicePixelRatio: 3.0),  // Set custom devicePixelRatio
          child: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                final num value = 150;
                final result = value.cacheSizeDouble(context);

                expect(result, 450.0);  // 150 * 3.0 = 450.0
                return Container();
              },
            ),
          ),
        ),
      ));
    });
  });
}
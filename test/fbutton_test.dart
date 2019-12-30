import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fbutton/fbutton.dart';

void main() {
  const MethodChannel channel = MethodChannel('fbutton');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });


}

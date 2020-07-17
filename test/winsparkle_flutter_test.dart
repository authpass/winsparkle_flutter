import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:winsparkle_flutter/winsparkle_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('winsparkle_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WinsparkleFlutter.platformVersion, '42');
  });
}

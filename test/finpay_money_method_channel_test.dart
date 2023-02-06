import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:finpay_money/finpay_money_method_channel.dart';

void main() {
  MethodChannelFinpayMoney platform = MethodChannelFinpayMoney();
  const MethodChannel channel = MethodChannel('finpay_money');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}

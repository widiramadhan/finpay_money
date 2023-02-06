import 'package:flutter_test/flutter_test.dart';
import 'package:finpay_money/finpay_money.dart';
import 'package:finpay_money/finpay_money_platform_interface.dart';
import 'package:finpay_money/finpay_money_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFinpayMoneyPlatform
    with MockPlatformInterfaceMixin
    implements FinpayMoneyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FinpayMoneyPlatform initialPlatform = FinpayMoneyPlatform.instance;

  test('$MethodChannelFinpayMoney is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFinpayMoney>());
  });

  test('getPlatformVersion', () async {
    FinpayMoney finpayMoneyPlugin = FinpayMoney();
    MockFinpayMoneyPlatform fakePlatform = MockFinpayMoneyPlatform();
    FinpayMoneyPlatform.instance = fakePlatform;

    expect(await finpayMoneyPlugin.getPlatformVersion(), '42');
  });
}

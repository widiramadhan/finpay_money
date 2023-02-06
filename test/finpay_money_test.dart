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

  @override
  Future alfamartUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement alfamartUIBuilder
    throw UnimplementedError();
  }

  @override
  Future bpjsUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement bpjsUIBuilder
    throw UnimplementedError();
  }

  @override
  Future connectAccount({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName, required Function onSuccess}) {
    // TODO: implement connectAccount
    throw UnimplementedError();
  }

  @override
  Future finpayUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement finpayUIBuilder
    throw UnimplementedError();
  }

  @override
  Future historyTransactionUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement historyTransactionUIBuilder
    throw UnimplementedError();
  }

  @override
  Future indihomeUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement indihomeUIBuilder
    throw UnimplementedError();
  }

  @override
  Future instalmentUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement instalmentUIBuilder
    throw UnimplementedError();
  }

  @override
  Future insuranceUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement insuranceUIBuilder
    throw UnimplementedError();
  }

  @override
  Future internetTvCableUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement internetTvCableUIBuilder
    throw UnimplementedError();
  }

  @override
  Future pascaBayarUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement pascaBayarUIBuilder
    throw UnimplementedError();
  }

  @override
  Future pdamUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement pdamUIBuilder
    throw UnimplementedError();
  }

  @override
  Future pegadaianUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement pegadaianUIBuilder
    throw UnimplementedError();
  }

  @override
  Future plnUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement plnUIBuilder
    throw UnimplementedError();
  }

  @override
  Future pulsaDataUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement pulsaDataUIBuilder
    throw UnimplementedError();
  }

  @override
  Future qrisUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement qrisUIBuilder
    throw UnimplementedError();
  }

  @override
  Future revenueUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement revenueUIBuilder
    throw UnimplementedError();
  }

  @override
  Future telkomUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement telkomUIBuilder
    throw UnimplementedError();
  }

  @override
  Future telkomselUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement telkomselUIBuilder
    throw UnimplementedError();
  }

  @override
  Future topupUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement topupUIBuilder
    throw UnimplementedError();
  }

  @override
  Future transferUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement transferUIBuilder
    throw UnimplementedError();
  }

  @override
  Future upgradeAccountUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement upgradeAccountUIBuilder
    throw UnimplementedError();
  }

  @override
  Future voucherDealsUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement voucherDealsUIBuilder
    throw UnimplementedError();
  }

  @override
  Future voucherTvCableUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement voucherTvCableUIBuilder
    throw UnimplementedError();
  }

  @override
  Future walletUIBuilder({required String transNumber, required String merchantUsername, required String merchantPassword, required String merchantSecretKey, required String custPhoneNumber, required String custName}) {
    // TODO: implement walletUIBuilder
    throw UnimplementedError();
  }
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

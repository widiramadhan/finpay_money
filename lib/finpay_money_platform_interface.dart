import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'finpay_money_method_channel.dart';

abstract class FinpayMoneyPlatform extends PlatformInterface {
  /// Constructs a FinpayMoneyPlatform.
  FinpayMoneyPlatform() : super(token: _token);

  static final Object _token = Object();

  static FinpayMoneyPlatform _instance = MethodChannelFinpayMoney();

  /// The default instance of [FinpayMoneyPlatform] to use.
  ///
  /// Defaults to [MethodChannelFinpayMoney].
  static FinpayMoneyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FinpayMoneyPlatform] when
  /// they register themselves.
  static set instance(FinpayMoneyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future topupUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('topupUIBuilder() has not been implemented');
  }

  Future transferUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('transferUIBuilder() has not been implemented');
  }

  Future historyTransactionUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('historyTransactionUIBuilder() has not been implemented');
  }

  Future walletUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('walletUIBuilder() has not been implemented');
  }

  Future qrisUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('qrisUIBuilder() has not been implemented');
  }

  Future upgradeAccountUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('upgradeAccountUIBuilder() has not been implemented');
  }

  Future pulsaDataUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('pulsaDataUIBuilder() has not been implemented');
  }

  Future pascaBayarUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('pascaBayarUIBuilder() has not been implemented');
  }

  Future alfamartUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('alfamartUIBuilder() has not been implemented');
  }

  Future bpjsUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('bpjsUIBuilder() has not been implemented');
  }

  Future plnUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('plnUIBuilder() has not been implemented');
  }

  Future telkomUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('telkomUIBuilder() has not been implemented');
  }

  Future indihomeUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('indihomeUIBuilder() has not been implemented');
  }

  Future voucherDealsUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('voucherDealsUIBuilder() has not been implemented');
  }

  Future voucherTvCableUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('voucherTvCableUIBuilder() has not been implemented');
  }

  Future pdamUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('pdamUIBuilder() has not been implemented');
  }

  Future internetTvCableUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('internetTvCableUIBuilder() has not been implemented');
  }

  Future instalmentUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('instalmentUIBuilder() has not been implemented');
  }

  Future finpayUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('finpayUIBuilder() has not been implemented');
  }

  Future insuranceUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('insuranceUIBuilder() has not been implemented');
  }

  Future telkomselUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('telkomselUIBuilder() has not been implemented');
  }

  Future pegadaianUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('pegadaianUIBuilder() has not been implemented');
  }

  Future revenueUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    throw UnimplementedError('revenueUIBuilder() has not been implemented');
  }

  Future connectAccount({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName,
    required Function onSuccess
  }) {
    throw UnimplementedError('connectAccount() has not been implemented');
  }
}

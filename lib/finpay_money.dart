import 'finpay_money_platform_interface.dart';

class FinpayMoney {
  Future<String?> getPlatformVersion() {
    return FinpayMoneyPlatform.instance.getPlatformVersion();
  }

  Future showTopup({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.topupUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showTransfer({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.transferUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showHistoryTransaction({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.historyTransactionUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showWallet({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.walletUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showUpgradeAccount({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.upgradeAccountUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobPulsaData({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.pulsaDataUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobPascaBayar({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.pascaBayarUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobAlfamart({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.alfamartUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobBpjs({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.bpjsUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobPln({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.plnUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobTelkom({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.telkomUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobIndihome({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.indihomeUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobVoucherDeals({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.voucherDealsUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobVoucherTvCable({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.voucherTvCableUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobPdam({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.pdamUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobInternetTvCable({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.internetTvCableUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobFinpayUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.finpayUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobInsurance({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.insuranceUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobTelkomsel({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.telkomselUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobPegadaian({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.pegadaianUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future showPpobRevenue({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) {
    return FinpayMoneyPlatform.instance.revenueUIBuilder(
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
    );
  }

  Future connectAccount({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName,
    required Function onSuccess,
  }) {
    return FinpayMoneyPlatform.instance.connectAccount(
      transNumber: transNumber,
      merchantUsername: merchantUsername,
      merchantPassword: merchantPassword,
      merchantSecretKey: merchantSecretKey,
      custPhoneNumber: custPhoneNumber,
      custName: custName,
      onSuccess: onSuccess
    );
  }
}

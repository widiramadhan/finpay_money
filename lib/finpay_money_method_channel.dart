import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'finpay_money_platform_interface.dart';

/// An implementation of [FinpayMoneyPlatform] that uses method channels.
class MethodChannelFinpayMoney extends FinpayMoneyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('finpay_money');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future topupUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('topupUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future transferUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('transferUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future historyTransactionUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('historyTransactionUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future walletUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('walletUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future qrisUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('qrisUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future upgradeAccountUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('upgradeAccountUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future pulsaDataUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('pulsaDataUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future pascaBayarUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('pascaBayarUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future alfamartUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('alfamartUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future bpjsUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('bpjsUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future plnUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('plnUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future telkomUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('telkomUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future indihomeUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('indihomeUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future voucherDealsUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('voucherDealsUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future voucherTvCableUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('voucherTvCableUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future pdamUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('pdamUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future internetTvCableUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('internetTvCableUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future finpayUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('finpayUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future insuranceUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('insuranceUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future telkomselUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('telkomselUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future pegadaianUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('pegadaianUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future revenueUIBuilder({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try{
      await methodChannel.invokeMethod('revenueUIBuilder', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }

  Future connectAccount({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName,
    required Function onSuccess,
  }) async {
    try{
      await methodChannel.invokeMethod('connectAccount', {
        transNumber: transNumber,
        merchantUsername: merchantUsername,
        merchantPassword: merchantPassword,
        merchantSecretKey: merchantSecretKey,
        custPhoneNumber: custPhoneNumber,
        custName: custName,
        onSuccess: onSuccess
      });
    } on PlatformException catch(e){
      print(e.message);
    }
  }
}

package sdk.finpay.emoney.finpay_money

import android.app.Activity
import android.content.Context
import android.widget.Toast
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import lib.finpay.sdk.corekit.model.Credential
import lib.finpay.sdk.uikit.FinpaySDKUI

/** FinpayMoneyPlugin */
class FinpayMoneyPlugin: FlutterPlugin, MethodCallHandler, ActivityAware {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var context: Context
  private lateinit var activity: Activity

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "finpay_money")
    channel.setMethodCallHandler(this)
    this.context = flutterPluginBinding.applicationContext
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else if(call.method == "topupUIBuilder") {
      val hashMap = call.arguments as HashMap<*, *>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.topupUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "transferUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.transferUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "historyTransactionUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.historyTransactionUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "walletUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.walletUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "qrisUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.qrisUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "upgradeAccountUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.upgradeAccountUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "pulsaDataUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.pulsaDataUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "pascaBayarUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.pascaBayarUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "alfamartUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.alfamartUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "bpjsUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.bpjsUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "plnUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.plnUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "telkomUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.telkomUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "indihomeUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.indihomeUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "voucherDealsUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.voucherDealsUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "voucherTvCableUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.voucherTvCableUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "pdamUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.pdamUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "internetTvCableUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.internetTvCableUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "instalmentUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.instalmentUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "finpayUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.finpayUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "insuranceUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.insuranceUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "telkomselUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.telkomselUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "pegadaianUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.pegadaianUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "revenueUIBuilder") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      FinpaySDKUI.revenueUIBuilder(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null
      )
    } else if(call.method == "connectAccount") {
      val hashMap = call.arguments as HashMap<*,*>
      val transNumber = hashMap["transNumber"]
      val merchantUsername = hashMap["merchantUsername"]
      val merchantPassword = hashMap["merchantPassword"]
      val merchantSecretKey = hashMap["merchantSecretKey"]
      val custPhoneNumber = hashMap["custPhoneNumber"]
      val custName = hashMap["custName"]
      val onSuccess = hashMap["onSuccess"]
      FinpaySDKUI.connectAccount(
        transNumber.toString(),
        this.activity,
        credential(merchantUsername.toString(), merchantPassword.toString(), merchantSecretKey.toString(), custPhoneNumber.toString(), custName.toString()),
        null,
        {
          onSuccess
        }
      )
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    this.activity = binding.activity
  }

  override fun onDetachedFromActivityForConfigChanges() {}

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    onAttachedToActivity(binding)
  }

  override fun onDetachedFromActivity() {}

  fun credential(merchantUsername: String, merchantPassword: String, key: String, phoneNumber: String, custName: String): Credential {
    val cd = Credential()
    cd.setUsername(merchantUsername)
    cd.setPassword(merchantPassword)
    cd.setSecretKey(key)
    cd.setPhoneNumber(phoneNumber)
    cd.setCustName(custName)
    return cd
  }
}

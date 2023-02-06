import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:finpay_money/finpay_money.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _merchantUsername = 'MT77764DKM83N';
  String _merchantPassword = 'YJV3AM0y';
  String _merchantSecretKey = 'daYumnMb';
  String _custPhoneNumber = '083815613839';
  String _custName = 'Widiyanto Ramadhan';
  final _finpayMoneyPlugin = FinpayMoney();

  @override
  void initState() {
    super.initState();
  }

  Future<void> callTopup({
    required String transNumber,
    required String merchantUsername,
    required String merchantPassword,
    required String merchantSecretKey,
    required String custPhoneNumber,
    required String custName
  }) async {
    try {
      await _finpayMoneyPlugin.showTopup(
          transNumber: transNumber,
          merchantUsername: merchantUsername,
          merchantPassword: merchantPassword,
          merchantSecretKey: merchantSecretKey,
          custPhoneNumber: custPhoneNumber,
          custName: custName
      );
    } on PlatformException {
      print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Finpay example app'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () async {
                  await callTopup(
                      transNumber: "apptest",
                      merchantUsername: _merchantUsername,
                      merchantPassword: _merchantPassword,
                      merchantSecretKey: _merchantSecretKey,
                      custPhoneNumber: _custPhoneNumber,
                      custName: _custName
                  );
                },
                child: Text('Show topup page from SDK'),
              )
            ],
          )
        ),
      ),
    );
  }
}

# finpay_money

[![Pub Package](https://img.shields.io/pub/v/encrypt.svg)](https://pub.dartlang.org/packages/finpay_money)

Finpay hadir sebagai solusi transaksi berbasis digital yang praktis dan mudah digunakan. Dengan Finpay, Anda bebas memilih berbagai cara transaksi dimanapun dan kapanpun.

### Use this package as a library

Depend on it
Run this command:

With Flutter:

```bash
$ flutter pub add finpay_money
```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```bash
dependencies:
  finpay_money: ^0.0.2
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Open your build.gradle in android/build.gradle
Add a line in repositories like this

```bash
allprojects {
  repositories {
    google()
    mavenCentral()
    //add this line
    maven { url 'https://jitpack.io' }
    maven { url "https://maven.google.com" }
    jcenter()
  }
}
```

Open your build.gradle in android/app/src/build.gradle
Change minSdkVersion and targetSdkVersion like this

```bash
minSdkVersion 24
targetSdkVersion 32
```

Open your AndroidManifest.xml in android/app/src/AndroidManifest.xml
Add a line like this

```bash
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
  xmlns:tools="http://schemas.android.com/tools" //add this line
  package="com.example.flutter_app_test">
  <application
      android:label="flutter_app_test"
      android:name="${applicationName}"
      tools:replace="android:label" //add this line
      android:icon="@mipmap/ic_launcher">
      ......
  </applications>
```

Import it
Now in your Dart code, you can use:

```bash
import 'package:finpay_money/finpay_money.dart';
```

Call function from SDK, you can use

```bash
final _finpayMoneyPlugin = FinpayMoney();
try{
  _finpayMoneyPlugin.showTopup(...);
} on PlatformException {
  print("error");
}
```
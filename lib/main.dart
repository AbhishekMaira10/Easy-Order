import 'package:easy_order/src/custom_widgets/ui_widgets/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:easy_order/dilshan/qrcode_scan.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoarding(),
      routes: {
        'qrcode':(context)=>QrCodeScan(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class QrCodeScan extends StatefulWidget {
  @override
  _QrCodeScanState createState() => _QrCodeScanState();
}

class _QrCodeScanState extends State<QrCodeScan> {
  @override
  initState() {
    super.initState();
  }

  String barcode = "";
  Future scanBarcode() async {
      String barcodeResult = await BarcodeScanner.scan();
      setState(() {
        this.barcode = barcodeResult;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Qr Scan',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              //padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: EdgeInsets.all(12),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),side: BorderSide(color: Theme.of(context).accentColor)),
                  padding: EdgeInsets.all(16),
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Theme.of(context).accentColor,
                  onPressed: scanBarcode,
                  child: const Text('START CAMERA SCAN')),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                barcode,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

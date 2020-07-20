import 'package:easy_order/src/custom_widgets/background_widget.dart';
import 'package:easy_order/src/custom_widgets/screen_navigation.dart';
import 'package:easy_order/src/custom_widgets/ui_widgets/qrcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  final textStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    fontSize: 26,
    decorationThickness: 3,
    decorationColor: Colors.blueAccent,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
        title: Text(
          'App Name',
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          BackgroundWidget(),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Menu', style: textStyle),
                onPressed: () => changeScreen(context, QrCodeScan()),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Reservation', style: textStyle),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Offers', style: textStyle),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

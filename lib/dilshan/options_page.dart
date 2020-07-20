import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//TODO: Add this page after logging in

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
              //TODO: Call Assistance
              onPressed: () {},
            ),
          ],
          title: Text(
            'App Name',
          ),
          centerTitle: true,
        ),
        body: _buildContent(context),
        backgroundColor: Colors.grey[100]);
  }

  Widget _buildContent(BuildContext context) {
    //TODO:Menu,Reservation,Offers button
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
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/qrcode',
                ),
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

/* import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

//import 'C:\/Users/Dilshan Sandhu/Documents/flutter/packages/flutter/lib/material.dart';

//import 'C:\/Users/Dilshan Sandhu/Documents/flutter/packages/flutter/lib/cupertino.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login Screen',
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        elevation: 2,
        centerTitle: true,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 120,),
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: GoogleFonts.abel(
              fontSize: 32,
            ),
          ),
          SizedBox(height: 100),
          Container(
            
            alignment: Alignment.center,
            child: SizedBox(
              height: 60,
              child: RaisedButton(
                child: Text(
                  'Sign into System',
                  style: GoogleFonts.alata(fontSize: 21,color: Colors.blue),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
 */

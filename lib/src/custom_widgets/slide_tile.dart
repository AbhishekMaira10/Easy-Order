import 'package:easy_order/src/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String imagePath, title, desc;

  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            height: 300.0,
            width: 300.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 40,
          ),
          CustomText(
            text: title,
            weight: FontWeight.bold,
            size: 25,
          ),
          SizedBox(
            height: 25,
          ),
          CustomText(
            text: desc,
            weight: FontWeight.w500,
            size: 16,
          ),
        ],
      ),
    );
  }
}

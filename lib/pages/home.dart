import 'package:flutter/material.dart';
import 'package:flutter_cardview/custom-widgets/index.dart';

class Home extends StatelessWidget {
  Widget _text(String text) {
    return Text(
      text, 
      style: TextStyle(
        color: Colors.grey,
        decoration: TextDecoration.none,
        fontSize: 14, 
        fontWeight: FontWeight.normal
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 100
      ),
      color: Color(0xFFf7f7f7),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CardView(
              child: _text("CardView DEFAULT"),
            ),
            SizedBox(height: 30.0),
            CardView(
              margin: EdgeInsets.only(bottom: 50),
              child: _text("CardView MARGIN bottom"),
            ),
            SizedBox(height: 30.0),
            CardView(
              alignment: Alignment.center,
              child: _text("CardView with ALIGNMENT"),
            ),
            SizedBox(height: 30.0),
            CardView(
              height: 200,
              child: _text("CardView with custom HEIGHT"),
            ),
            SizedBox(height: 30.0),
            CardView(
              elevation: 15,
              child: _text("CardView with custom ELEVATION"),
            ),
            SizedBox(height: 30.0),
            CardView(
              elevation: 0,
              child: _text("CardView with NO ELEVATION"),
            ),
            SizedBox(height: 30.0),
            CardView(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child: _text("CardView with custom HEIGHT and WIDTH and CETER"),
            ),
          ] 
        ),
      ),
    );
  }
}
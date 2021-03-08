import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromRGBO(52, 54, 101, 0.3),
    ));

    return Scaffold(
      body: Stack(
        children: [
          _createBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titles(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createBackground() {
    return Stack(
      children: [
        _createBGGradient(
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0),
        ),
        Positioned(
          top: -120,
          left: -40,
          child: _createRoseBox(
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
            90.0,
          ),
        ),
      ],
    );
  }

  Widget _createBGGradient(Color a, Color b) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1),
          colors: [a, b],
        ),
      ),
    );
  }

  Widget _createRoseBox(Color a, Color b, double r) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(r),
          gradient: LinearGradient(
            colors: [a, b],
          ),
        ),
      ),
    );
  }

  Widget _titles(BuildContext context) {
    final titleStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 28.0,
    );

    final subtitleStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: 19.0,
    );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: titleStyle,
            ),
            SizedBox(height: 10),
            Text(
              'Classify this transaction into a particular category',
              style: subtitleStyle,
            )
          ],
        ),
      ),
    );
  }
}

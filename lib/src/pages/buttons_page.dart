import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:ui';

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
                _titles(),
                _buttons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _navigationBar(context),
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

  Widget _titles() {
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
        padding: EdgeInsets.only(top: 30, left: 30, bottom: 15),
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

  Widget _navigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)),
            ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.pie_chart_outlined),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle),
          ),
        ],
      ),
    );
  }

  Widget _buttons() {
    return Container(
      width: 325.0,
      child: Table(
        children: [
          TableRow(children: [
            _createButton('Bus', Icons.border_all, Colors.blue, 30),
            _createButton('Bike', Icons.directions_bike, Colors.red, 30),
          ]),
          TableRow(children: [
            _createButton('Car', Icons.local_taxi, Colors.pink, 30),
            _createButton(
                'Plane', Icons.airplanemode_active, Colors.purple, 30),
          ]),
          TableRow(children: [
            _createButton('Walk', Icons.directions_walk, Colors.brown, 30),
            _createButton('Run', Icons.directions_run, Colors.grey, 30),
          ]),
        ],
      ),
    );
  }

  Widget _createButton(String text, IconData icon, Color color, double radius) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 150.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 25.0),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: color,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      text,
                      style: TextStyle(
                        color: color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

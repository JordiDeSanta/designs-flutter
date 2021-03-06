import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _createPage1(context),
        _createPage2(),
      ],
    ));
  }

  Widget _createPage1(BuildContext context) {
    return Stack(
      children: [
        _backgroundColor(),
        _createImage(),
        _createTexts(context),
      ],
    );
  }

  Widget _createPage2() {
    return Stack(
      children: [
        _backgroundColor(),
        _createImage(),
      ],
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(122, 236, 203, 1),
    );
  }

  Widget _createTexts(BuildContext context) {
    final style = TextStyle(
      color: Colors.white,
      fontSize: 50,
    );

    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 80, bottom: 10),
        child: Column(
          children: [
            Text(
              '11°',
              style: style,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Monday',
              style: style,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 410),
            Icon(
              Icons.keyboard_arrow_down,
              size: 70.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

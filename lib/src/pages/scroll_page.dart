import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _createPage1(),
        _createPage2(),
      ],
    ));
  }

  Widget _createPage1() {
    return Stack(
      children: [
        _backgroundColor(),
        _createImage(),
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
    return Image(
      image: AssetImage('assets/img/scroll-1.png'),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(122, 236, 203, 1),
    );
  }
}

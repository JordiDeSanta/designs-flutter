import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Column(
        children: [
          _createImage(),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                _createHeader(context),
                _createIcons(),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg'),
    );
  }

  Widget _createHeader(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 60, bottom: 10),
                child: Text(
                  'Beautiful Mountains Travel',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              Text(
                'Puente Alto, Chile',
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.redAccent),
        Text('41'),
      ],
    );
  }

  Widget _createIcons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _createIcon('CALL', Icons.call, Colors.indigoAccent),
          _createIcon('ROUTE', Icons.ac_unit_rounded, Colors.indigoAccent),
          _createIcon('SHARE', Icons.share, Colors.indigoAccent),
        ],
      ),
    );
  }

  Widget _createIcon(String text, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 30),
      child: Column(
        children: [
          Icon(icon, color: color),
          SizedBox(height: 5),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}

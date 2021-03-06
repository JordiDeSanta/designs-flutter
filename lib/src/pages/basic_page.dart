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
          _createHeader(context),
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
          padding: EdgeInsets.all(30),
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
}

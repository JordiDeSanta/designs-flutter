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
                _createText(),
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
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Column(
        children: [
          IconButton(
            icon: Icon(icon, color: color),
            onPressed: () {},
          ),
          SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }

  Widget _createText() {
    return Container(
      padding: null,
      child: Text(
        'Tempor consequat mollit minim qui ut nostrud minim do. Tempor qui labore consequat adipisicing ea culpa nisi. Aliquip et dolore proident magna commodo. Mollit reprehenderit nostrud eu id Lorem ullamco labore. Consectetur id velit culpa in elit velit culpa duis et amet velit in consequat magna. Anim ullamco elit nulla elit ut cupidatat ad voluptate cillum culpa ipsum consectetur sit non. Cupidatat ut qui adipisicing do nulla.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}

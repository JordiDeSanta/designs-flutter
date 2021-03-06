import 'package:flutter/material.dart';

import 'package:designs/src/pages/buttons_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:designs/src/pages/basic_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'buttons',
      debugShowCheckedModeBanner: false,
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      },
    );
  }
}

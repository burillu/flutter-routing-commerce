import 'package:flutter/material.dart';
import 'package:routing_commerce/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: HomePage(),
    );
  }
}

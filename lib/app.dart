import 'package:flutter/material.dart';
import 'package:routing_commerce/pages/home_page.dart';
import 'package:routing_commerce/pages/photo_details_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        final routes = {
          "/": (_) => HomePage(),
          "/photo/details": (_) =>
              PhotoDetailsPage(src: settings.arguments as String),
        };
        return MaterialPageRoute(builder: routes[settings.name]!);
      },
      // home: HomePage(),
    );
  }
}

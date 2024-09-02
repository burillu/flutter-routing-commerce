import 'package:flutter/material.dart';
import 'package:routing_commerce/pages/home_page.dart';
import 'package:routing_commerce/pages/photo_details_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      initialRoute: HomePage.route,
      onGenerateRoute: (settings) {
        final routes = {
          HomePage.route: (_) => HomePage(),
          PhotoDetailsPage.route: (_) => PhotoDetailsPage(
              args: settings.arguments as PhotoDetailsPageArgs),
        };
        return MaterialPageRoute(builder: routes[settings.name]!);
      },
      // home: HomePage(),
    );
  }
}

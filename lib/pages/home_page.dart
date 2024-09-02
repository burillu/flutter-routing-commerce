import 'package:flutter/material.dart';
import 'package:routing_commerce/model/photo.dart';
import 'package:routing_commerce/pages/photo_details_page.dart';

class HomePage extends StatelessWidget {
  static const String route = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: body(context),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Column(
          children: [
            Text(
              "ART",
              style: TextStyle(letterSpacing: 10),
            ),
            Text("Dove l'uomo tocca il cielo",
                style: TextStyle(color: Colors.white54, fontSize: 13))
          ],
        ),
        centerTitle: true,
      ),
    );
  }

  Widget body(context) => GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: photos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                PhotoDetailsPage.route,
                arguments: PhotoDetailsPageArgs(src: photos[index]),
              );
            },
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                photos[index],
              ),
            )),
      );
}

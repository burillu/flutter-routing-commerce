import 'package:flutter/material.dart';
import 'package:routing_commerce/model/photo.dart';
import 'package:routing_commerce/pages/profile_page.dart';

class HomePage extends StatelessWidget {
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
        itemCount: photos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => GestureDetector(
            child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(
            photos[index],
          ),
        )),
      );
}

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class PhotoDetailsPage extends StatelessWidget {
  final String src;

  const PhotoDetailsPage({required this.src});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Photo Details"),
        centerTitle: true,
      ),
      body: Center(
        child: ExtendedImage.network(
          src,
          mode: ExtendedImageMode.gesture,
        ),
      ),
    );
  }
}

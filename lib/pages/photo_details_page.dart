import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class PhotoDetailsPage extends StatelessWidget {
  static const route = "/photo/details";
  final PhotoDetailsPageArgs args;

  const PhotoDetailsPage({required this.args});
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
          args.src,
          mode: ExtendedImageMode.gesture,
        ),
      ),
    );
  }
}

class PhotoDetailsPageArgs {
  final String src;
  PhotoDetailsPageArgs({required this.src});
}

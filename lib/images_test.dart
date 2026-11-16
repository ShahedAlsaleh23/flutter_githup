import 'package:flutter/material.dart';
class ImagesTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Images"),),
      body: Column(
        children: [
          Image.asset('assets/images/assets.png'),
          Image.network('https://static.vecteezy.com/system/resources/thumbnails/059/410/066/small/growing-assets-and-wealth-concept-with-house-and-stacked-coins-free-photo.jpg')
        ],
      ),
    );
  }
}
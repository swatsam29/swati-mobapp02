import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget{
  static const routeName = '/imageDemoScreen';

  const ImageDemoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Demo'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.amberAccent,
            height: 300.0,
            child: Image.network(
              'https://m.media-amazon.com/images/I/819i2OaDXUL._AC_UY436_FMwebp_QL65_.jpg'),
          ),
          Container(
            color: Colors.blueAccent,
            height: 300.0,
            child: Image.network(
              'https://m.media-amazon.com/images/I/71pWHML7GvL._AC_UY436_FMwebp_QL65_.jpg'),
          ),
        ],
      )
    );
  }

}
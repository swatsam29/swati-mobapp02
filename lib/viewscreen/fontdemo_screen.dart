import 'package:flutter/material.dart';

class FontDemoScreen extends StatelessWidget {
  const FontDemoScreen({Key? key}) : super(key: key);

  static const routeName = '/fontDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Text(
              'LobsterTwo Regular font',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 30.0,
              ),
            ),
            Text(
              'LobsterTwo Italic font',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'LobsterTwo Bold font',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'LobsterTwo BoldItalic font',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

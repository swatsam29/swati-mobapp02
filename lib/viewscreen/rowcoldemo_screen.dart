import 'package:flutter/material.dart';

class rowColDemoScreen extends StatelessWidget {
  const rowColDemoScreen({Key? key}) : super(key: key);
  
  static const routeName = '/rowColDemoScreen';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row/Column Demo'),
      ),
      body: const Text('Row Column'),

    );
  }

}
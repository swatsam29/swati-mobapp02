import 'package:flutter/material.dart';

void main(){
  
  runApp(const Lesson1App());
}

class Lesson1App extends StatelessWidget{
  
  const Lesson1App({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Hello World!'),
    );
  
  }


}
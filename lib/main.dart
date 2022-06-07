import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/start_screen.dart';

void main() {
  runApp(const Lesson1App());
}


class Lesson1App extends StatelessWidget {
  const Lesson1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => const StartScreen(),
      },
    );
  }
}

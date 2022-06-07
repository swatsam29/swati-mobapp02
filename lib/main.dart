import 'package:flutter/material.dart';
import 'package:lesson1/model/constants.dart';
import 'package:lesson1/viewscreen/buttondemo_screen.dart';
import 'package:lesson1/viewscreen/fontdemo_screen.dart';
import 'package:lesson1/viewscreen/imagedemo_screen.dart';
import 'package:lesson1/viewscreen/materialdesign_screen.dart';
import 'package:lesson1/viewscreen/rowcoldemo_screen.dart';
import 'package:lesson1/viewscreen/start_screen.dart';

void main() {
  runApp(const Lesson1App());
}

class Lesson1App extends StatelessWidget {
  const Lesson1App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: Constant.dev,
      theme: ThemeData(
          brightness: Brightness.dark,
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 64.0,
              color: Colors.red,
            ),
            button: TextStyle(
              fontSize: 32.0,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              elevation: 12.0,
              shadowColor: Colors.yellowAccent,
              textStyle: const TextStyle(fontSize: 28.0),
            ),
          ),
          outlinedButtonTheme:
              OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  textStyle: const TextStyle(fontSize: 20.0),
                ),
                ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
            primary: Colors.yellowAccent,
            backgroundColor: Colors.grey,
            textStyle: const TextStyle(fontSize: 18.0),
          ),
          ),
                ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => const StartScreen(),
        MaterialDesignClass.routeName: (context) => const MaterialDesignClass(),
        ImageDemoScreen.routeName: (context) => const ImageDemoScreen(),
        ButtonDemoScreen.routeName: (context) => const ButtonDemoScreen(),
        FontDemoScreen.routeName:(context) => const FontDemoScreen(),
        rowColDemoScreen.routeName:(context) => const rowColDemoScreen(),
      },
    );
  }
}

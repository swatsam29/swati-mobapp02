import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/view/view_util.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Menu'),
        actions: [
          IconButton(
              onPressed: () => showSnackBar(
                    context: context,
                    message: 'Alarm button pressed',
                  ),
              icon: const Icon(Icons.alarm)),
          IconButton(
              onPressed: () => showSnackBar(
                    context: context,
                    message: 'Message button pressed',
                  ),
              icon: const Icon(Icons.message)),
        ],
      ),
      body: const Text('Start Screen'),
    );
  }
}

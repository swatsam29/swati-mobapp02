import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/view/view_util.dart';

enum ColorMenu {
  blue,
  red,
  yellow,
  pink,
  grey,
  violet,
}

enum Language {
  cpp,
  csharp,
  java,
  dart,
  javascript,
  python,
}

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({Key? key}) : super(key: key);

  static const routeName = '/buttonDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => showSnackBar(context: context, message: 'Floating Action Button'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => showSnackBar(
                    context: context, message: 'Elevated Button 1'),
                child: const Text('Elevated Button 1')),
            ElevatedButton.icon(
              onPressed: () =>
                  showSnackBar(context: context, message: 'Elevated Button 2'),
              icon: const Icon(Icons.add_link),
              label: const Text('Elevated Button 2'),
            ),
            OutlinedButton(
              onPressed: () =>
                  showSnackBar(context: context, message: 'Outlined Button 1'),
              child: const Text('Outlined Button 1'),
            ),
            OutlinedButton.icon(
              onPressed: () =>
                  showSnackBar(context: context, message: 'Outlined Button 2'),
              icon: const Icon(Icons.backpack),
              label: const Text('Outlined Button 2'),
            ),
            TextButton(
              onPressed: () =>
                  showSnackBar(context: context, message: 'Text Button 1'),
              child: const Text('Text Button 1'),
            ),
            TextButton.icon(
              onPressed: () =>
                  showSnackBar(context: context, message: 'Text Button 2'),
              icon: const Icon(Icons.access_alarm_sharp),
              label: const Text('Text Button 2'),
            ),
            IconButton(
              onPressed: () =>
                  showSnackBar(context: context, message: 'Icon Button'),
              icon: const Icon(
                Icons.dangerous,
                size: 50.0,
                color: Colors.pinkAccent,
              ),
            ),
            Container(
              color: Colors.red[800],
              child: DropdownButton(
                value: ColorMenu.blue,
                items: [
                  for (var color in ColorMenu.values)
                    DropdownMenuItem(
                      value: color,
                      child: Text(color.name),
                    ),
                ],
                onChanged: (ColorMenu? color) {
                  showSnackBar(
                    context: context,
                    message:
                        'Drop Down Menu => ${color != null ? color.name : 'N/A'}',
                  );
                },
              ),
            ),
            Container(
              color: Colors.teal,
              child: PopupMenuButton(
                initialValue: Language.dart,
                onSelected: (Language lang) {
                  showSnackBar(
                      context: context,
                      message: 'PopupMenuButton: ${lang.name}');
                },
                itemBuilder: (context) => [
                  for (var lang in Language.values)
                    PopupMenuItem(
                      value: lang,
                      child: Text(lang.name),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MaterialDesignClass extends StatelessWidget {
  static const routeName = '/materialDesignClass';

  const MaterialDesignClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design Style Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children:  [
          const Text(
            'Material Design',
            style: TextStyle(
              color: Colors.red,
              fontSize: 28.0,
              fontFamily: 'Courier New',
            ),
          ),
          const Text(
            'Two',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 60.0,
            ),
          ),
          Text(
            'Headline1',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Headline2',
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            'Headline3',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Headline4',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Headline5',
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            'Headline6',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Subtitle1',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            'Button',
            style: Theme.of(context).textTheme.button,
          ),
          Text(
            'Caption',
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            'Overline',
            style: Theme.of(context).textTheme.overline,
          ),
        ],
      ),
    ),
    );
  }
}

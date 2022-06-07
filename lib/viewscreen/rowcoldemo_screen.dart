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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200.0,
                width: 300.0,
                color: Colors.blue,
              ),
              const Icon(Icons.sailing, size: 100.0,),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: Text('Stack', 
                style: Theme.of(context).textTheme.headline4,
                ),
              ), 
            ],
          ),
          Row(
            children: [
              for (int i = 0; i < 10; i++)
                Expanded(
                    child: Container(
                  color: Colors.teal,
                  margin: const EdgeInsets.only(right: 5.0),
                  child: Text(
                    'Col-$i',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ))
            ],
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 10.0,
            children: [
              for (int i = 0; i < 10; i++)
                Container(
                  color: Colors.teal,
                  margin: const EdgeInsets.only(right: 5.0),
                  child: Text(
                    'Col-$i',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                color: Colors.red[800],
                child: Text(
                  'AA',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              ),
               Expanded(
                  flex: 2, 
                  child: Container(
                color: Colors.red[100],
                child: Text(
                  'BB',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              ),
               Expanded(
                  flex: 1,
                  child: Container(
                color: Colors.red[800],
                child: Text(
                  'CC',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow[900],
              child: Text(
                'Hello', 
                style: Theme.of(context).textTheme.headline5,
              ),
          ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red[900],
              child: Text(
                'World!', 
                style: Theme.of(context).textTheme.headline5,
              ),
          ),
          ),
        ],
      ),
    );
  }
}

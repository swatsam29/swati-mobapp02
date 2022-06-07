import 'dart:io';

import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  static const routeName = '/BusinessCardScreen';

  const BusinessCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Mobile Business card'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        'images/Picture.jpeg',
                        height: 250.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5.0,
                    bottom: 2.0,
                    child: Image.asset(
                      'images/qr-code.png',
                      height: 90.0,
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 40.0,
                color: Colors.yellow,
              ),
              Text(
                'Name',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Swathi SampathKumar',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Title',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Student',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Department',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Computer Science',
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

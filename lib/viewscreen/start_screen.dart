import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/imagedemo_screen.dart';
import 'package:lesson1/viewscreen/view/view_util.dart';
import 'materialdesign_screen.dart';

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
          PopupMenuButton(
            onSelected: (String value) {
              showSnackBar(context: context, message: 'Popupmenu = $value');
            },
            itemBuilder: (BuildContext context) {
            return <PopupMenuItem<String>>[
              PopupMenuItem(
                value: 'License',
                child: Row(
                  children: const [
                    Icon(Icons.label),
                    Text('License')
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'Balance',
                child: Row(
                  children: const [
                    Icon(Icons.account_balance),
                    Text('Balance')
                  ],
                ),
              ),
               PopupMenuItem(
                value: 'Profile',
                child: Row(
                  children: const [
                    Icon(Icons.person),
                    Text('Profile')
                  ],
                ),
              ),
            ];
          })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.account_circle_rounded,
                size: 80.0,
              ),
              accountName: Text('ssampathkumar'),
              accountEmail: Text('ssampathkumar@uco.edu'),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Friends'),
              onTap: () {
                Navigator.of(context).pop(); //close the drawer
                showSnackBar(context: context, message: 'Friends menu');
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                Navigator.of(context).pop(); //close the drawer
                showSnackBar(context: context, message: 'Logout menu');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            'Choose a menu to navigate',
            style: Theme.of(context).textTheme.headline5,
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, MaterialDesignClass.routeName),
            child: Text(
              'Material Design Style',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          ElevatedButton(
            onPressed: () =>
            Navigator.pushNamed(context, ImageDemoScreen.routeName),
            child: Text(
              'Button 2',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context: context, message: 'Floating Action Button');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (int index) {
          showSnackBar(
              context: context,
              message: 'Bottom Navigation Bar: index= $index');
        },
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Time',
            icon: Icon(Icons.time_to_leave),
          ),
          BottomNavigationBarItem(
            label: 'Business',
            icon: Icon(Icons.business),
          ),
        ],
      ),
    );
  }
}

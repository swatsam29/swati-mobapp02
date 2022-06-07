
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
      drawer: Drawer(
        child: ListView(
          children:  [
            const UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.account_circle_rounded, size: 80.0 ,),
              accountName: Text('ssampathkumar'), 
              accountEmail: Text('ssampathkumar@uco.edu'),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Friends'),
                onTap: (){
                  Navigator.of(context).pop(); //close the drawer
                  showSnackBar(context: context, message: 'Friends menu');
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Logout'),
                onTap: (){
                  Navigator.of(context).pop(); //close the drawer
                  showSnackBar(context: context, message: 'Logout menu');
                },
              ),

          ],
          ),
        ),
      body: Column(
        children: [
          const Text('Choose a menu to navigate'),
          ElevatedButton(
            onPressed: () =>
                showSnackBar(context: context, message: 'Button 1'),
            child: const Text('Button 1'),
          ),
          ElevatedButton(
            onPressed: () =>
                showSnackBar(context: context, message: 'Button 2'),
            child: const Text('Button 2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        showSnackBar(context: context, message: 'Floating Action Button');
      },
      child: const Icon(Icons.add),
      ),


    );
  }
}

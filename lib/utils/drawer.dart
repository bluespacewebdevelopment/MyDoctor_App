
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {

  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {


  @override
  Widget build(BuildContext context) {

    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Theme
                  .of(context)
                  .primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                          color: Colors.transparent,
                          child: const CircleAvatar(
                            radius: 50,
                            child: Icon(Icons.person,size: 50,),),
                        ),
                    const Text('Hello',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Email ',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                'Setting',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
              },
            ),
            ListTile(
                leading: const Icon(Icons.analytics),
                title: const Text(
                  'Database',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                }),
            ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text(
                  'Notification',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                }),
            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Log Out',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                }),
          ],
        ));
  }
}

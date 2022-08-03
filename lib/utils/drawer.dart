import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

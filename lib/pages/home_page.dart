import 'dart:ui';

import 'package:doctor_app/utils/drawer.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('MyApp'),
          )
        ],
      ),
      bottomNavigationBar: Bottom_Bar(),
    );
  }
}

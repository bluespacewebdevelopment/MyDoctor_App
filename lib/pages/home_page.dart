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
      body:  CustomScrollView(
        slivers: <Widget>[
            SliverAppBar(
            // title: const Text('MyApp'),
              backgroundColor: Colors.white,
            elevation: 2,
            expandedHeight: 150,
            pinned: true,
            floating: true,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            title:  Text('Docs App',style: TextStyle(color: Theme.of(context).primaryColor),),
            background: Image.asset('assets/images/doctors.png',
              fit: BoxFit.fill,),
          ),
             actions: const [
             ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  height: 200,
                  child: const Center(child:
                    FlutterLogo(size: 100,)),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Bottom_Bar(),
    );
  }
}

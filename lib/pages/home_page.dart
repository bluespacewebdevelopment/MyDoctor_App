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
      drawer: const MyDrawer(),
      body:  CustomScrollView(
        slivers: <Widget>[
            SliverAppBar(
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
             actions: const [],
          ),
          _buildCard(),
        ],
      ),
      bottomNavigationBar: const Bottom_Bar(),
    );
  }
  Widget _buildCard(){
    return  SliverToBoxAdapter(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 10,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context,index){
            return _myCards();
          },),
    );
  }

  Widget _myCards(){
    return Card(
        elevation: 10,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                image: NetworkImage('https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/317363_1100-800x825.jpg'),
                fit: BoxFit.fill),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 40,
              width: 200,
              decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.blue.withOpacity(0.5),
                        Colors.red.withOpacity(0.2),
                            ],
                    tileMode: TileMode.mirror,
                    stops: const [0,1,2],
                    begin: Alignment.bottomLeft,
                  )
              ),
              child: const Text(' Fracture',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
          ),
        ),
      );
  }
}

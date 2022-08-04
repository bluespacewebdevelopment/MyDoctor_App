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
          padding:  const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                image: NetworkImage('https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/317363_1100-800x825.jpg'),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text('Hello'),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.redAccent.shade200,
                ),
                child: const Text('Male',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,)
                ),
              )],
          ),
        ),
      );
  }
}

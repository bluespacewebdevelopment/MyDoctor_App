import 'package:flutter/material.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
  final double size = 30;
  int selectIndex=0;
  @override
  Widget build(BuildContext context) {

    Color splashColor = Theme.of(context).splashColor;
    Color color = Colors.blue;

    return  BottomNavigationBar(
      backgroundColor: Theme.of(context).backgroundColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          tooltip: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.confirmation_num_sharp),
          label: 'Consult',
          tooltip: 'Consult',

        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          tooltip: 'Profile',

        ),
      ],
      currentIndex: selectIndex,
      iconSize: 20,
      selectedItemColor: Theme.of(context).bottomAppBarColor,
      onTap: (int position) {
        setState(() {
          selectIndex=position;
        });
      },
    );
  }
}

import 'package:flutter/material.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
 final double size = 30;
  @override
  Widget build(BuildContext context) {

    Color splashColor = Theme.of(context).splashColor;
    Color color = Colors.green;

    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: IconTheme(
        data: IconThemeData(
          color: Theme.of(context).errorColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              tooltip: "Home",
              splashColor: splashColor,
              splashRadius: 10,
              onPressed: () {},
              icon:  Icon(
                Icons.home,
                color: Colors.black,
                size: size,
              ),
            ),
            IconButton(
                tooltip: "Consltant",
                onPressed: () {
                  print("Hello message");
                },
                splashColor: splashColor,
                splashRadius: 10,
                icon: Icon(
                  Icons.message,
                  color: Colors.black,
                  size: size,
                )),

            IconButton(
              tooltip: "Profile",
              onPressed: () {
                print("Profile");
              },
              splashColor: splashColor,
              splashRadius: 10,
              icon:  Icon(Icons.person_rounded,
                color: Colors.black,
                size: size,
              ),

            )
          ],
        ),
      ),
    );
  }
}

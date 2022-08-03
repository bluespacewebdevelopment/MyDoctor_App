import 'package:flutter/material.dart';
class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
 final double size=30;
 Color color=Colors.green;
 MaterialColor splashColor=Colors.red;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.lightBlue[400],
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
                color: Colors.yellow,
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
                  color: color,
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
                color: color,
                size: size,
              ),

            )
          ],
        ),
      ),
    );
  }
}

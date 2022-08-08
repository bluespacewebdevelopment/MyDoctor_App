import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.name}) : super(key: key);
  String name;

  @override
  State<Home> createState() => _HomeState(this.name);
}

class _HomeState extends State<Home> {
  _HomeState(this.name);

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text(name),
      ),
    );
  }
}

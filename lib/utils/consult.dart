import 'package:flutter/material.dart';

import '../pages/bottom_bar.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  State<Consult> createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
      ),
      bottomNavigationBar: Bottom_Bar(),
    );
  }
}

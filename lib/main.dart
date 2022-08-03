import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor _fullGreen = MaterialColor(0xFF00ff1e, color);
    MaterialColor _lessGreen = MaterialColor(0xFF49f55e, color);
    MaterialColor middleGreen = MaterialColor(0xFF41e324, color);
    MaterialColor cardColor = MaterialColor(0xFFe9f5ef, color);
    MaterialColor splashColor = MaterialColor(0xFFeb1a07, color);
    MaterialColor primaryColor = MaterialColor(0xFFeb1a07, color);


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: _fullGreen,
        primaryColor:primaryColor,
        splashColor: splashColor,
        cardColor: cardColor,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}



Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};
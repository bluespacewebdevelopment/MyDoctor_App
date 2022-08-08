import 'package:doctor_app/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor fullGreen = const MaterialColor(0xFF00ff1e, color);
    MaterialColor background = const MaterialColor(0xFFe9f5ef, color);
    MaterialColor bottomBarColor = const MaterialColor(0xFF41e324, color);
    MaterialColor cardColor = const MaterialColor(0xFFe9f5ef, color);
    MaterialColor splashColor = const MaterialColor(0xFF5df565, color);
    MaterialColor primaryColor = const MaterialColor(0xFFeb1a07, color);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: fullGreen,
        primaryColor: primaryColor,
        splashColor: splashColor,
        cardColor: cardColor,
        bottomAppBarColor: bottomBarColor,
        backgroundColor: background,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
      },
    );
  }
}

const Map<int, Color> color = {
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

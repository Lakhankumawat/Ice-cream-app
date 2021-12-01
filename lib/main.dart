import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/welcome_screen/welcome_screen.dart';
import 'utils/routes.dart';

void main() {
  ///TO hide the status bar
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //     overlays: [SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: routes,
      initialRoute: WelcomeScreen.routeName,
    );
  }
}

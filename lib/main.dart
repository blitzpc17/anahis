import 'package:flutter/material.dart';

import 'src/features/home/view/home_screen.dart';
import 'src/features/introduction/view/introduction_screen.dart';
import 'src/features/login/view/login_screen.dart';
import 'src/utils/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    final myTheme = MaterialTheme(Theme.of(context).textTheme);
    return MaterialApp(
        theme: myTheme.light(),
        darkTheme: myTheme.light(),
        routes: {
          LoginScreen.routeName: LoginScreen.route,
          IntroductionScreen.routeName: IntroductionScreen.route,
          HomeScreen.routeName: HomeScreen.route,
        },
        initialRoute: "login",
        debugShowCheckedModeBanner: false,
      );



  }
}

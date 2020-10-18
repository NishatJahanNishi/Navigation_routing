import 'package:navigation_routing/login.dart';
import 'package:navigation_routing/registration.dart';
import 'package:navigation_routing/welcome.dart';
import 'package:flutter/material.dart';
import 'package:navigation_routing/helper.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistraionScreen.id: (context) => RegistraionScreen(),
      },


    );
  }
}
import 'package:flutter/material.dart';
import 'package:navigation_routing/login.dart';
import 'package:navigation_routing/registration.dart';
import 'package:navigation_routing/helper.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Row(
              children: [
                SizedBox( width: 20.0,),
                Container(
                  height: 60.0,
                  child: Image.asset('images/right.png'),
                ),
                SizedBox( width: 20.0,),
                Text('Friend Chat', style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
                ),

              ],
            ),
            SizedBox(height: 40,),
            RoundedButton(
              title: "Register",
              colour: Colors.blueAccent,
              onPressed: (){
                Navigator.pushNamed(context,RegistraionScreen.id);

              },
            ),
            RoundedButton(
              title: "Log In",
              colour: Colors.deepOrange,
              onPressed: (){
                Navigator.pushNamed(context,LoginScreen.id);
              },
            )

          ],

        ),


      ),

    );
  }
}
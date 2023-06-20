import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/SecondScreen.dart';
import 'LoginScreen.dart';
import 'navigation_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      _navigateUser();
    });
  }

  void _navigateUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    if(isLoggedIn){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavigationHomeScreen()));
    }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
     // Navigator.of(context).pushReplacementNamed(routeName)
    //  Navigator.pushReplacementNamed(context, "/login");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}


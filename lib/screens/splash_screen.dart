// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:machinetest/screens/home_page.dart';
// import 'package:machinetest/screens/login_page.dart';
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   void initState(){
//     super.initState();
//     Timer(Duration(seconds: 3),()=>Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginPage(),)));
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:SizedBox(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height ,child: Image(image: AssetImage("asd.png"),fit: BoxFit.cover,)),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:machinetest/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image(
          image: AssetImage('assets/asd.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

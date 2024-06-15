import 'package:flutter/material.dart';
import 'package:machinetest/screens/home_page.dart';
import 'package:machinetest/screens/login_page.dart';
import 'package:machinetest/screens/register_page.dart';
import 'package:machinetest/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:RegisterPage(),
    );
  }
}

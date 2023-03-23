import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: Container(
        width: 130,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/image_splash.png'),
          ),
        ),
      )),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frontend/providers/product_provider.dart';
import 'package:frontend/theme.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    getInit();

    super.initState();
  }

  getInit() async {
    await Provider.of<ProdukProvider>(context, listen: false).getProducts();
    Navigator.pushNamed(context, '/sign-in');
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

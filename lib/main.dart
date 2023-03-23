import 'package:flutter/material.dart';
import 'package:frontend/pages/Authentication/sign_in.dart';
import 'package:frontend/pages/Authentication/sign_up.dart';
import 'package:frontend/pages/home/detail_chat_page.dart';
import 'package:frontend/pages/home/main_page.dart';
import 'package:frontend/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
      },
    );
  }
}

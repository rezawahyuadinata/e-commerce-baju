import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/Authentication/sign_in.dart';
import 'package:frontend/pages/Authentication/sign_up.dart';
import 'package:frontend/pages/home/Widget/aturan_widget.dart';
import 'package:frontend/pages/home/Widget/edit_profile_widget.dart';
import 'package:frontend/pages/home/Widget/help_widget.dart';
import 'package:frontend/pages/home/Widget/hukum_widget.dart';
import 'package:frontend/pages/home/Widget/pesanan_widget.dart';
import 'package:frontend/pages/home/cart_page.dart';
// import 'package:frontend/pages/home/checkout_page.dart';
import 'package:frontend/pages/home/checkout_success_page.dart';
import 'package:frontend/pages/home/detail_chat_page.dart';
import 'package:frontend/pages/home/main_page.dart';
// import 'package:frontend/pages/home/produk_page.dart';
import 'package:frontend/pages/splash_page.dart';
import 'package:frontend/providers/auth_provider.dart';
import 'package:frontend/providers/cart_provider.dart';
import 'package:frontend/providers/product_provider.dart';
import 'package:frontend/providers/transaction_provider.dart';
import 'package:frontend/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';

// import 'package:google_fonts/google_fonts.dart';
bool shouldUseFirestoreEmulator = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (shouldUseFirestoreEmulator) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProdukProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransaksiProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => MyHomePage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/profile': (context) => EditProfilePage(),
          '/order': (context) => OrderProfilePage(),
          '/help': (context) => HelpProfilePage(),
          '/privacy': (context) => PrivacyProfilePage(),
          '/term': (context) => TermProfilePage(),
          '/cart': (context) => CartPage(),
          // '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}

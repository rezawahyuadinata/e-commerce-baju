import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar header() => AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: backgroundColor1,
          title: Text('Your Cart'),
        );

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/icon_empty_cart.png', width: 80),
            SizedBox(
              height: 20,
            ),
            Text('Aduh beliau ini masih kosong keranjangnya')
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: emptyCart(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:frontend/pages/home/Widget/cart_card_widget.dart';
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'Aduh beliau ini masih kosong keranjangnya',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'carilah beberapa barang :)',
              style: secondaryTextStyle,
            ),
            Container(
              width: 154,
              height: 44,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          CartCardWidget(),
        ],
      );
    }

    Widget customNavbarButton() {
      return SizedBox(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub total',
                    style: primaryTextStyle,
                  ),
                  Text(
                    '\$79.68',
                    style: priceTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 0.3,
              color: subtitleColor,
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Continue to checkout',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: primaryTextColor,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      // body: emptyCart(),
      body: content(),
      bottomNavigationBar: customNavbarButton(),
    );
  }
}

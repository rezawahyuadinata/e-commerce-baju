import 'package:flutter/material.dart';
import 'package:frontend/models/cart_model.dart';
import 'package:frontend/pages/home/Widget/cart_card_widget.dart';
import 'package:frontend/pages/home/Widget/checkout_card_widget.dart';
import 'package:frontend/providers/auth_provider.dart';
import 'package:frontend/providers/cart_provider.dart';
import 'package:frontend/providers/transaction_provider.dart';

import 'package:frontend/theme.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({super.key, required this.cart});
  final KeranjangModel cart;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    TransaksiProvider transaksiProvider =
        Provider.of<TransaksiProvider>(context);
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleCheckout() async {
      if (await transaksiProvider.checkout(
        authProvider.user.token,
        cartProvider.carts,
        cartProvider.totalPrice(),
      )) {
        cartProvider.carts = [];
        Navigator.pushNamedAndRemoveUntil(
            context, 'checkout-success', (route) => false);
      }
    }

    AppBar header() => AppBar(
          centerTitle: true,
          backgroundColor: backgroundColor1,
          elevation: 0,
          automaticallyImplyLeading: true,
          title: Text('Checkout detail'),
        );

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Items',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Column(
                children: cartProvider.carts
                    .map(
                      (cart) => CheckoutCardWidget(
                        cart: cart,
                      ),
                    )
                    .toList(),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: defaultMargin),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address Detail',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/icons/icon_store_location.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/icons/icon_line.png',
                              height: 40,
                            ),
                            Image.asset(
                              'assets/icons/icon_your_address.png',
                              width: 40,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Store Location',
                              style: secondaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              'Adidas Core',
                              style: primaryTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            SizedBox(
                              height: defaultMargin,
                            ),
                            Text(
                              'Your Address',
                              style: secondaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              'Jakarta',
                              style: primaryTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: defaultMargin),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: backgroundColor4,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    PaymentSummaryDetail(
                      detail: 'Product Quantity',
                      keterangan: '${cartProvider.totalItems(cart.id)} Items',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    PaymentSummaryDetail(
                      detail: 'Product Price',
                      keterangan: '\$ ${cartProvider.totalPrice()}',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    PaymentSummaryDetail(
                      detail: 'Shipping',
                      keterangan: 'Free',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Divider(
                      thickness: 3,
                      color: Color(0xff2E3141),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: priceTextStyle.copyWith(fontWeight: semiBold),
                        ),
                        Text(
                          '\$ ${cartProvider.totalPrice() + 10}',
                          style: priceTextStyle.copyWith(fontWeight: semiBold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Divider(
                thickness: 1,
                color: Color(0xff2E3141),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  vertical: defaultMargin,
                ),
                child: TextButton(
                  onPressed: handleCheckout,
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Checkout Now',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}

class PaymentSummaryDetail extends StatelessWidget {
  final String detail;
  final String keterangan;
  PaymentSummaryDetail({this.detail = '', this.keterangan = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          detail,
          style: secondaryTextStyle.copyWith(fontSize: 12),
        ),
        Text(
          keterangan,
          style: primaryTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}

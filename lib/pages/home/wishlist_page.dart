import 'package:flutter/material.dart';
import 'package:frontend/pages/home/Widget/wishlist_item_widget.dart';
import 'package:frontend/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Favorite Shoes'),
        // elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/image_wishlist.png',
                width: 70,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'You don\'t have a shoes :(',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Let\'s find some shoes for you.',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 10,
                      ),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              WishlistItemWidget(),
              WishlistItemWidget(),
              WishlistItemWidget(),
              WishlistItemWidget(),

            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
        // emptyWishlist(),
      ],
    );
  }
}
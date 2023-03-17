import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class WishlistItemWidget extends StatelessWidget {
  const WishlistItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        bottom: 14,
        top: 10,
        left: 12,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/image_shoes.png',
            width: 60,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alter Ego V2 Shoes',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                '\$ 56.78',
                style: priceTextStyle,
              )
            ],
          ),
        ),
        Image.asset(
          'assets/icons/button_wishlist_blue.png',
          width: 34,
        )
      ]),
    );
  }
}

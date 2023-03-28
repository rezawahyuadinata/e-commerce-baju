import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class CheckoutCardWidget extends StatelessWidget {
  const CheckoutCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/image_shoes.png'),
              ),
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
                  'Alter Ego V2',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, overflow: TextOverflow.ellipsis),
                ),
                Text(
                  '\$130.12',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '2 Items',
            style: secondaryTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}

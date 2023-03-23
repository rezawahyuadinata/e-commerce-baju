import 'package:flutter/material.dart';

import '../../../theme.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/image_shoes.png',
            width: 215,
            height: 158,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Casual',
                  style: secondaryTextStyle,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Alter Ego Vision V2',
                  style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$ 60,00',
                  style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListProductWidget extends StatelessWidget {
  const ListProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/image_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
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
                  'Casual',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Alter Ego Version V2',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$ 60,00',
                  style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

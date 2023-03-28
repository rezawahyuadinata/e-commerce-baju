import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class CartCardWidget extends StatelessWidget {
  const CartCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor1,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
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
                      style: primaryTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    Text(
                      '\$59.63',
                      style: priceTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/button_add.png',
                    width: 16,
                  ),
                  Text(
                    '1',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                  Image.asset(
                    'assets/icons/button_min.png',
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/icon_remove.png',
                width: 10,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Remove',
                style: alertTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}

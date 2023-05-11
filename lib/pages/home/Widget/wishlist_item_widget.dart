import 'package:flutter/material.dart';
import 'package:frontend/models/product_model.dart';
import 'package:frontend/theme.dart';
import 'package:provider/provider.dart';

import '../../../providers/wishlist_provider.dart';

class WishlistItemWidget extends StatelessWidget {
  const WishlistItemWidget({super.key, required this.product});
  final ProdukModel product;
  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

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
          child: Image.network(
            product.galleries![0].url!,
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
                product.name!,
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                '\$ ${product.price}',
                style: priceTextStyle,
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            wishlistProvider.setProduct(product);
          },
          child: Image.asset(
            'assets/icons/button_wishlist_blue.png',
            width: 34,
          ),
        )
      ]),
    );
  }
}

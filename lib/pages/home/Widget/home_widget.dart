import 'package:flutter/material.dart';
import 'package:frontend/pages/home/produk_page.dart';

import '../../../models/product_model.dart';
import '../../../theme.dart';

class ProductCardWidget extends StatelessWidget {
  ProductCardWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProdukModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductPage(product: product)));
      },
      child: Container(
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
            Image.network(
              product.galleries![0].url!,
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
                    product.category!.name!,
                    style: secondaryTextStyle,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    product.name!,
                    style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$${product.price}',
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
      ),
    );
  }
}

class ListProductWidget extends StatelessWidget {
  const ListProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProdukModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductPage(product: product)));
      },
      child: Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product.galleries![0].url!,
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
                    product.category!.name!,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    product.name!,
                    style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$${product.price}',
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
      ),
    );
  }
}

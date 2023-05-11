import 'package:flutter/material.dart';
import 'package:frontend/models/user_model.dart';
import 'package:frontend/providers/auth_provider.dart';
import 'package:frontend/providers/product_provider.dart';
import 'package:frontend/theme.dart';
import 'package:provider/provider.dart';

import 'Widget/home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProdukProvider productProvider = Provider.of<ProdukProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hallo ${user.name}',
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    '@${user.username}',
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(user.profilePhotoUrl!),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listCategory() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Cloths',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Sports',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Uniform',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Casual',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Swimsuit',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget listGambarPopuler() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, right: defaultMargin, left: defaultMargin),
            child: Text(
              'Popular Products',
              style: primaryTextStyle.copyWith(
                fontSize: 22,
                fontWeight: semiBold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Row(
                      children: productProvider.products
                          .map(
                            (product) => ProductCardWidget(product: product),
                          )
                          .toList()),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget listProduct() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'New Arrivals',
              style: primaryTextStyle.copyWith(
                fontSize: 22,
                fontWeight: semiBold,
              ),
            ),
            Column(
              children: productProvider.products
                  .map((product) => ProductCardWidget(product: product))
                  .toList(),
            )
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: <Widget>[
            header(),
            listCategory(),
            listGambarPopuler(),
            listProduct(),
          ],
        ),
      ),
    );
  }
}

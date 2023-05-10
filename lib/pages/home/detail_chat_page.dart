import 'package:flutter/material.dart';
import 'package:frontend/models/product_model.dart';
import 'package:frontend/theme.dart';

import 'Widget/chat_bubble_widget.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key, required this.product});

  final ProdukModel product;

  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Container(
            padding: EdgeInsets.only(top: 2),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/image_shop_logo_online.png',
                  width: 50,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Shoes Store',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'online',
                      style: secondaryTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget listChat() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: backgroundColor5,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: primaryColor,
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/image_shoes.png',
                width: 54,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alter Ego Shoes v2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$57.15',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/icons/button_close.png',
              width: 22,
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listChat(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                        color: backgroundColor4,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type Message...',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/icons/button_send.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubbleWidget(
            isSender: true,
            text: 'Help me, somebody will read some NTR Manga',
            hasProduct: true,
          ),
          ChatBubbleWidget(
            isSender: true,
            text: 'the Keyword is ...',
            hasProduct: false,
          ),
          ChatBubbleWidget(
            isSender: true,
            text: 'the Keyword is ...',
            hasProduct: false,
          ),
          ChatBubbleWidget(
            isSender: true,
            text: 'Loli',
            hasProduct: false,
          ),
          ChatBubbleWidget(
            isSender: false,
            text: 'LOLI!!!!!',
            hasProduct: false,
          ),
          ChatBubbleWidget(
            isSender: false,
            hasProduct: false,
            text: 'Okay sir, Your report will be priority',
          ),
          ChatBubbleWidget(
            isSender: false,
            text: 'Thanks for your information',
            hasProduct: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
  }
}

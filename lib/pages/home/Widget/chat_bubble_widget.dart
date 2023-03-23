import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubbleWidget extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;
  ChatBubbleWidget(
      {this.isSender = false, this.text = '', this.hasProduct = false});

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 230,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 12 : 0),
            topRight: Radius.circular(isSender ? 0 : 12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: isSender ? backgroundColor5 : backgroundColor4,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/image_shoes.png',
                    width: 70,
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
                        style: primaryTextStyle,
                      ),
                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: primaryColor),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Add To Cart',
                      style: purpleTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      side: BorderSide(color: primaryColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                      color: backgroundColor5,
                      fontWeight: medium,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: isSender ? backgroundColor5 : backgroundColor4,
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

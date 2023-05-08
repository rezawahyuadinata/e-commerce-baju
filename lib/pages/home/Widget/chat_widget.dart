import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/image_shop_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Cloth Store',
                        style: primaryTextStyle,
                      ),
                      Text(
                        'good night girl sheeeeeesssssssssss',
                        style: primaryTextStyle.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    'Now',
                    style: primaryTextStyle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(thickness: 1, color: Color(0xff2b2939))
          ],
        ),
      ),
    );
  }
}

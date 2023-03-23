import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryTextColor,
            )
          ],
        ),
      );
    }

    Widget header() {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor1,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/image_profile.png',
                  width: 64,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Reza',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@zynchrome',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/icons/button_exit.png',
                  width: 20,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          decoration: BoxDecoration(
            color: backgroundColor3,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              menuItem('Edit Profile'),
              menuItem('Edit Profile'),
              menuItem('Edit Profile'),
            ],
          ),
        ),
      );
    }

    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header(),
        content(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style:
                  primaryTextStyle.copyWith(fontSize: 24, fontWeight: medium),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Fill the registration form on below',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget fullName() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Full Name',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/icon_name.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Full Name',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget userName() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'User Name',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/icon_username.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Username',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget emailAddress() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Email Address',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/icon_email.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Password',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/icon_password.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSignUp() {
      return Container(
        height: 50,
        margin: EdgeInsets.only(top: 35),
        child: ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Center(
            child: Text('Sign Up'),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Sign In',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      );
    }

    Column columnWidgets(
        Widget header(),
        Widget fullName(),
        Widget userName(),
        Widget emailAddress(),
        Widget password(),
        Widget buttonSignUp(),
        Widget footer()) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          header(),
          Column(
            children: <Widget>[
              fullName(),
              userName(),
              emailAddress(),
              password(),
              buttonSignUp(),
            ],
          ),
          Spacer(),
          footer(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: columnWidgets(header, fullName, userName, emailAddress,
              password, buttonSignUp, footer),
        ),
      ),
    );
  }
}

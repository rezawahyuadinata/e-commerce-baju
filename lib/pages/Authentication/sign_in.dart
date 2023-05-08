import 'package:flutter/material.dart';
import 'package:frontend/pages/home/Widget/loading_button.dart';
import 'package:frontend/theme.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: '');

  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignIn() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal Login',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
      setState(() {
        isLoading = false;
      });
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style:
                  primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Sign in to continue',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Email Address',
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/icon_email.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      controller: emailController,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Email Address',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/icon_password.png',
                  width: 17,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextFormField(
                    style: primaryTextStyle,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Password Here',
                        hintStyle: subtitleTextStyle),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      );
    }

    Widget buttonSignIn() {
      return Container(
        height: 50,
        // margin: EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(
          onPressed: handleSignIn,
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Center(
            child: Text('Sign in'),
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
              'Don\'t have an account ?',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      );
    }

    Column columnWidget(
      Widget header(),
      Widget inputEmail(),
      Widget inputPassword(),
      Widget buttonSignIn(),
      Widget footer(),
    ) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          header(),
          SizedBox(
            height: 70,
          ),
          inputEmail(),
          inputPassword(),
          isLoading ? LoadingButton() : buttonSignIn(),
          Spacer(),
          footer(),
          // footer(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: columnWidget(
              header, inputEmail, inputPassword, buttonSignIn, footer),
        ),
      ),
    );
  }
}

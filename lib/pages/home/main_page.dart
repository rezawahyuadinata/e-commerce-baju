import 'package:flutter/material.dart';
import 'package:frontend/pages/Authentication/sign_in.dart';
import 'package:frontend/pages/home/chat_page.dart';
import 'package:frontend/pages/home/home_page.dart';
import 'package:frontend/pages/home/profile_page.dart';
import 'package:frontend/pages/home/wishlist_page.dart';
import 'package:frontend/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    Widget buttonBawah() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icons/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customButtonNavbar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                print(value);
                setState(
                  () {
                    currentindex = value;
                  },
                );
              },
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icons/icon_home.png',
                      width: 21,
                      color:
                          currentindex == 0 ? primaryColor : Colors.grey[800],
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icons/icon_chat.png',
                      width: 21,
                      color:
                          currentindex == 1 ? primaryColor : Colors.grey[800],
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icons/icon_wishlist.png',
                      width: 21,
                      color:
                          currentindex == 2 ? primaryColor : Colors.grey[800],
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icons/icon_profile.png',
                      width: 21,
                      color:
                          currentindex == 3 ? primaryColor : Colors.grey[800],
                    ),
                  ),
                ),
              ]),
        ),
      );
    }

    Widget bodyHalaman() {
      switch (currentindex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return SignInPage();
      }
    }

    return Scaffold(
      backgroundColor: currentindex == 0 ? backgroundColor1 : backgroundColor3,
      body: bodyHalaman(),
      floatingActionButton: buttonBawah(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNavbar(),
    );
  }
}

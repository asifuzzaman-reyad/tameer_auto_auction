import 'package:flutter/material.dart';
import 'package:tameer_auto_auction/screen/account_screen.dart';
import 'package:tameer_auto_auction/screen/cart/cart_screen.dart';
import 'package:tameer_auto_auction/screen/home/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = 'dashboard_screen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  List _screen = [HomeScreen(), CartScreen(), AccountScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.deepOrange,
      ),
      body: _screen[_currentIndex],
    );
  }
}

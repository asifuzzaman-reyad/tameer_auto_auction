import 'package:flutter/material.dart';
import 'package:tameer_auto_auction/screen/account_screen.dart';
import 'package:tameer_auto_auction/screen/cart/cart_screen.dart';
import 'package:tameer_auto_auction/screen/dashboard/dashboard_screen.dart';
import 'package:tameer_auto_auction/screen/home/bid_screen.dart';
import 'package:tameer_auto_auction/screen/home/home_screen.dart';
import 'package:tameer_auto_auction/screen/home/product_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      initialRoute: DashboardScreen.routeName,
      routes: {
        // name : => value;
        DashboardScreen.routeName: (context) => DashboardScreen(),

        //
        HomeScreen.routeName: (context) => HomeScreen(),
        ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
        BidScreen.routeName: (context) => BidScreen(),

        CartScreen.routeName: (context) => CartScreen(),
        AccountScreen.routeName: (context) => AccountScreen(),
      },
    );
  }
}

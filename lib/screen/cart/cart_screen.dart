import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const routeName = 'cart_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Cart'),
      ),
      body: Center(child: Text('update on progress')),
    );
  }
}

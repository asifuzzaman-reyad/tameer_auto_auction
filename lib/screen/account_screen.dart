import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = 'account_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Account'),
      ),
      body: Center(child: Text('update on progress')),
    );
  }
}

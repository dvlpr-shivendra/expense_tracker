import 'package:expense_tracker/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AuthService _auth = AuthService();
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('Expense Tracker'),
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Logout')
          )
        ],
      ),

    );
  }
}

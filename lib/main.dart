import 'package:expense_tracker/models/user.dart';
import 'package:expense_tracker/screens/wrapper.dart';
import 'package:expense_tracker/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Expense Tracker',
        home: Wrapper(),
      ),
    );
  }
}


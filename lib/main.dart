import 'package:flutter/material.dart';

import 'package:flutter_assignment/routes.dart';

void main() => runApp(new LoginApp());

class LoginApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Login App Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
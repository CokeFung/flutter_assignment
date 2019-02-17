import 'package:flutter/material.dart';

import 'package:flutter_assignment/home.dart';
import 'package:flutter_assignment/login.dart';
import 'package:flutter_assignment/register.dart';
import 'package:flutter_assignment/main.dart';


final routes = {
  '/': (BuildContext context) => new LoginScreen(),
  '/login': (BuildContext context) => new LoginScreen(),
  '/register': (BuildContext context) => new RegisterScreen(),
  //'/home': (BuildContext context) => new HomeScreeen(),
  
};
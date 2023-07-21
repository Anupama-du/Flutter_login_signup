import 'package:flutter/material.dart';
import 'package:anupama/register.dart';
import 'package:anupama/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => Login(),
      'register': (context) => Register(),
    },
  ));
}
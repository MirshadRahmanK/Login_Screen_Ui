import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcartui/screens/listviesScreen.dart';
import 'package:shoppingcartui/screens/login_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


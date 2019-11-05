import 'package:flutter/material.dart';
import 'package:uberapp_clone/pages/login_page.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber App Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomAppBarColor: Colors.black,
      ),
      home: LoginPage(),
    );
  }
}

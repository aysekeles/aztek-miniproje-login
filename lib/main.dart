import 'package:flutter/material.dart';

import 'ekranlar/Giris/girisSayfasi.dart';
//import 'package:flutter_auth/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter aztek',
      theme: ThemeData(
        //primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: GirisSayfasi(),
    );
  }
}

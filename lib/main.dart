import 'package:flutter/material.dart';
import 'package:fresh_basket/Pages/home.dart';
import 'package:fresh_basket/Pages/productpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    ),
  );
}

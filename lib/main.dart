import 'package:flutter/material.dart';

import 'app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


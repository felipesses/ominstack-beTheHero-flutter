import 'package:flutter/material.dart';
import 'package:omnistack_bethehero_flutter/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be The Hero',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

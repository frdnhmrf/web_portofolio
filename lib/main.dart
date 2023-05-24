import 'package:flutter/material.dart';
import 'package:web_portofolio/screens/home_page.dart';
import 'package:web_portofolio/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor1,
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

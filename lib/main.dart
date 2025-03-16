import 'package:flutter/material.dart';
import 'package:news_app/Screens/home_screen.dart';

import 'Screens/NewsScreen.dart';
void main() {
  runApp(const newsApp());}
class newsApp extends StatelessWidget {
  const newsApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}

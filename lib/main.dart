
import 'package:flutter/material.dart';

import 'package:newsapp/views/home_screen.dart';


void main() {

  runApp(const HomeView());
 // NewsService(Dio()).getNews();
}






class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    //  home:NewsTile(),
    );
  }
}
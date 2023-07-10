import 'package:flutter/material.dart';
import './screens/BottomNav.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: const Color(0xFF3e63f4),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey
          )
    
      ),
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

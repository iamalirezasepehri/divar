import 'package:divar/constants/constants.dart';
import 'package:divar/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: customred,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            textStyle: TextStyle(
              fontFamily: "shabnam",
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      home: MainScreen(),
    );
  }
}

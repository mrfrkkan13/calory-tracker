<<<<<<< HEAD
import 'package:calori_app/views/meal_board_page/meal_board_page.dart';
import 'package:calori_app/views/register/register_page.dart';
=======
import 'package:calori_app/view/login/login_page.dart';
>>>>>>> dev
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
<<<<<<< HEAD
      home: MealBoardPage(),
=======
      home: const Scaffold(
        backgroundColor: Colors.black,
        body: LoginPage(),
      ),
>>>>>>> dev
    );
  }
}

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:calori_app/views/home_page.dart';
import 'package:calori_app/views/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Column(
          children: [
            SizedBox(width: 150, child: Image.asset("assets/images/logo.png")),
            Text(
              "Calori Count",
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
        duration: 3000,
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.black,
        nextScreen: LoginPage(),
      ),
    );
  }
}

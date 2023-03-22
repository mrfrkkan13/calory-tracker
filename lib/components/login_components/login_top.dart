import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginTop extends StatelessWidget {
  const LoginTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Lottie.asset(
            "assets/lotties/login_lottie.json"
        ),

      ),
    );
  }
}


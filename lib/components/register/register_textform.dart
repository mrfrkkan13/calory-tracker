import 'dart:io';

import 'package:calori_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

import '../../models/usermodel.dart';

class RegisterPageTextForm extends StatefulWidget {
  const RegisterPageTextForm({super.key});

  @override
  State<RegisterPageTextForm> createState() => _RegisterPageTextFormState();
}

class _RegisterPageTextFormState extends State<RegisterPageTextForm> {
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    passwordConfirmController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                /* Container(
                    width: 300,
                    height: 300,
                    child: LottieBuilder.asset(
                        "assets/lottie/registerAnimation.json")),*/
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _textfieldName(usernameController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _textfieldMail(emailController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _textfieldPassword(passwordController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _textfieldPassword(passwordConfirmController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _costumRegisterButton(() {
                    // UserModel newUser = UserModel(
                        // email: emailController.text,
                        // name: usernameController.text,
                       // password: passwordController.text
                        // );

                    Services service = Services();
                    service.postUser(emailController.text, passwordConfirmController.text);
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _costumRegisterButton(Function() onPressed) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textfield(TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 3, color: Colors.purple),
          )),
    );
  }

  Widget _textfieldName(TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: "Name",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.person),
          prefixIconColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 3, color: Colors.purple),
          )),
    );
  }

  Widget _textfieldMail(TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.email),
          prefixIconColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 3, color: Colors.purple),
          )),
    );
  }

  Widget _textfieldPassword(TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.lock),
          prefixIconColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 3, color: Colors.purple),
          )),
    );
  }
}
  // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(30),
        //   borderSide: BorderSide(width: 1, color: Colors.purple),
        // ),
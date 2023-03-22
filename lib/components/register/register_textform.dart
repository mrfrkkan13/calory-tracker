import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            _textfieldName(usernameController),
            _textfieldMail(emailController),
            _textfieldPassword(passwordController),
            _textfieldPassword(passwordConfirmController),
            _costumRegisterButton(() {}),
          ],
        ),
      ),
    );
  }

  Widget _costumRegisterButton(Function() onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
      ),
      onPressed: onPressed,
      child: Text(
        "Register",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _textfield(TextEditingController controller) {
    return TextField(
      controller: controller,
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
      decoration: InputDecoration(
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
      decoration: InputDecoration(
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
      decoration: InputDecoration(
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
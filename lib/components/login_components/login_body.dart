import 'package:calori_app/components/textfield_component.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {

  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50)
            )
        ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Login Account",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
            ),

            TextFieldComponent(textEditingController: _emailController, hintText: "E-Mail", ico: Icon(Icons.email_outlined)),
            TextFieldComponent(textEditingController: _emailController, hintText: "Password", ico: Icon(Icons.lock)),
          ],
        )


      )
    );
  }
}
